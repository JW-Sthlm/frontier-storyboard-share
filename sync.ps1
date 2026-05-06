#Requires -Version 7.0
<#
.SYNOPSIS
  Sync the latest per-track storyboard and presenter files from frontier-consultancy.

.DESCRIPTION
  Copies published HTML from the private frontier-consultancy repo into this GitHub Pages repo.
  Prerequisite: frontier-consultancy is cloned next to this repo at ..\frontier-consultancy.
  Run from this folder with: pwsh ./sync.ps1

.NOTES
  Review changes locally, then commit and push when ready.
#>

$ErrorActionPreference = "Stop"

$repo = $PSScriptRoot

$map = @(
  @{
    Source = "..\frontier-consultancy\tracks\caip\presentation\storyboard.html"
    Destination = "caip\storyboard.html"
  }
  @{
    Source = "..\frontier-consultancy\tracks\caip\presentation\index.html"
    Destination = "caip\presenter.html"
  }
  <# Phase 5
  @{
    Source = "..\frontier-consultancy\tracks\aibs\presentation\storyboard.html"
    Destination = "aibs\storyboard.html"
  }
  @{
    Source = "..\frontier-consultancy\tracks\aibs\presentation\index.html"
    Destination = "aibs\presenter.html"
  }
  #>
)

Write-Host "Source : ..\frontier-consultancy\tracks" -ForegroundColor DarkGray
Write-Host "Target : $repo" -ForegroundColor DarkGray
Write-Host ""

foreach ($entry in $map) {
  $src = Join-Path $repo $entry.Source
  $dst = Join-Path $repo $entry.Destination
  $dstFolder = Split-Path $dst -Parent

  if (-not (Test-Path $src)) { throw "Missing source file: $src" }

  New-Item -ItemType Directory -Force -Path $dstFolder | Out-Null
  Copy-Item $src $dst -Force
  Write-Host "  ✓ $($entry.Source) -> $($entry.Destination)" -ForegroundColor Green
}

Write-Host "`nChanges:" -ForegroundColor Cyan
git -C $repo status --short
Write-Host "`nReview then commit and push when ready." -ForegroundColor Yellow
