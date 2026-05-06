# frontier-storyboard-share

Internal landing page for Frontier Consultancy across partner tracks.

This repo is the public GitHub Pages mirror. The source of truth stays in the private `frontier-consultancy` repo. Use this page for Microsoft reviewer access and stable links only.

## URL

Live site: https://jw-sthlm.github.io/frontier-storyboard-share/

The site is marked `noindex,nofollow`. Distribute through internal channels only.

## Layout

- `index.html`: umbrella landing page with the pitch, track cards, and reviewer notes.
- `caip/`: live CAIP storyboard and presenter deck.
- `aibs/`: future AIBS track folder.
- `security/`: future Security track folder.
- `storyboard.html` and `presenter.html`: root redirect shims for older shared URLs.

## Sync workflow

`sync.ps1` copies generated HTML from the private repo into this mirror.

Source pattern:

```powershell
..\frontier-consultancy\tracks\<track>\presentation\
```

Run manually after generating the track assets:

```powershell
cd C:\Users\jwallquist\projects\frontier-storyboard-share
pwsh ./sync.ps1
```

Review the diff, then commit and push when ready. GitHub Pages usually updates shortly after push. Reviewers may need Ctrl+F5.

## Adding a new track

1. Copy the CAIP block in `sync.ps1` and update the source and destination paths.
2. Copy the CAIP card in `index.html` and update scope, owner, status, and links.
3. Run `pwsh ./sync.ps1`.
4. Review the generated files locally.
5. Commit and push to `origin/main`.

## Owner

Johan Wallquist, Partner Solution Architect, Microsoft.
