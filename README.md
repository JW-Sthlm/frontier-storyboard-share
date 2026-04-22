# frontier-storyboard-share

Temporary public preview of the **CAIP Frontier Consultancy** partner-workshop storyboard and presenter deck.

Published via GitHub Pages — reviewers get a stable link, push updates as they're made.

## Update workflow

```powershell
# from this repo
Copy-Item ..\frontier-consultancy\presentation\storyboard.html .\storyboard.html -Force
Copy-Item ..\frontier-consultancy\presentation\index.html       .\presenter.html   -Force
git add -A
git commit -m "update: <what changed>"
git push
```

Reviewers hard-refresh (Ctrl+F5). Pages typically updates within ~1 minute.

## Files

- `index.html` — landing page with links
- `storyboard.html` — reviewer doc (TL;DR + foldable sections + slide-by-slide script)
- `presenter.html` — the deck as it will be presented

Source of truth lives in `../frontier-consultancy/presentation/`. This repo is a published mirror only.
