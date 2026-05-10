$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$WorkspaceRoot = Split-Path (Split-Path $RepoRoot -Parent) -Parent
$env:GH_CONFIG_DIR = Join-Path $WorkspaceRoot ".gh-abc4rd"
if (-not (Test-Path -LiteralPath $env:GH_CONFIG_DIR)) {
  New-Item -ItemType Directory -Force -Path $env:GH_CONFIG_DIR | Out-Null
}

gh auth login -h github.com -p ssh -w
gh auth setup-git
gh auth status
