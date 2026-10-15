# Project Memory Protocol — Canonical Domain Procedure

**Purpose:** The repository and Git history are the durable record of decisions, progress, tests and ongoing work. Chats, model memory and local agent caches are *not* sources of truth.

## Memory surfaces — each fact has one canonical home

| Information | Authoritative place | Relationship to operational memory |
| --- | --- | --- |
| Product purpose, audience, core constraints | `PROJECT_BRIEF.md` | `context.md` links, does not copy product spec |
| Shared agent instructions | `AGENTS.md` | Never rewritten in logs |
| Procedures / security | `docs/workflow/`, `docs/security/` | Refer by path |
| Program behavior | Current source, tests and API contracts | Verify against Git; memory cannot override |
| Approved requirements and task decisions | `docs/changes/<task>/` plus Owner evidence | `context.md` points to active task |
| Durable architectural/engineering decisions | `docs/decisions/<id>.md` | `decisions.md` is an index, never a second ADR |
| Current handoff / next action | `memory_bank/context.md` | Latest checked working snapshot |
| Chronological milestones / checks | `memory_bank/progress.md` | Concise recent history with references |
| Important coordination events and subagent verdicts | `memory_bank/orchestrator-log.md` | Short append-only event index |
| Detailed review/verification evidence | Task report under `docs/changes/` or a linked PR | Log links to it; do not duplicate report |
| Exact branch, commit, PR and CI status | Git and GitHub at observation time | Record dated SHA/link and re-check; no speculative READY |

All four `memory_bank/*.md` foundation files are **tracked by Git** in this Lite kit. Do not globally ignore `memory_bank/`. New unreviewed caches, raw model transcripts, provider/tool dumps and local credentials must stay untracked and outside this shared memory. A remote task branch carries its own memory changes until reviewed/merged: other branches do **not** see them automatically.

## Session start (required)

1. Read `AGENTS.md`, `PROJECT_BRIEF.md`, `PROJECT_MAP.md`, `memory_bank/context.md` and `memory_bank/progress.md`.
2. Check actual Git repository, branch/HEAD, dirty changes, PR state when relevant. **Repository facts override stale memory entries.**
3. Read active task spec/plan, linked decisions and recent log rows **only as needed**.
4. If the snapshot conflicts with Git/current sources, record the drift and correct the outdated snapshot in a permitted task branch; never silently adopt stale state.

## After material work, interruption or agent handoff (required)

The coordinating/main agent (not independent read-only subagents) owns shared memory updates:

1. Update `context.md`: date, active task/branch, verified facts, blockers, next exact step and links. Keep it short; replace obsolete snapshot content.
2. Append a **brief** entry to `progress.md`: what changed, exact evidence (file/commit/check), PASS/FAIL/NOT_RUN, what remains.
3. Append to `orchestrator-log.md` only for material dispatch/role verdict, scope decision, hard stop or handoff — no tool-by-tool transcript.
4. If a decision has lasting effect, create/update one `docs/decisions/` record and add a link in `decisions.md` (do not restate its rationale).
5. Add reusable test/recovery knowledge to its canonical procedure, task documentation, or decision record; leave local-only observations in the short operational log.
6. Inspect staged diffs for secrets, duplicate claims, outdated status and unrelated changes. Commit safe memory updates on the task branch as part of the work; do not write directly on `main`.

A short task with no material change of context does **not** require four ceremonial edits. Update the files that actually changed, but never end substantive work or a blocked run without a recoverable `context.md` checkpoint.

## Context compaction and history

- `context.md` is **replaceable current state**, never an unbounded journal.
- `progress.md` keeps a compact recent window (about 15 milestones). Older detail stays in committed task records, Git history and PRs; summarize rather than deleting unique evidence.
- `decisions.md` is an index of active decisions. Superseded records remain in `docs/decisions/` with status/provenance.
- `orchestrator-log.md` records significant events (date, task, actor, outcome, evidence); retain historical entries, but do not add routine shell output.

## No false permanence or unauthorized publication

A chat message, skipped memory update, uncommitted local note, or ignored `memory_bank/` file is **not** shared project memory. Check `git status` and file tracking. Committing a memory update on a task branch does not automatically publish or merge it. The Owner controls integration. On public repos, write memory as if anyone could read it; never commit confidential content.

If required context cannot safely be written (e.g., contains sensitive information), store a redacted pointer to an Owner-controlled external secure system; never copy the secret into Git.

## Session recovery

A fresh session should be able to answer from committed project sources: what are we building; what was decided; what task/branch is active; what actually passed; what is blocked; and what to do next. If not, the last handoff is incomplete.
