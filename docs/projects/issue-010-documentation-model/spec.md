# Candidate specification — ISSUE-010 documentation model

**Status:** CANDIDATE — Owner acceptance of these exact bytes is pending. Architecture direction is approved; implementation is not approved. Repository: `oleyna80/agentic-sdlc-lite`. Stable project ID proposed: `issue-010-documentation-model`. Baseline: `ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb`.

## 1. Intent and outcome

Owner request “SDLC Lite — ISSUE-010 / Documentation Architecture Compatibility Review R2” in the current session supplies initiative intent and the planning-path exception. [Issue #10](https://github.com/oleyna80/agentic-sdlc-lite/issues/10) supplies problem context, not implementation approval. Preserve the exact Owner request in later authorized durable approval evidence before formal project planning; a mutable Issue URL alone is insufficient provenance. No separate intent file or intent approval gate is required.

Support concurrent significant initiatives with their own immutable approved P, deterministic recovery and unchanged independent assurance/Owner boundaries. Describe the product as process-as-product, harness-native and artifact-driven. Preserve routine proportionality, historical approved contracts and downstream safety.

## 2. Requirements and design constraints

1. `PROJECT_BRIEF.md` defines enduring Product Intent, not feature requirements or implementation authority. Source `ROADMAP.md` is a dated, mutable human-readable journey with major milestones, maturity, limits, future directions and verified evidence. ROADMAP is optional downstream and is never an approval gate, permission registry or substitute for integrated memory.
2. New significant initiatives use `docs/projects/<project-id>/spec.md` and `plan.md`. Optional `intent.md` can be replaced by a verified Owner request/Issue revision. Spec contains requirements, design constraints/interfaces, AC, material decisions and unresolved concerns. P contains implementation strategy, finite scope, stages/dependencies, autonomy, risks, proof and integration. Avoid copying normative lifecycle into artifacts.
3. Project IDs are repository-scoped lowercase ASCII kebab-case matching `[a-z0-9]+(-[a-z0-9]+)*`, unique, stable after first accepted spec and never reused or aliased. Existing legacy IDs/paths are not renamed. No registry service is introduced.
4. W remains at `docs/changes/<task-id>/work-block.md`; handoff, original assurance and delivery records retain existing semantics. W identifies repository/project plus exact P commit/path/blob, accepted spec commit/path/blob, spec acceptance evidence, exact Project Critic subject/verdict/report and separate Owner exact-P approval. P binds exact accepted spec; spec binds verified intent. W conformance and Stage Critic are explicit. Self commit IDs and later verdicts live outside frozen artifacts.
5. Recovery starts from the authorized task/W and verifies all bindings against Git and authentic Owner/independent evidence. No fallback to latest P, folder scan, current root plan, matching filename, ROADMAP or another repository's identical blob. Missing/mismatching mandatory evidence means STOP/BLOCKED before affected execution. Hash equality alone does not prove approval or applicability.
6. Approved exact Spec/P/W revisions remain immutable. A candidate replacement is a new revision with retained original commit/blob/approval/report reachability. Changed requirements/design require Owner acceptance of exact new spec and affected gates; material P changes require new Project Critic and separate Owner exact-P approval. W-only changes within P require new W and Stage Critic/conformance, without Owner-per-W approval. Old tasks do not silently switch P or continue against superseded changed requirements.
7. Concurrent initiatives have distinct project paths and task handoffs; one writer per overlapping path. Git worktrees share refs/objects and are not security isolation. Merge/base drift requires actual diff/provenance/assurance evaluation; it never transfers approvals. No locking component, scheduler, Controller or second lifecycle.
8. Historical root P and legacy per-task plans retain original paths at original exact commits, specifications, Critic/Owner decisions, W and exceptions. Do not move/rewrite historical contracts or reapprove copies. Current root `plan.md` stays byte-identical and is legacy evidence, not a default contract or roadmap for new projects.
9. Downstream initialization deactivates inherited source-project intent/spec/P, approvals, roadmap status and operational memory as active authority. Preserve/adopt source material only through explicit scoped decisions, never automatic approval transfer. ROADMAP creation is optional. No bulk deletion or automatic historical migration is authorized.
10. Existing single lifecycle, logical roles, actual permission boundaries, routine route, same-S independent Reviewer/Verifier, S..H evidence-only mapping and actual current-head CI/Owner merge controls remain unchanged. No Skills/adapters/hooks/CI/settings/runtime changes. Future Skills consume these canonical contracts and grant no authority.

## 3. Acceptance criteria

| ID | Required evidence after future authorized implementation |
|---|---|
| AC-01 | Every active entrypoint uses project-local P for new significant work; root P remains unchanged, historical exact blobs reachable. |
| AC-02 | Spec/P/W/intent/product/ROADMAP/memory contracts have distinct inputs, outputs, owners and update rules; no extra mandatory intent/ROADMAP/routine gate. |
| AC-03 | W → exact P → exact accepted spec → intent recovers deterministically with authentic Critic/Owner references; all wrong/missing bindings STOP. |
| AC-04 | Two concurrent initiatives and merge of one preserve the other's exact contract and task recovery; shared-path conflicts are surfaced. |
| AC-05 | Modified approved bytes/stale Critic/missing Owner approval cannot authorize execution; material spec/P and W-only change routes remain distinct. |
| AC-06 | WB-LITE-002 P/W2 and ISSUE-009 P/W1 recover from original commits with original assurance/approval and exceptions; no copy approval or root fallback. |
| AC-07 | New downstream repo cannot inherit source active contracts/approvals/status; successful initialization can omit ROADMAP. |
| AC-08 | A fresh independent native session recovers correct contract without chat; synthetic replay is separately labelled, actual native compaction only claimed if observed. |
| AC-09 | Routine work succeeds without required initiative files/P/W/ROADMAP; roadmap changes alone grant no execution authority. |
| AC-10 | Product descriptions consistently state process-as-product/native harness/artifacts and logical-role limits; one normative lifecycle remains. |
| AC-11 | Finite source scope, Markdown/link checks, full tracked/untracked/staged diff, invariant hashes and actual CI on delivery H are evidenced; same-S independent Reviewer READY/Verifier PASS precede delivery readiness. |
| AC-12 | ADR-0002 records rationale/legacy/migration without rewriting ADR-0001; roadmap facts use exact verified integration evidence and future directions remain proposals. |

## 4. Proposed finite implementation source scope

Exactly 17 paths, subject to future approved P and W:

- `AGENTS.md`
- `README.md`
- `PROJECT_BRIEF.md`
- `PROJECT_MAP.md`
- `ROADMAP.md` (new)
- `docs/workflow/development.md`
- `docs/workflow/memory.md`
- `docs/workflow/initialization.md`
- `docs/architecture/overview.md`
- `docs/changes/README.md`
- `docs/templates/intent.md`
- `docs/templates/spec.md`
- `docs/templates/plan.md`
- `docs/templates/work-block.md`
- `docs/templates/session-handoff.md`
- `docs/templates/subagent-mission.md`
- `docs/decisions/0002-project-documentation-model.md` (new)

Planning/evidence paths are separate and must be enumerated before each authorized phase. This candidate spec and architecture proposal are not P or W. No permission to edit the 17 sources is granted by this document. No new permanent test framework.

## 5. Verification and gates

Use proposal R2 tests T01–T22 as the concrete acceptance design. Execute disposable Git/document fixtures and independent native recovery where specified after P/W gates. Preserve setup, commands, exact subjects, mutations, numeric codes, diagnostics, before/after state and original verdicts. Design-only cases are NOT_RUN. Missing mandatory capability/evidence is BLOCKED, not synthetic PASS.

Sequence: Owner exact-spec acceptance → committed complete P → independent formal Project Critic READY → separate Owner exact-P approval → committed conforming W → independent Stage Critic READY → bounded implementation → same-S independent Reviewer/Verifier → authorized delivery H/actual CI → separate Owner merge. Architecture Critic READY is only readiness of the proposal for Owner review.

## 6. Risks and exclusions

Risks: incomplete cross-file synchronization, stale task binding, false approval transfer by blob equality, source-state inheritance, documentation mistaken for runtime enforcement, overlap in mutable overview files. Mitigate with explicit binding/STOP, exact evidence, one writer and negative tests.

Exclude historical/frozen document edits, shared-memory reconciliation, new lifecycle/authority tiers, runtime components, Skills/adapters, hooks/CI/security settings, platform protection changes, direct main writes and merge/deployment. Any new normative source path or material change requires Owner disposition and affected gates.
