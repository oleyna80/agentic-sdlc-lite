# Project Memory Protocol — Canonical Domain Procedure

The committed repository, approved task documents, Git and GitHub evidence preserve engineering work across agent sessions. **Chat history, agent local caches and ignored workspaces are not project memory.** Memory files are informative, not authority or proof of current Git state.

## One home for each kind of knowledge

| Information | Canonical home | Other references |
| --- | --- | --- |
| Product intent, audience, boundaries | `PROJECT_BRIEF.md` | Other files link to it |
| Agent behavior and source precedence | `AGENTS.md` | Adapters never redefine it |
| Development, Git and security procedure | `docs/workflow/`, `docs/security/` | Templates/roles link; no parallel protocols |
| Actual behavior and tests | Current source/test tree | Evidence is verified against Git |
| Task scope, approved design/plan, work in progress | `docs/changes/<task>/` | PR and current branch SHA |
| Durable design rationale | `docs/decisions/<id>.md` | `memory_bank/decisions.md` contains links/status only |
| **Per-task live handoff** (especially parallel branches) | `docs/changes/<task>/handoff.md` on the task branch | Never overwrite another task's handoff |
| **Integrated project overview** | `memory_bank/context.md` | Summary of last reconciled common baseline, not the only active task |
| Recent integrated milestones | `memory_bank/progress.md` | Link task reports/commits; no copied reports |
| Material integrated coordination events | `memory_bank/orchestrator-log.md` | Short audit index, not raw agent logs |
| Final merge/CI state | Live Git/GitHub refs/checks | Memory cites dated exact evidence, never overrides it |

The four root `memory_bank/*.md` files are Git-tracked. Do not ignore `memory_bank/`. Do not commit secrets, private client data, tool dumps, raw transcripts, internal scratchpads or local credentials. Other branches do not automatically receive memory updates until integration.

## 0. First use after creating a new repository

**Before trusting inherited memory or starting feature work**, confirm the actual Git repository identity against `PROJECT_BRIEF.md`. If this is a new project created from the Lite template, follow **`docs/workflow/initialization.md`** first. A new project's inherited Lite branch names, PR numbers, milestones and ADRs are template-source history, not current project facts. Treat the project as uninitialized until the first-use checklist is committed.

## 1. Session start and recovery

1. Read `AGENTS.md`, project brief/map, and the *last integrated* `memory_bank/context.md` and `progress.md`.
2. Inspect the actual repository, branch, HEAD, worktree status and relevant remote PRs. Resolve discrepancies by checking current Git/PR facts before using a stale memory instruction.
3. For a task branch, read its own `docs/changes/<task>/handoff.md` and plan. If the task has no local handoff, use its PR/issue and reconstruct a scoped handoff before significant new work.
4. For the default branch, identify unfinished work from active PRs and task records; the shared context is **not** a complete authoritative registry of unmerged branches.
5. Consult linked accepted decisions and relevant reports only as needed.

## 2. Parallel tasks — shared memory ownership

- Each concurrent task owns its unique `docs/changes/<task>/handoff.md` (or an issue/PR description for a trivial task with no long-lived handoff). Do not store competing "current active task" claims in the shared `memory_bank/context.md`.
- The shared `memory_bank/context.md`, `progress.md`, and `orchestrator-log.md` describe the **last reconciled integrated baseline**. Only the designated integration/coordinator change updates them; parallel feature branches must **not** edit these shared files.
- A single-task project may update shared memory on its task branch **only when** there is no overlapping writer and the update is part of that task's reviewable PR. Otherwise keep task-specific changes local.
- Before integrating a task branch, inspect current `main`, merged/unmerged PRs and **all affected task handoffs**. Preserve any unfinished task in its own file or PR; never resolve a context merge conflict by selecting a single task and silently losing another.
- If two task branches changed the same shared memory files, **stop and reconcile explicitly** in a bounded integration PR. Update the integrated summary from live Git/PR evidence, retain independent handoffs and show the Owner the resolution.
- Concurrent agents cannot treat a per-branch commit as globally visible project memory. A fresh session in another branch must discover ongoing work through GitHub PRs, agreed handoff paths, or direct coordination.

## 3. Required checkpoints and handoff

The coordinating agent (not a source-read-only Reviewer/Critic/Verifier) owns memory synchronization within its **approved write scope**.

**Before PR, interruption, or substantive task handoff:**

1. Save/update the task-local handoff with observed repository and branch HEAD, task scope, completed milestones, actual checks, blockers and exact next action. Use `docs/templates/session-handoff.md` if useful. `docs/changes/<task>/handoff.md` is preferred for parallel and significant work.
2. Commit safe handoff and task evidence on the task branch when in scope; never alter `main` directly. The PR source SHA can change if this is a committed substantive document: apply the exact-candidate review rules in `docs/workflow/development.md`.
3. For a single-task coordinator authorized to write shared memory, update `context.md` and `progress.md` only with verified facts. Append an `orchestrator-log.md` row only for significant role verdict/scope/Owner decision/handoff, not every command.
4. If a decision has lasting effect, create one `docs/decisions/` record and link it from `decisions.md` during authorized integration. Do not duplicate ADR rationale.
5. Check diffs for sensitive content, stale SHA/status, conflicts and unintended edits.

**After Owner merge, cancellation, or other disposition:**

1. Verify final PR status, exact merge SHA and CI/Owner decision on GitHub; do not infer merge from a local `COMPLETE`.
2. Where integrated shared memory remains stale, prepare a separate authorized documentation task branch/PR, or include confirmation in the next already approved integration-memory change. Do **not** write to protected `main`.
3. Reconcile the shared overview and progress log with **all** outstanding task handoffs; update a task's final disposition without erasing others. Until the update merges, live Git/PR state is authoritative.
4. Preserve historical decisions and evidence. Cleanup of worktrees is separate and follows `docs/workflow/workspaces.md`.

A tiny change without a meaningful context change does not need ceremonial updates to four files. Significant or blocked tasks do require a recoverable task-local checkpoint even if a shared overview is unchanged.

## 4. Keep memory usable

- `context.md`: **short integrated overview**, last reconciliation commit/date, links to open work; not a universal mutable singleton for every task.
- `progress.md`: approximately 15 recent **integrated** milestones, with links to older task/Git evidence.
- `decisions.md`: index of approved decisions, not duplicate decision text.
- `orchestrator-log.md`: short material event index, not tool trace. Never record secrets.
- Task-local `handoff.md`: the recoverable latest task status on a particular branch, including unmerged work.
- When a decision is superseded, retain the old ADR with status/provenance and link the new one.
- Check `git ls-files`, `git status`, actual HEAD, active PRs and Git history when claiming an item is committed or available to other agents.

## 5. Fresh-session success criterion

Without any chat history, a new agent should be able to discover the project objective, the canonical rules, accepted decisions, the **specific task branch's** scope/handoff, the most recent verified checks, current blocking conditions and the next action. When evidence is missing or ambiguous, report that instead of inventing status or authority.
