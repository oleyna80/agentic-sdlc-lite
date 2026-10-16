# Full Architecture Audit R1 — SDLC Lite v0.1

**Review date:** 2026-10-16  
**Repository:** `oleyna80/agentic-sdlc-lite`  
**Exact reviewed `main` commit:** `90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab`  
**Verdict:** **REWORK** (documentation/assurance contracts before full-scale pilot use)  
**Source:** the ChatGPT Architecture Audit R1 performed at this revision. This document is a structured archival rendering of that review, not a new independent review or a fresh review of a later commit.

## Scope, evidence and limits

- Read-only inspection of the complete Git tree (46 files): root instructions, project brief/map, canonical workflow, memory, Git/worktree and security procedures, all six portable roles, templates, architecture description, existing historical audit/handoff/ADR evidence, four committed project-memory files, optional Git hooks and GitHub Actions workflow.
- Independently checked the live GitHub `main` SHA and external settings; at review time `main.protected=false` and `is_template=false`. PR #5 and #7 were MERGED; PR #6 OPEN/Draft/non-mergeable.
- Checked 37 relative Markdown-link references in the reviewed files; no missing link targets were identified. Directory-link matches were not treated as errors.
- Checked [WB-LITE-001 historical GitHub Actions result](https://github.com/oleyna80/agentic-sdlc-lite/actions/runs/38794577645), SUCCESS on exact source `8c85732342db8bbde386550b784c3eadc83ecfed`.
- **NOT_RUN:** native Codex/Claude subagent execution, fresh-session recovery, negative initialization tests, actual sandbox/secrets isolation, Git hook negative tests and parallel-worktree fault scenarios. Static document agreement and green CI do not establish runtime correctness or security isolation.
- No repository, branch, PR, credential or platform setting was modified by the original read-only audit.

## Summary

At this reviewed revision: **0 P0 source findings; 3 P2 findings (AUD-001…003); 4 P3 findings (AUD-004…007)**. The underlying architecture remains coherent. Remediation should be bounded; adding Controller, registry/SQLite, dispatcher, separate lifecycle authority or mandatory Skills is not justified.

## P2 findings — corrective scope candidates

### AUD-001 — Routine delegation conflicts with the Coder role

- **Evidence:** [Development Protocol `1](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/docs/workflow/development.md#L7-L12) allows a routine Orchestrator to handle a task directly **or delegate** a bounded mission. [Coder role](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/.agents/roles/coder.md#L5-L10) permits implementation only from a Critic-READY frozen Work Block or an approved legacy plan.
- **Risk:** no recognized mission contract for a delegated routine fix that correctly requires no frozen WB.
- **Minimal recommendation:** allow (a) routine Coder delegation from an approved bounded objective, scope/write-set, base and checks; (b) significant Coder delegation only from a frozen Critic-READY WB or approved legacy plan, retaining mandatory gates.
- **Acceptance:** a routine task executes without a fabricated WB; significant tasks cannot use the routine route to bypass Critic.
- **Audit limitation:** connected templates may extend the necessary edit scope; confirm before freezing implementation write-set.

### AUD-002 — Committed task handoff is simultaneously mandatory and optional

- **Evidence:** [Development Protocol `5](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/docs/workflow/development.md#L41-L49) requires committed `docs/changes/<task>/handoff.md` before PR/handoff; [Memory Protocol](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/docs/workflow/memory.md#L36-L52) and [Task records README](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/docs/changes/README.md#L20-L26) permit adequate Issue/PR records for trivial tasks.
- **Risk:** agents invent ceremonial files or fail to preserve recoverable state.
- **Minimal recommendation:** brief single-PR routine may use adequate PR/Issue evidence; significant and longer-running parallel tasks preserve an independent committed handoff; interruptions before PR must leave a genuinely recoverable checkpoint.
- **Acceptance:** fresh session can recover task, status and next step; single-file routine does not require unnecessary handoff Markdown.

### AUD-003 — New-project initialization guard checks only a subset of required conditions

- **Evidence:** [Lite Checks guard](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/.github/workflows/lite-checks.yml#L42-L49) checks `Initialization: INITIALIZED` and a repository-identity substring; [Initialization Protocol](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/docs/workflow/initialization.md#L9-L28) additionally requires real project identity and reset or deliberate adoption of inherited operational memory/decisions/task state.
- **Risk:** CI green on a nominally initialized derived project whose active memory still describes source Lite.
- **Minimal recommendation:** strengthen exact identity match and selected explicit active-memory invariants; keep wider semantic adaptation an Owner/Verifier check. Test negative and positive derived-project fixtures. Do not globally ban historical mentions of Lite.
- **Acceptance:** uninitialized derived project FAIL; `INITIALIZED` with active inherited Lite memory FAIL; accurate new project with historical provenance reference PASS.
- **Limit:** static CI cannot prove complete semantic first-use adaptation or real runtime isolation.

## P3 observations — proportionate clarification

### AUD-004 — Scope of source precedence
[AGENTS.md `Source precedence](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/AGENTS.md#L5-L14) does not explicitly distinguish ordering of project documents from higher-priority host/global instruction rules. Owner task-specific constraints precede domain procedures in the list. **Not a proven bypass**, since the contract already says to stop on conflict. Add a short clarification, not a new authority layer.

### AUD-005 — Working-phase vocabulary
[Session-handoff template](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/docs/templates/session-handoff.md#L3-L8) includes `DRAFT / CRITIC_PENDING / IN_PROGRESS / DELIVERY_READY`, whereas Development Protocol emphasizes the latter two. Treat as a minor clarity question; no new state machine.

### AUD-006 — Routine closeout and optional independent gates
[Closeout template](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/docs/templates/closeout.md#L3-L12) expects Reviewer and Verifier verdict slots, although routine gates are optional. Support explicit `NOT_APPLICABLE` with reason for a legitimately routine task; retain mandatory same-SHA READY/PASS for significant.

### AUD-007 — Dated integrated-memory snapshots
[`memory_bank/context.md`](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/memory_bank/context.md#L3-L9) and [`progress.md`](https://github.com/oleyna80/agentic-sdlc-lite/blob/90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab/memory_bank/progress.md#L5-L9) describe cleanup as pending even though PR #5 and #7 merged. Memory Protocol intentionally makes live Git/PR evidence authoritative. Reconcile on an already approved memory checkpoint rather than a new automatic PR for every merge.

## External/platform/operational items, not source contradictions

- **CFG-001 — OPEN:** live `main.protected=false` at audit. Hooks/prose/CI do not replace platform protection; configuration requires separate Owner decision.
- **CFG-002 — OPEN:** live `is_template=false`. GitHub native template mode is a separate Owner/platform choice.
- **OPS-001 — OPEN:** duplicative Draft [PR #6](https://github.com/oleyna80/agentic-sdlc-lite/pull/6) is outdated after PR #5; closing it without merge requires separate Owner authorization.

## Architecture findings that passed

- Single root project agent contract, no competing SDD lifecycle.
- Risk-based route for routine/significant, not a file-count threshold.
- Owner design acceptance separate from Critic; frozen reviewed WB not mutated to backfill state.
- Independent Reviewer READY and Verifier PASS required on the same exact source for significant changes; prior assurance invalidation is explicit.
- Parallel task-local recovery separate from integrated project-memory overview.
- Git worktrees are not a security boundary; hooks and CI have bounded, documented limits.
- Historical REWORK remains historical and does not silently approve later candidate SHAs.
- Product stage acceptance, PR merge, MVP validation and production release are distinct Owner-controlled milestones.

## Audit disposition and next action

**REWORK for the reviewed document-contract state, not rejection of the architecture.** Obtain a genuinely independent read-only Critic evaluation of AUD-001…007, approve a bounded corrective planning scope, then apply the Lite significant workflow (Owner design/scope → frozen WB → Critic READY → scoped implementation → Reviewer READY + Verifier PASS on exact source → separate Owner PR merge GO).

**This archival report grants no implementation, publication, merge, deployment or platform authorization.**

**Independent follow-up:** [Independent Architecture Critic R1](independent-architecture-critic-r1.txt) — separate Owner-provided review, verbatim artifact.
