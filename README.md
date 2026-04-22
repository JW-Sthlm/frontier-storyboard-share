# frontier-storyboard-share

Temporary public preview of the **CAIP Frontier Consultancy** partner-workshop storyboard and presenter deck.

Published via GitHub Pages — reviewers get a stable link, push updates as they're made.

## Update workflow

```powershell
cd C:\Users\jwallquist\projects\frontier-storyboard-share
.\sync.ps1 "tightened partner-voice quotes"
```

`sync.ps1` copies the latest `storyboard.html` + `index.html` from `..\frontier-consultancy\presentation\`, commits, and pushes. Reviewers hard-refresh (Ctrl+F5) — Pages typically updates within ~1 minute.

## Files

- `index.html` — landing page with links
- `storyboard.html` — reviewer doc (TL;DR + foldable sections + slide-by-slide script)
- `presenter.html` — the deck as it will be presented

Source of truth lives in `../frontier-consultancy/presentation/`. This repo is a published mirror only.
