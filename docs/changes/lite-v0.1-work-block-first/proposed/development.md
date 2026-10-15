# Proposed Minimal Development Protocol — For Critic, NOT Active Policy

> On approval, incorporate/adapt this content **inside existing** `docs/workflow/development.md` rather than adding a second authoritative protocol. The current Development Protocol and its safety/exact-candidate rules remain in force until replaced by a reviewed change.

## 1. Decide the route

- **Simple:** documentation clarification, memory note, minor bounded analysis or reversible housekeeping with no substantive source implementation or material design/security decision. Orchestrator may handle it directly; keep a truthful short record and appropriate Git checks/PR. Escalate to WB route when scope or risk expands.
- **Work Block:** substantial feature, integration, bug fix with meaningful code change, risky refactor, interface/security/data changes or a named stage of an approved project roadmap. Do not silently relabel a substantial task as simple to skip gates.

## 2. Discuss and preserve intent

Owner and Orchestrator determine intended outcome and constraints, save accepted decisions to tracked memory/ADR when material, and consult Architect for genuine discovery or design uncertainty. `intent.md` and `spec.md` exist when their content adds meaningful traceability. Optional project `plan.md` contains **roadmap stages**, not one WB's detailed implementation.

## 3. Define a stage

When a roadmap stage becomes actionable, draft its `work-block.md` with verifiable result, accepted contracts, scope/write boundaries, delegated roles, acceptance, checks, risks/stops and rollback. A standalone significant task may directly create a WB without a project plan. An Owner decision is required for material design/scope. Freeze the reviewed WB version; an independent Critic issues READY or REWORK separately against its exact revision.

## 4. Execute and assure

On Critic READY, native harness Coder implements within WB boundaries in a dedicated branch/worktree. Coder executes focused checks and commits a candidate; Reviewer independently inspects exact candidate/diff against requirements, returns READY or REWORK. Verifier independently tests/checks acceptance on **the same exact candidate**, returning PASS, FAIL or BLOCKED with commands/evidence. Rework goes back to Coder and affected assurance reruns. Material design/scope/authority deviation goes back to Owner, potentially with Architect. Missing independence or required testing cannot be declared PASS.

## 5. Integrate, close and continue

Orchestrator confirms results and truthful handoff/closeout. On successful assurance, branch may be pushed to its authorized remote subject, PR/current-head CI checked, and Owner separately approves merge. The fact of merge is verified from GitHub. Durable task handoff and project memory are reconciled through authorized Git/PR changes (not direct mutation of protected `main`). Mark the roadmap stage complete only when its integration/acceptance contract is met; then start the next WB. When planned stages finish, MVP deployment/testing and any production promotion require separately recorded Owner GO.

## Evidence and safe parallel work

- Current source/tree, Git/PR and executed tests outrank stale memory summaries.
- Preserve one writer for overlapping paths; concurrent task branches own their own handoffs; only a designated integration change updates shared `memory_bank`.
- Normative Markdown, accepted requirements, role/policy or application code changes invalidate relevant previous candidate review; a narrow evidence-only append may be documented separately with exact source SHA and final PR HEAD/CI validation.
- Do not bypass or overclaim local Git hooks; real OS/platform permissions enforce consequential boundaries.
- No custom Controller, adapter, state machine, registry, hook installation or skill-fetch script is part of this protocol.
