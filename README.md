# Agentic SDLC Lite

A small, project-agnostic workflow for developing software with Codex, Claude Code, or other AI coding assistants. **No Controller, admission registry, database, background service, or custom orchestration runtime.**

## What is included

- `AGENTS.md`: shared agent behavior and scope boundaries.
- `CLAUDE.md`: Claude Code entry point, referring to the shared rules.
- `PROJECT_MAP.md`: documentation and source layout.
- `docs/architecture/overview.md`: system and file-dependency diagrams.
- `docs/workflow/`: branch, review, and worktree procedures.
- `docs/templates/`: optional task, specification, planning, assurance, and closeout forms.
- `.githooks/`: pre-commit, commit-msg, and pre-push local safeguards.
- `.github/workflows/lite-checks.yml`: basic PR/commit checks.

## Quick start

1. Create a new project from this repository (ideally mark this repository as a GitHub template), or selectively copy the files into an existing Git project.
2. Edit `PROJECT_MAP.md` for the actual project, and record your product boundaries in `docs/changes/` when useful.
3. Install local hooks **in that project**, once:

   ```bash
   git config --local core.hooksPath .githooks
   ```

   Requires Git and Bash. Copy executable bits when installing from an archive. GitHub templates do not carry over repository settings and branch protections.
4. Work on a short-lived `feat/*`, `fix/*`, or `docs/*` branch from `main`.
5. Open a PR; merge to `main` only after checks and human approval.

See [Development workflow](docs/workflow/development.md) and [Architecture map](docs/architecture/overview.md).

## Two levels of ceremony

**Routine change:** scope → implement → test → review → PR.

**High-impact change:** intent → spec → plan → independent Critic → implementation → independent review/verification → PR.

Templates are optional for routine work; for consequential changes, preserve enough written evidence to explain decisions and confirm acceptance.

## Trust model

Git hooks and `AGENTS.md` are cooperative safeguards, **not** a security sandbox or authorization engine. Configure GitHub branch protection/rulesets, required CI, least-privilege credentials, and external approval for releases. Agents must not access production secrets or perform destructive actions without explicit authorization.

## Scope

Version: **Lite v0.1 — proposed foundation**. The initial set is submitted for review; it is not a certified security or production assurance framework.

Source inspiration: AzurSysTech Agentic SDLC and its Portable Project Kit. This Lite kit is independent and does not inherit their Controller authority.
