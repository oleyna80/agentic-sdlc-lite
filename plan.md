# Project Plan — ISSUE-009 fail-closed Git history inspection

## 1. Definition and specification

Deliver one narrowly scoped correction of the mandatory introduced-whitespace CI gate for `oleyna80/agentic-sdlc-lite`. Classification: **significant**, because the behavior of a mandatory CI gate changes. The exact functional requirements and mandatory fixture matrix are [specification.md](docs/changes/ISSUE-009/specification.md), SHA-256 `1b4c9900b3e73501b7d201a8a785f7422452e83af1ad2592bab69100a021e4c4`. Owner acceptance of these exact bytes must be recorded separately before formal Project Critic; this planning proposal does not assert that acceptance.

The canonical two-level process is [development.md](docs/workflow/development.md). Relevant existing ADRs remain unchanged. The Owner's stacked architecture disposition is recorded, with its limits, in [owner-decisions.md](docs/changes/ISSUE-009/owner-decisions.md). This P is an independent project revision, not a revision or approval extension of WB-LITE-002.

Baseline: exact `69246782c99423721fdb4a6adefc693ee6f57613`, branch `docs/wb-lite-002-implementation`, draft [PR #11](https://github.com/oleyna80/agentic-sdlc-lite/pull/11), dependent on its eventual Owner-controlled disposition. ISSUE-009 branch: `docs/issue-009-fail-closed-history`; initial PR base is that WB-LITE-002 branch, by explicit Owner exception to the default main-target route. No merging branches merely to obtain green CI.

## 2. Finite scope and proposed delegated actions

**Only normative implementation path:** `.github/workflows/lite-checks.yml`, and within it only the existing `Check introduced whitespace errors` run body. Spec AC-1 through AC-9 and T01 through T14 are binding. Establish actual parentage, verify usable first parent, explicitly STOP on inspection failure/invalid data, propagate checker failures. Prefer the smallest correct Bash solution, selected with shallow/fault evidence; no new runtime/framework or dependencies.

**Exact planning/evidence path envelope**, separate from that source path:

- `plan.md` — this new project P, frozen once reviewed/approved; later substantive revision repeats applicable gates.
- `docs/changes/ISSUE-009/specification.md` — exact specification, acceptance/revision provenance kept separately.
- `docs/changes/ISSUE-009/owner-decisions.md` — actual architecture disposition, later exact specification/P approvals only when given, with hashes and independent report references.
- `docs/changes/ISSUE-009/handoff.md` — own recoverable checkpoint and exact observed SHA/gate/integration mapping.
- `docs/changes/ISSUE-009/project-critic.md`, `work-block.md`, `stage-critic.md`, `review.md`, `verification.md` — separate future independent evidence and W, only at their proper gates.
- `docs/changes/ISSUE-009/fixtures.sh`, `test-evidence.md` — bounded reproducible disposable test harness and redacted results, authored only under W. These are verification artifacts, never an alternative workflow implementation. W must pin the exact fixtures/evidence write-set and report ownership. Historical report versions remain reachable; never relabel an earlier verdict.

No other path is included. Preserve existing WB-LITE-002 files, reports, frozen W2 and approval records. Do not alter checkout depth/version, other CI steps, triggers, job permissions, hooks, security/platform settings, shared memory or canonical lifecycle. Such changes require a separate Owner disposition and affected gates.

Upon exact P approval, proposed delegated actions are: prepare/commit one conforming W; after Stage Critic READY allow a bounded Coder to implement the single body and harness; run disposable fixtures, ordinary task commits and non-force publication to only the ISSUE-009 branch, a separate draft PR to the explicit stacked base, applicable CI and bounded REWORK/assurance loops. These are proposals for Owner approval, not current implementation/publication authority. Actual OS/sandbox/platform permissions must permit every destination; shared Git refs require actual write permission. No hook bypass, force push or destructive cleanup.

## 3. One implementation stage

| Stage | Entry and dependencies | Outputs | Acceptance |
| --- | --- | --- | --- |
| 1 — Correct and independently assure whitespace gate | Exact spec accepted; committed P independently Project-Critic READY then separately Owner-approved; committed bounded W independently Stage-Critic READY and conforming; safe task worktree, real permissions and mandatory CI feasibility verified | Minimum workflow-body correction, extracted-body fixtures, exact source S, separate Reviewer/Verifier reports, exact delivery H and stacked PR evidence | AC-1…AC-9, T01…T14 and Bash syntax PASS; full base-to-S scope inspection; Reviewer READY and Verifier PASS on same S; evidence-only S..H mapping if needed; actual applicable GitHub Actions PASS on H |

Before Coder, W names exact approved parent P/spec/Owner evidence, source write-set and separate test/report paths, matrix/setup commands, input commits, role ownership, allowed local choices and STOP/rollback rules. No W is actionable before parent approval. Project Critic must challenge gate feasibility with known defects; Stage Critic must repeat affected feasibility/conformance checks.

## 4. Acceptance, integration and Owner stops

A delivery-ready stage requires all specified fixtures and independent gates on exact S, full permitted-body scope confirmation, current stacked-base drift assessment, authorized PR and actual successful applicable Actions on exact H. Queued, synthetic, failed or unobserved CI is not PASS. Reviewer/Verifier findings require new S and affected assurance. Evidence-only H requires actual `git diff S..H` proving source/spec/tests/gates unchanged.

Project acceptance and final merge remain Owner-controlled. No deployment/release is part of this project. Initially the separate PR targets `docs/wb-lite-002-implementation`; no change to PR #11, its source or historical assurance. Before any later retarget/integration to main, verify live main/PR refs, ancestry, actual integration tree and full diff; preserve WB-LITE-002 old verdicts without transferring them. A changed source/integration tree requires affected new assurance and current-head CI. Any content conflict involving frozen artifacts, especially root `plan.md`, requires explicit bounded resolution/Owner disposition before mutation. Do not choose one project's approval as authorization for the other's content.

Owner stops: exact specification acceptance; exact Project-Critic-READY P approval; material requirements/scope/architecture deviation; unavailable mandatory assurance/CI or permission; checkout/workflow scope expansion; final acceptance/merge and any privileged/sensitive external action. No new Owner-per-W approval for a conforming W under approved P. Planning completion is not implementation readiness.

## 5. Risks and recovery

S10 count-based inspection cannot distinguish shallow truncation from a true root. Parent metadata extraction can also be wrong if traversal hides parents, invalid output is accepted or Bash masks status; execute the whole fixture matrix, not merely clean cases. A present parent commit can still lack a usable tree; the checker must fail and propagate it. Realistic depth-2 linear and merge checkout coverage is mandatory; if depth must change, STOP with exact reason and seek scope disposition first.

Known baseline whitespace defect is corrected only after this project's gates. Other mandatory gate failures are reported honestly; unrelated remediation needs scope approval. Missing independent capability or actual CI is BLOCKED, never self-READY. Actual separate worktrees share objects/refs and do not establish OS isolation.

Preserve predecessor P `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df`, plan blob `fcfda1f6dfa011a5688c5f04111d918d6bbce707`, W2 `63ed889d8991a5d2187bb82709f4cbb5773db1cc` / blob `19beb072f321a7c9730ea86630112ce8c1b90dbb`, S12 `5e42d2b1239f26962ee5f5942cd318997b51501c`, and base `69246782c99423721fdb4a6adefc693ee6f57613` as reachable ancestry. Old Option A and [Issue #9](https://github.com/oleyna80/agentic-sdlc-lite/issues/9) remain historical facts. New root P exists only on the isolated stacked branch; it does not amend old P at its exact commit.

Checkpoint progress/decisions/verdicts outside frozen P/W. Preserve unrelated work and original independent reports. Rollback of an implemented correction, if needed, is a reviewed task-branch revert with renewed affected checks and separate Owner integration; no reset, rewrite or automatic rollback of main.

## 6. Review boundary

Owner acceptance of exact spec precedes formal independent Project Critic on committed P/spec blobs. Project Critic READY precedes separate Owner approval of exact P; then committed conforming W and independent Stage Critic READY precede Coder. This document records the complete proposal and no future approval, status, W/S/H SHA or verdict. Later evidence belongs in task-local records.
