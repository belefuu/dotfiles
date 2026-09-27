# .ai/

Working notes and durable context for AI agents collaborating on this repo.

This directory is for content the *project* wants the agent to know — glossaries, decision records, per-feature workplans, agent loop state — that doesn't belong in source code, isn't part of the application's public docs, and shouldn't be lost between sessions.

## What belongs here

- **Glossary** — canonical definitions for domain terms that have been negotiated. Avoids agents inventing parallel vocabulary across sessions.
- **Architecture decision records (ADRs)** — short dated records of decisions that are hard to reverse, surprising without context, and the result of a real trade-off.
- **Workplans** — per-feature planning docs (one subdirectory per feature) — the kind of thing you'd otherwise write in a scratch file and lose.
- **Agent loop state** — persistent state for long-running or repeated agent flows that need a place to remember themselves between invocations.

The shape is intentionally open. Subdirectories appear as needed; nothing is pre-stamped beyond this README.

## What doesn't belong here

- Implementation specifications (those go in code or in standard project docs).
- Generated artifacts, caches, or anything reproducible from source — except deliberately persisted session artifacts (e.g. `explainers/`), which are disposable-by-default and kept only while useful.
- User-level agent config (that lives in the user's harness directory, not in any repo).
- One-off ephemera that's about a single conversation rather than the project.

## Working with it

Agents that know this convention create the relevant subdirectories on first use. You usually do not need to scaffold anything by hand — just trust that `.ai/` is the right place when working notes or durable context come up.

Whether to commit this directory or keep it local is a per-repo decision.
