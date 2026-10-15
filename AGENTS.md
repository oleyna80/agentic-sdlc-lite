# Agent Operating Contract — SDLC Lite

Read this file before editing the project. This is a **process instruction**, not technical permission or a replacement for host access controls.

## Goal and precedence

Deliver the smallest verified change required by the user's task.

Follow: explicit Owner instructions and platform/security controls → this file → approved project specifications and decisions → task plan → role-specific guidance and templates. If instructions conflict, stop and ask the Owner for the missing decision. Do not invent permissions.

## Before work

- Read `PROJECT_MAP.md`; identify the relevant source modules and tests.
- Check repository URL, current branch, HEAD, `git status`, and existing user changes.
- Confirm task objective, allowed files, acceptance criteria, and side-effect boundary.
- Never modify `main` directly. Use a task branch and preferably an independent worktree for nontrivial work.
- Preserve all unrelated changes, untracked files, and existing worktrees.

## Choose the lightest adequate workflow

- **Routine:** a small bounded change. Brief scope; implement; run relevant tests; inspect diff; commit; PR.
- **Significant or high-risk:** architecture, security, credentials, migrations, data-loss risk, production or broad refactors. Create intent/spec/plan as necessary and request independent Critic **before coding**. Have an independent Reviewer and Verifier inspect the exact candidate where appropriate.
- If discovery changes assumptions or approved scope, stop implementation and revise the decision first.

## Implementation discipline

- One write-capable agent owns each overlapping file set at a time.
- Agents can edit/test/commit on the authorized task branch, subject to the Owner's constraints.
- Never silently modify secrets, credential stores, production infrastructure, IAM, billing, deployments, external services, or protected Git refs.
- Never use `reset --hard`, force-push, hook bypass, or destructive cleanup to make a task "work."
- Do not add unnecessary dependencies, frameworks, or workflow machinery.
- Run appropriate tests and state precisely what passed, failed, or was not run.

## Review and delivery

- Use task-specific evidence: changed paths, relevant test commands/results, new exact commit SHA.
- Reviewer identifies defects and risks; Verifier checks acceptance criteria. The implementing agent must not represent its own assessment as independent.
- Routine review can be lightweight; high-impact work needs stronger evidence.
- Push only the approved subject branch. Never merge into `main` or deploy without the Owner's explicit approval.
- CI passing is necessary where configured, but not a substitute for Owner approval.

## No controller in Lite

There is no trusted admission, lifecycle state machine, SQLite registry, or autonomous orchestration authority. File conventions are not permission grants. Local hooks are bypassable; GitHub protections and externally held credentials enforce consequential boundaries.

References: `docs/workflow/development.md`, `docs/workflow/agent-roles.md`, and `docs/security/boundaries.md`.
