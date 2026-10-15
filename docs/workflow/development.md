# Development Workflow — SDLC Lite

## Branches

- `main`: stable integration branch; protected on GitHub; no direct agent edits.
- `feat/<short-topic>`, `fix/<short-topic>`, `docs/<short-topic>`: one bounded task per branch, based on the approved `main` commit.
- A permanent `develop` branch is **not required**. Add short-lived integration/release branches only when justified by actual parallel release work.

## Task intake

1. Owner states the objective, boundaries, and acceptance criteria.
2. Agent inspects Git status, remote, and relevant context.
3. Choose routine vs significant workflow using `AGENTS.md`.
4. For a significant change, copy the needed templates into `docs/changes/<task>/`; obtain Critic review before source modification.

## Execution

1. Create a task branch, optionally using `git worktree add` from a clean, approved base.
2. Implement the smallest viable change in the allowed files.
3. Run focused tests, lint, typecheck, or build as relevant to the target project.
4. Inspect the complete diff and stage only intended paths.
5. Commit locally using a clear message: `fix: correct validation error`.
6. Reviewer and Verifier examine the exact candidate for risk-appropriate tasks. Rework produces a new commit and re-check.

## GitHub integration

1. Push the task branch, not `main`.
2. Open a PR with scope, testing, known risks, and commit identification.
3. Wait for required CI and independent review when applicable.
4. Owner authorizes merge. This is separate from authorization to deploy.
5. After merge, record the disposition and clean up worktrees safely.

## Critical boundaries

Local commands, a checked-out branch, documentation, hooks, or a passing CI workflow never by themselves grant remote or production permissions. No automatic merge or deployment. Protect credentials externally; do not let agents inspect production secrets.

## Definition of done

The requested behavior is implemented, acceptance criteria are evidenced, code and docs are consistent, no material blocking issues remain, PR and CI are reviewed, and the Owner has decided on integration.
