# Proposed Minimal Development Protocol — For Critic, NOT Active Policy

> On approval, incorporate/adapt this content **inside existing** `docs/workflow/development.md` rather than adding a second authoritative protocol. The current Development Protocol and its safety/exact-candidate rules remain in force until replaced by a reviewed change.

## 1. Decide the route

- **Routine / simple:** small, reversible, well-bounded low-risk task, including docs/memory/analysis **or a safe small code fix**, done under Orchestrator control with focused tests/self-review and applicable task-branch/PR/Owner merge decision. Example: localized error handling bug with a regression test and no public contract change.
- **Significant Work Block:** substantial feature, broad/risky refactor, new interface, data/security/authority impact, irreversible operations or a named substantial project stage. Example: authentication boundary change even in one line. Normative governance Markdown may be significant too.
- Classify by **risk, scope, impact and reversibility**, not code-vs-document extension. Do not relabel a significant task to bypass WB gates.

## 2. Discuss and preserve intent

Owner and Orchestrator determine intended outcome and constraints, save accepted decisions to tracked memory/ADR when material, and consult Architect for genuine discovery or design uncertainty. `intent.md` and `spec.md` exist when their content adds meaningful traceability. Optional **root `plan.md`** is the sole project roadmap, instantiated from `docs/templates/plan.md`. New-stage contracts live at `docs/changes/<task>/work-block.md`. Existing `docs/changes/<task>/plan.md` files remain **legacy task implementation plans** with their original Critic evidence; they are not second roadmaps. On implementation, align existing Development, Project Map, changes README and Memory docs with this mapping; migrate any legacy task explicitly without loss of accepted-plan provenance.

## 3. Define a stage

When a stage is actionable, draft `docs/changes/<task>/work-block.md` with verifiable result, scope, Owner-accepted contracts, roles, acceptance and stops. A standalone significant task needs no project roadmap. Owner accepts material design/scope **before** freeze. Critic independently returns READY/REWORK in a **separate report** referring to exact frozen WB revision; never fill verdict/status/source SHA/PR outcomes into the reviewed WB. Material WB amendments require renewed applicable Owner/Critic consideration.

## 4. Execute and assure

On Critic READY, native harness Coder implements within WB boundaries in a dedicated branch/worktree. Coder executes focused checks and commits a candidate; Reviewer independently inspects exact candidate/diff against requirements, returns READY or REWORK. Verifier independently tests/checks acceptance on **the same exact candidate**, returning PASS, FAIL or BLOCKED with commands/evidence. Rework goes back to Coder and affected assurance reruns. Material design/scope/authority deviation goes back to Owner, potentially with Architect. Missing independence or required testing cannot be declared PASS.

## 5. Integrate, close and continue

Orchestrator confirms results and truthful handoff/closeout. `DELIVERY_READY` is an informative **working handoff phase only**, not final task closeout. Final task statuses remain `COMPLETE / BLOCKED / CANCELLED` and `COMPLETE` may precede PR merge. On successful assurance, push authorized subject branch, check PR/current-head CI, and request separate Owner merge GO; record actual PR/merge disposition independently. Reconcile task/project memory through authorized Git/PR (not direct unapproved `main` writes). Roadmap stage `COMPLETE` needs **its own evidence-based acceptance** (integration only if stage criteria require it), not task status alone. MVP deployment/validation and production require separate Owner GO.

## Evidence and safe parallel work

- Current source/tree, Git/PR and executed tests outrank stale memory summaries.
- Preserve one writer for overlapping paths; concurrent task branches own their own handoffs; only a designated integration change updates shared `memory_bank`.
- Normative Markdown, accepted requirements, role/policy or application code changes invalidate relevant previous candidate review; a narrow evidence-only addition belongs in **separate reports/handoff, not the frozen WB**, with exact source SHA and final PR HEAD/CI validation.
- Do not bypass or overclaim local Git hooks; real OS/platform permissions enforce consequential boundaries.
- No custom Controller, adapter, state machine, registry, hook installation or skill-fetch script is part of this protocol.
