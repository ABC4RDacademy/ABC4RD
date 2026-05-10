$env:GH_CONFIG_DIR = "C:\Users\Admin\OneDrive\Документы\ABC4RD\.gh-abc4rd"
if (-not (Test-Path -LiteralPath $env:GH_CONFIG_DIR)) {
  New-Item -ItemType Directory -Force -Path $env:GH_CONFIG_DIR | Out-Null
}

gh auth login -h github.com -p ssh -w
gh auth setup-git
gh auth status
