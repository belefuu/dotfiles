# chezmoi dotfiles

## Layout

`.chezmoiroot` points chezmoi at `home/`. Directory decides intent:

- `home/` is source state. Everything in it deploys to `~`.
- The repo root is repo tooling: `CLAUDE.md`, `.ai/`, `.mcp.json`, `.claude/`, scripts. chezmoi never sees it.

Put a new file by what it is for: a dotfile goes in `home/`, anything that manages this repo goes at the root. Keep `home/.chezmoiignore` for per-machine or per-OS target skips only; it matches target paths under `~`, so repo tooling never belongs in it.

## Editing dotfiles

Edit the source in `home/`, never the deployed file in `~`: a direct edit drifts and the next apply overwrites it.

After a change, run `chezmoi diff` and show the result. `chezmoi apply` writes into the live home directory, so run it only when the user asks.

## Agent notes

`.ai/` holds durable agent context for this repo and is tracked. See `.ai/README.md` for what belongs there.
