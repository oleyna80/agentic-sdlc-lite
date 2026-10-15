# Agent Operating Contract — SDLC Lite

**One root contract.** Other documents, role briefs, templates, memory and README cannot grant additional authority or create a competing workflow. Agent instructions are process guidance, not an OS or remote permission system.

## Source precedence

1. Current explicit Owner instructions plus actual OS/platform permissions and applicable security controls.
2. This root `AGENTS.md` (shared agent behavior).
3. Approved task-specific requirements, Owner decisions and recorded design decisions in `docs/decisions/`.
4. Canonical domain procedures: `docs/workflow/development.md` (lifecycle and exact assurance); `docs/workflow/memory.md` (memory); `docs/workflow/initialization.md` (template first-use); `docs/workflow/workspaces.md` (Git and workspace); `docs/security/boundaries.md` (security details).
5. Subordinate role briefs in `.agents/roles/`, templates and review/verification reports (roles and evidence only).
6. `memory_bank/` (last integrated orientation), task-local handoffs and session logs (observations, never authority).

If conflicting instructions or stale facts are found, stop the affected decision and consult current Owner and verified repo/Git/PR facts. Never invent approvals.

## Mandatory session entry

1. Read `PROJECT_BRIEF.md` and `PROJECT_MAP.md`; inspect actual Git repository identity, branch, HEAD and status.
2. **Before trusting any inherited project memory:** if this repository was created from the Lite template and has not completed first-use initialization, follow `docs/workflow/initialization.md`. Do not start normal feature development.
3. Read `memory_bank/context.md` and `memory_bank/progress.md` (last integrated overview), then the *current task branch's* `docs/changes/<task>/handoff.md` or PR/issue. Check facts against live Git/PR state; another branch's unmerged memory is not necessarily available.
4. If a multi-stage project has a root `plan.md`, read its roadmap. For significant work read the frozen `docs/changes/<task>/work-block.md` (or the approved legacy task `plan.md`) and relevant spec/ADRs, plus only applicable procedures/roles. Do not load every archived report or template automatically.
5. Identify objective, acceptance criteria, allowed write paths, required tests and actual isolation/side-effect limits. Preserve all unrelated dirty/untracked files and worktrees.

## Core operating rules

- Keep `main` stable; implementation belongs on a task branch. Merge and deployment need separate explicit Owner authorization and platform permission.
- Follow **routine vs significant Work Block** classification, Owner approval and independent Critic/Reviewer/Verifier rules **only** as defined in `docs/workflow/development.md`. Routine can include tiny safe code fixes; significant changes can be Markdown-only.
- The optional project-level `plan.md` is a roadmap, not authority. Freeze each significant stage's Work Block before Critic and keep later verdicts/status in task-local handoffs and reports, not inside the frozen WB.
- One writer per overlapping write-set. Delegate through the harness's native subagents/tools using bounded missions and portable role briefs; logical role names do not install agents or guarantee independent isolation.
- Run relevant checks, inspect diffs and report true PASS/FAIL/NOT_RUN and exact SHAs. Do not claim that self-review is independent.
- Store decisions, progress, handoffs and meaningful verification evidence **in committed project/branch files** according to `docs/workflow/memory.md`; chat history is not persistent project state.
- Never bypass hooks, force-push, delete unrelated work, access production secrets, widen scope or perform unapproved consequential external operations.

## End-of-task handoff

Before any substantive handoff or PR, checkpoint task-specific state and relevant evidence as prescribed by the memory procedure. State task/branch, exact observed SHA, files changed, tests, review results, blockers, PR link and next action. After Owner disposition, reconcile integrated project memory via an authorized branch/PR, not direct writes to protected `main`.

**No Controller:** There is no admission service, SQLite registry, state machine, privilege gate or autonomous orchestration runtime. Do not add one as an incidental correction.
