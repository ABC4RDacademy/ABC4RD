param(
  [string]$EnvFile = ".env",
  [string]$HostUrl,
  [string]$Token,
  [string]$Namespace,
  [string]$ProjectPath,
  [string]$ProjectName,
  [switch]$CreateProject,
  [switch]$ConfigureProject,
  [switch]$AddRemote,
  [switch]$Push,
  [switch]$CreateStarterIssues
)

$ErrorActionPreference = "Stop"

if ($EnvFile -and (Test-Path -LiteralPath $EnvFile)) {
  Get-Content -LiteralPath $EnvFile | ForEach-Object {
    if ($_ -match '^\s*#') { return }
    if ($_ -match '^\s*$') { return }
    if ($_ -match '^\s*([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.*)\s*$') {
      $name = $Matches[1]
      $value = $Matches[2].Trim()
      if (($value.StartsWith('"') -and $value.EndsWith('"')) -or ($value.StartsWith("'") -and $value.EndsWith("'"))) {
        $value = $value.Substring(1, $value.Length - 2)
      }
      if (-not [Environment]::GetEnvironmentVariable($name, "Process")) {
        [Environment]::SetEnvironmentVariable($name, $value, "Process")
      }
    }
  }
}

if (-not $HostUrl) { $HostUrl = $env:GITLAB_HOST }
if (-not $Token) { $Token = $env:GITLAB_TOKEN }
if (-not $Namespace) { $Namespace = $env:GITLAB_NAMESPACE }
if (-not $ProjectPath) { $ProjectPath = $(if ($env:GITLAB_PROJECT_PATH) { $env:GITLAB_PROJECT_PATH } else { "ABC4RD" }) }
if (-not $ProjectName) { $ProjectName = $(if ($env:GITLAB_PROJECT_NAME) { $env:GITLAB_PROJECT_NAME } else { "ABC4RD" }) }

if (-not $HostUrl) { $HostUrl = "https://gitlab.com" }
$HostUrl = $HostUrl.TrimEnd("/")
$ApiUrl = "$HostUrl/api/v4"

if (-not $Token) {
  throw "Set GITLAB_TOKEN in the environment. Do not commit tokens or put them in remote URLs."
}

function Invoke-GitLab {
  param(
    [string]$Method,
    [string]$Path,
    [object]$Body = $null
  )

  $headers = @{ "PRIVATE-TOKEN" = $Token }
  $uri = "$ApiUrl$Path"

  if ($null -eq $Body) {
    return Invoke-RestMethod -Method $Method -Uri $uri -Headers $headers
  }

  return Invoke-RestMethod -Method $Method -Uri $uri -Headers $headers -ContentType "application/json" -Body ($Body | ConvertTo-Json -Depth 10)
}

function Get-Project {
  param([string]$FullPath)
  $encoded = [uri]::EscapeDataString($FullPath)
  try {
    return Invoke-GitLab -Method "GET" -Path "/projects/$encoded"
  } catch {
    return $null
  }
}

function Ensure-Label {
  param(
    [int]$ProjectId,
    [string]$Name,
    [string]$Color,
    [string]$Description
  )

  try {
    Invoke-GitLab -Method "POST" -Path "/projects/$ProjectId/labels" -Body @{
      name = $Name
      color = $Color
      description = $Description
    } | Out-Null
  } catch {
    Invoke-GitLab -Method "PUT" -Path "/projects/$ProjectId/labels/$([uri]::EscapeDataString($Name))" -Body @{
      new_name = $Name
      color = $Color
      description = $Description
    } | Out-Null
  }
}

function Ensure-Milestone {
  param(
    [int]$ProjectId,
    [string]$Title,
    [string]$Description
  )

  $milestones = Invoke-GitLab -Method "GET" -Path "/projects/$ProjectId/milestones?search=$([uri]::EscapeDataString($Title))"
  if (-not ($milestones | Where-Object { $_.title -eq $Title })) {
    Invoke-GitLab -Method "POST" -Path "/projects/$ProjectId/milestones" -Body @{
      title = $Title
      description = $Description
    } | Out-Null
  }
}

$me = Invoke-GitLab -Method "GET" -Path "/user"
Write-Host "Authenticated as GitLab user: $($me.username)"

if (-not $Namespace) {
  $Namespace = $me.username
  Write-Host "GITLAB_NAMESPACE was not set. Using user namespace: $Namespace"
}

$fullPath = "$Namespace/$ProjectPath"
$project = Get-Project -FullPath $fullPath

if (-not $project -and $CreateProject) {
  $body = @{
    name = $ProjectName
    path = $ProjectPath
    visibility = "public"
    description = "ABC4RD Academy public hub for blockchain and AI education."
    issues_access_level = "enabled"
    merge_requests_access_level = "enabled"
    wiki_access_level = "disabled"
    snippets_access_level = "disabled"
    initialize_with_readme = $false
  }

  if ($Namespace -ne $me.username) {
    $namespaces = Invoke-GitLab -Method "GET" -Path "/namespaces?search=$([uri]::EscapeDataString($Namespace))"
    $target = $namespaces | Where-Object { $_.full_path -eq $Namespace } | Select-Object -First 1
    if (-not $target) { throw "Namespace '$Namespace' was not found or is not accessible." }
    $body.namespace_id = $target.id
  }

  $project = Invoke-GitLab -Method "POST" -Path "/projects" -Body $body
}

