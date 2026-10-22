# Project Plan P — ISSUE-010 Documentation Architecture Adoption

**Classification:** SIGNIFICANT — normative SDLC lifecycle and source-of-truth changes.  
**Repository:** `oleyna80/agentic-sdlc-lite`  
**Stable project ID:** `issue-010-documentation-model`  
**Project P path:** `docs/projects/issue-010-documentation-model/plan.md` — one-time Owner-authorized non-root planning-path exception while the current canonical root-P requirement is still active.  
**Proposed review gate:** committed candidate P → independent formal Project Critic READY → separate Owner exact-P approval → independently reviewed stage W. This document **does not assert** that any of those future gates has happened.

## 1. Definition, approved specification, and provenance

**Objective:** Adopt the Owner-selected documentation architecture for SDLC Lite without introducing a second lifecycle or weakening existing assurance and Owner boundaries. New significant initiatives have unique project-local `spec.md` and frozen `plan.md` revisions, linked to bounded `work-block.md` stages. The product has a distinct `PROJECT_BRIEF.md` and dated, non-authoritative `ROADMAP.md`.

**Exact specification presented for Owner acceptance:**

- Owner-accepted initiative description and gate record: `docs/changes/ISSUE-010/owner-decisions.md`, OD-010-01/02, which explicitly describes the original chat-message provenance and its limits.
- Committed specification subject: `e391d09cc908e886d4e019d54987fc26d34bbb55:docs/projects/issue-010-documentation-model/spec.md`.
- Specification blob: `a364ec0fbd21767a36820653bd851d552c8ab7a7`; content SHA-256 `866a3cb1ba0958cb0e19fcc392cfb5cb960837b70042c772c0778a08dc1ffa14`.
- Accepted scope: specification AC-01…AC-12 and its exact 17 normative source paths. Any material enlargement requires new Owner disposition and affected gates.
- Architecture Proposal R2: same source commit, `docs/changes/ISSUE-010/proposal-r2.md`, blob `5480ac967f597290138466c8ae38ac275a25be46`. Its test design T01…T22 is currently NOT_RUN.
- Architecture Critic R2: same source commit, `docs/changes/ISSUE-010/architecture-critic-r2.md`, blob `2901f80ac5aec310526d4b414986e857c3714e74`; READY applies only to architecture review, NOT to formal Project P.
- Related [Issue #10](https://github.com/oleyna80/agentic-sdlc-lite/issues/10) supplies product context, not approval or an independent assurance result.

**Baseline:** verified `main` commit `ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb`, tree `d1812868ac576c36b732a51804a42a412b983b52`. The existing ISSUE-010 R2 planning branch HEAD before this P is `e391d09cc908e886d4e019d54987fc26d34bbb55`.

**Non-goals:** runtime/Controller/registry, Skills/adapters, hooks, CI or settings modifications; historical P/W migrations, branch/history rewriting, self-approval, blanket deletion of inherited source material, independent review performed by the author, production deployment.

## 2. Artifact contracts and target design

The complete proposed representation is:

~~~text
PROJECT_BRIEF.md                     Product Intent (enduring)
ROADMAP.md                           Product journey (dated; optional downstream)
docs/projects/<project-id>/
  intent.md                          Optional authenticated initiative intent
  spec.md                            Owner-accepted Requirements + Design revision
  plan.md                            Exact frozen P after Project Critic + Owner approval
docs/changes/<task-id>/
  work-block.md                      Exact bounded W under approved P
  handoff.md                         Mutable status/recovery checkpoint
  review.md / verification.md        Actual independent assurance
memory_bank/                         Last verified integration (not approval authority)
~~~

**One canonical lifecycle** remains `docs/workflow/development.md`; `AGENTS.md` stays the sole root behavioral contract. `ROADMAP.md` reports “откуда вышли / где находимся / куда идём”; it is never a permission or active-stage registry. Actual Git and authenticated Owner/Critic evidence control authority.

**Canonical recovery:** authenticated task identity → exact W (when significant/stage) → repository + stable project ID + exact P commit/path/blob → exact accepted spec commit/path/blob and Owner acceptance evidence → original Project Critic READY on exact P → separate Owner exact-P approval → W conformance/Stage Critic → actual privileges. No latest-root/default-plan/folder-scan fallback. Missing/wrong subject or provenance yields STOP before affected writes. The project ID is unique repository-scoped lowercase ASCII kebab-case and cannot be silently reused or aliased.

**Frozen semantics:** approved exact revision remains unchanged. A material change of spec/plan goes through its affected formal gates; W-only changes within unchanged P require new W/Stage Critic, not an Owner-per-W gate. Updating ROADMAP neither changes P nor authorizes build.

**Legacy:** current root `plan.md` (ISSUE-009 P blob `399b3bb96c6482d35fed93411104d04d3d191482`) and historical WB-LITE-002 root P at commit `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df`/blob `fcfda1f6dfa011a5688c5f04111d918d6bbce707` remain untouched. The prior W2/ISSUE-009 W exact provenance and Owner exceptions remain applicable; a relocated copy is not automatically approved.

**Derived repositories:** initialized identity/memory/ADRs must not inherit source project's active intent/spec/P, approvals, roadmap status or task closeouts. `ROADMAP.md` is optional. Existing initialization gate is extended, not replaced.

## 3. Finite source and planning scope

**Exactly 17 future normative documentation source paths**, no additions without new Owner decision:

1. `AGENTS.md`
2. `README.md`
3. `PROJECT_BRIEF.md`
4. `PROJECT_MAP.md`
5. `ROADMAP.md` (new)
6. `docs/workflow/development.md`
7. `docs/workflow/memory.md`
8. `docs/workflow/initialization.md`
9. `docs/architecture/overview.md`
10. `docs/changes/README.md`
11. `docs/templates/intent.md`
12. `docs/templates/spec.md`
13. `docs/templates/plan.md`
14. `docs/templates/work-block.md`
15. `docs/templates/session-handoff.md`
16. `docs/templates/subagent-mission.md`
17. `docs/decisions/0002-project-documentation-model.md` (new)

**Separate planning/evidence paths (not source implementation):**
- `docs/projects/issue-010-documentation-model/plan.md` — this P candidate, frozen once reviewed/approved.
- `docs/changes/ISSUE-010/owner-decisions.md` — exact recorded Owner decisions and approval status.
- `docs/changes/ISSUE-010/project-critic.md` — original independent formal Project Critic evidence (future, separate author).
- `docs/changes/ISSUE-010/work-block.md` — candidate stage W only after Owner-approved P; later frozen once reviewed.
- `docs/changes/ISSUE-010/stage-critic.md` — original independent Stage Critic.
- `docs/changes/ISSUE-010/review.md`, `verification.md` — independent exact-source Reviewer/Verifier original reports.
- `docs/changes/ISSUE-010/test-evidence.md` and `handoff.md` — bounded test records and mutable recovery, when separately allocated at the appropriate stage.
- Existing `docs/changes/ISSUE-010/proposal-r2.md` and `architecture-critic-r2.md` are historical planning evidence and shall not be rewritten.

The implementation W must explicitly allocate its finite source subset and exact evidence/report writers. No contents from this P alone grant write permission to those future paths. One writer per overlapping file. All modifications use task branch, non-force commits/push, and a Draft PR. Do not mutate `main` without separate Owner GO.

**Explicit preserved paths:** root `plan.md`, ADR-0001, historical approved specifications/P/W/independent reports, `memory_bank/*`, `.agents/roles/*`, `docs/workflow/workspaces.md`, `docs/security/boundaries.md`, hooks, GitHub Actions, Skills and adapters.

## 4. Proposed stages, entry dependencies, and deliverables

| Stage | Entry and dependency | Scoped deliverables | Exit evidence |
| --- | --- | --- | --- |
| S0 — Formal project definition | Exact accepted spec + baseline/Owner decision; candidate P committed in its authorized exceptional path | This frozen candidate P for independent Project Critic; exact decision evidence | Formal Project Critic READY on this P's exact commit/blob/spec; separate Owner exact-P approval. No implementation yet. |
| S1 — Coordinated documentation adoption | S0 completed; actionable committed W independently Stage-Critic READY; verified permissions | The 17 normative source files updated consistently, including ROADMAP and ADR-0002; no active root-P directive for new work | All applicable AC-01…AC-12; documented T01…T22 coverage with genuine positive/negative results or explicitly blocked mandatory items; independent Reviewer READY and Verifier PASS on the same source SHA S. |
| S2 — Delivery and integration review | S1 source assurance PASS; exact source S recorded; H contains only permitted evidence edits | Source S..H diff inventory, published Draft PR, actual applicable CI on H; Owner decision package | Owner separately reviews full diff/CI/assurance and authorizes or refuses merge; post-merge main verification and memory reconciliation separately if later authorized. |

Stage W may scope S1/S2 into one actionable bounded implementation only if dependency and role independence are preserved. No Owner-per-conforming-W gate is invented. Do not call S0 COMPLETE until formal Critic + Owner P gate actually satisfied.

## 5. Acceptance matrix and required proofs

Specification AC-01…AC-12 bind unchanged. Proposal T01…T22 supplies the future executable validation matrix. In particular the formal W **must** expand R2-L01 into explicit negative subcases for: wrong accepted spec commit/path/blob; real spec bytes with acceptance for a different revision; absent or wrong-initiative authenticated intent. Each must produce STOP before affected write, preserving before/after inventory.

Mandatory coverage:

- Distinct project paths and actual concurrent branches; merge/base drift and source conflicts; stable ID collisions.
- Wrong/missing repository/project/P/spec/approval/intent/Project Critic/Owner/Stage Critic/W conformance.
- Material spec/P change vs bounded W change; revised paths/identical copied blob do not transfer approval.
- Original historical root-P paths, hashes and W2 §9 constraints with no mutation to inherited authority.
- Derived repository initialization with optional ROADMAP; no acceptance of source approvals.
- Stale ROADMAP conveys neither false current-state assurance nor execution permission.
- Routine work with no P/W/intent file; new path addressing does not add mandatory routine paperwork.
- Fresh independent native recovery without chat, exact task/P/spec reads and next permitted action; compaction only PASS if actually observed.
- Structural Markdown/link validation, full diff and preserved hashes, same-S independent Reviewer and Verifier, delivery H CI.

Disposable synthetic fixtures are not independent Owner approval, real CI, or actual native compaction. Record exact commands, numeric exit codes, diagnostics, subject identity and before/after inventory. Fail mandatory unavailable verification as BLOCKED, not invented PASS. No permanent test harness is authorized.

## 6. Risks, feasibility, authority and STOPs

**Known feasibility:** baseline Actions run 39768044803 was SUCCESS on `ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb`. This is not a check of new documentation. Formal Project Critic and Stage Critic must assess real planned CI/independent review feasibility. Current branch protection CFG-001 is absent; documentation does not create technical enforcement.

**Risks:** cross-document disagreement, accidentally treating inherited status as authority, self-referential Git SHA fields, false positive from text-only tests, stale source description, plan/spec merge conflicts, and missing genuine Reviewer/Verifier capability. Planned mitigation: exact binding checks, narrow stage W, negative fixtures, no self-commit fields in frozen documents, independent native agents, actual GitHub CI, preservation of known ancestor blobs.

**Stop and escalate:** unexpected branch/main movement or unauthorized path, missing Owner decision, ambiguous exact spec approval, Project Critic REWORK/BLOCKED, absent independent Stage Critic, unsupported required native fresh-session test, CI failure, intersecting writers, material scope/security/architecture shift, inability to preserve legacy obligations or produce evidence. No force push, reset/clean/stash on unrelated work, history rewrite, bypass of hooks, direct main push, merge or deployment.

**Owner decision boundaries:** This P is a proposal until original formal Project Critic READY and Owner acceptance of the **exact reviewed P** plus delegated bounds. A separate final Owner Merge GO remains mandatory. Git permissions and tool permissions never follow from this document.

## 7. Project acceptance and long-term source stability

The outcome is a reviewable, coherent 17-file documentation migration plus source ROADMAP/ADR with no second lifecycle, runnable/observed recovery constraints, meaningful tests and a read-only-independent source review/verification. Proposed integration mode is a normal non-force Draft PR and an eventual Owner-approved **Create a merge commit**, not squash/rebase, preserving P/W/evidence ancestry and accepted identities.

Legacy P/W and historical review reports remain usable by original exact SHA/path/blob; source ROADMAP and memory remain distinct. A future enhancement of the SDLC documentation architecture is a separate new approved initiative/revision, not silent mutation of an already approved P.

Final success requires exact S assurance, actual CI at delivery H and an explicit Owner merge disposition. No separate deployment for this documentation work.

## 8. Review boundary

This file is the **committed candidate Project P**. The Project Critic must review the *actual commit containing this exact file*, the original accepted spec and verified Owner evidence, challenge all mandatory test gates/authority assumptions, and return READY/REWORK/BLOCKED separately. Its report and later Owner exact-P approval are recorded **outside this P**; neither the author nor a copied architecture verdict can self-approve it. After formal approval, derive committed actionable W and seek a distinct independent Stage Critic before modifying the 17 normative files.