if (-not $project) {
  throw "Project '$fullPath' does not exist or is not accessible. Re-run with -CreateProject or set GITLAB_NAMESPACE/GITLAB_PROJECT_PATH."
}

Write-Host "GitLab project: $($project.web_url)"

if ($ConfigureProject) {
  $labels = @(
    @{ name = "area:ai-education"; color = "#1d76db"; description = "AI course, labs, literacy, and learning pathway work." },
    @{ name = "area:bitcoin-education"; color = "#f9d0c4"; description = "Bitcoin, Lightning, Nostr, custody, mining, and treasury education." },
    @{ name = "area:community"; color = "#0e8a16"; description = "Community operations, governance, onboarding, and public support." },
    @{ name = "area:events"; color = "#fbca04"; description = "Conferences, workshops, meetups, and event activation." },
    @{ name = "area:partners"; color = "#5319e7"; description = "Partner mapping, outreach drafts, and collaboration opportunities." },
    @{ name = "area:research"; color = "#0052cc"; description = "Evidence, citation review, source maps, and media-kit materials." },
    @{ name = "area:site"; color = "#c2e0c6"; description = "Website, docs navigation, OpenGraph, and publishing integration." },
    @{ name = "good first issue"; color = "#7057ff"; description = "Small, clear task suitable for a first public contribution." },
    @{ name = "help wanted"; color = "#008672"; description = "Task where public contributor support is welcome." },
    @{ name = "needs:approval"; color = "#b60205"; description = "Requires human approval before external publication or outreach." },
    @{ name = "needs:evidence"; color = "#d93f0b"; description = "Needs public source review before claims can be treated as factual." },
    @{ name = "priority:high"; color = "#b60205"; description = "Important near-term work for public credibility or operations." },
    @{ name = "status:draft"; color = "#ededed"; description = "Draft work that is not ready for public publication." },
    @{ name = "status:review"; color = "#fbca04"; description = "Ready for source, editorial, or maintainer review." }
  )

  foreach ($label in $labels) {
    Ensure-Label -ProjectId $project.id -Name $label.name -Color $label.color -Description $label.description
  }

  Ensure-Milestone -ProjectId $project.id -Title "Activation Sprint 1" -Description "First GitLab mirror, governance baseline, starter issues, and approved outreach drafts."

  try {
    Invoke-GitLab -Method "POST" -Path "/projects/$($project.id)/protected_branches" -Body @{
      name = "main"
      push_access_level = 40
      merge_access_level = 40
      allow_force_push = $false
    } | Out-Null
  } catch {
    Write-Host "Protected branch 'main' already exists or could not be changed with this token."
  }
}

if ($CreateStarterIssues) {
  $issues = @(
    @{
      title = "Publish ABC4RD as a controlled GitLab mirror"
      labels = "area:site,priority:high,status:review"
      description = "Output:`n- GitLab project URL recorded in docs/gitlab-activation.md.`n- gitlab remote added without credentials in the URL.`n- protected main branch.`n- first successful validation pipeline."
    },
    @{
      title = "Create the first GitLab issue board"
      labels = "area:community,priority:high,status:draft"
      description = "Output:`n- Board columns for draft, review, approved, published, and archived.`n- Labels aligned with .github/labels.yml.`n- One issue per active workstream."
    },
    @{
      title = "Open the first event watch issue"
      labels = "area:events,needs:evidence,needs:approval"
      description = "Output:`n- Official event source link.`n- ABC4RD education angle.`n- Linked course, workshop, or article draft.`n- Clear decision on watch, draft, engage, or publish level."
    },
    @{
      title = "Create LLMAIX2001a learner pathway issue"
      labels = "area:ai-education,good first issue,help wanted"
      description = "Output:`n- Beginner pathway outline.`n- First three module issues.`n- Link to the LLMAIX2001a roadmap."
    },
    @{
      title = "Draft the first partner outreach message"
      labels = "area:partners,needs:approval,status:draft"
      description = "Output:`n- Target and public reason for outreach.`n- Draft-only message.`n- Approval checklist.`n- Follow-up owner."
    }
  )

  foreach ($issue in $issues) {
    $existing = Invoke-GitLab -Method "GET" -Path "/projects/$($project.id)/issues?search=$([uri]::EscapeDataString($issue.title))"
    if (-not ($existing | Where-Object { $_.title -eq $issue.title })) {
      Invoke-GitLab -Method "POST" -Path "/projects/$($project.id)/issues" -Body $issue | Out-Null
    }
  }
}

if ($AddRemote) {
  $remoteUrl = $project.http_url_to_repo
  $existingRemote = git remote
  if ($existingRemote -contains "gitlab") {
    git remote set-url gitlab $remoteUrl
  } else {
    git remote add gitlab $remoteUrl
  }
  Write-Host "Configured gitlab remote: $remoteUrl"
}

if ($Push) {
  git push gitlab main --tags
}

Write-Host "Done."
