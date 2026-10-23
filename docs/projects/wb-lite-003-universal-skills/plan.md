# Candidate Project Plan P — WB-LITE-003 Universal Agent Skills

**Status:** CANDIDATE — independent formal Project Critic and separate Owner exact-P approval PENDING. This committed proposal never self-approves or authorizes Skill source writes.
**Classification:** SIGNIFICANT (native agent instruction/discovery and assurance).
**Repository:** `oleyna80/agentic-sdlc-lite`; **stable unique project ID:** `wb-lite-003-universal-skills`.

## 1. Owner-accepted definition and exact binding

**Objective:** deliver eleven portable, selective Codex-native Skills that improve repeatable agent techniques while preserving the sole Development Protocol, exact independent assurance, Owner permissions, safety and Git-backed recovery. The process is the product; the harness executes it.

**Verified initiative/Owner provenance:** [Issue #8](https://github.com/oleyna80/agentic-sdlc-lite/issues/8), [independent concept Critic R1 REWORK](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6366391861), [Owner architecture decisions OD-SK-01…03](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6367749540), and [OD-SK-04 Owner exact Spec acceptance](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6368109911). R1 REWORK is historical and was **not** relabeled READY. Original Owner “утверждаю” accepted the exact Spec only; it does not pre-approve this P.

**Exact accepted Spec:**
- Commit: `05d6f0536f77a853824391a41d4ce8b5e5f1cc69`; tree `db1419bfa598cb3a08afda0bbc0b696112c90d3f`.
- Path: [`docs/projects/wb-lite-003-universal-skills/spec.md`](spec.md).
- Git blob: `0655245d5f00aafc6980d4a5e1232eacb0b7da53`.
- Attributable Owner acceptance: [Issue #8 OD-SK-04](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6368109911), transcribed from chat without asserting a personal GitHub signature.
- Binding: Spec AC-SK-01…14, eleven canonical skills, optional two navigation files, per-skill source/provenance constraints, pre-fixed eval oracle and quantitative native thresholds. No additional Skill source paths without a new material Owner decision and affected review.

**Baseline and source:** verified `main` `cea3ddf11a8521d715663ff1bfabf3885d93543d` (tree `5d732e20b02a1c8b4eea206dc99e1a38c04df61f`). Current [Draft PR #16](https://github.com/oleyna80/agentic-sdlc-lite/pull/16) carries this accepted Spec at the original commit; subsequent P/evidence commits must preserve Spec blob. Current refs can drift and must be checked again before writes.

**Canonical authority:** [AGENTS.md](../../../AGENTS.md), [development](../../workflow/development.md), [memory](../../workflow/memory.md), [workspaces](../../workflow/workspaces.md), [security](../../security/boundaries.md), [ADR-0001](../../decisions/0001-lite-foundation.md) and [ADR-0002](../../decisions/0002-project-documentation-model.md). Existing root historical `plan.md` and previous exact accepted P/W/evidence remain untouched. Skills are optional techniques **below** these contracts, not lifecycle or permission grants.

## 2. Design decisions, interfaces and threat model

- **Composition:** 11 KEEP from OD-SK-01. No `subagent-mission-brief` skill (the existing mission template/navigation supplies its function); `technical-research` deferred. Do **not** change `docs/templates/subagent-mission.md` as part of that decision.
- **Creator:** `workflow-to-skill` v1 qualifies repeated procedures and outputs a non-executable *proposal + eval plan*. It cannot invoke system `$skill-creator`, create/install/publish new Skills or write canonical paths. Any later creator-mediated authoring requires its own separate authorized W, not an implied escalation here.
- **Codex-only proof:** minimal frontmatter `name` and discriminative `description`, on-demand Skill content, explicit/implicit positive, no-match and near-match cases. Treat descriptions as possible conflicting routing candidates; do not invent a zero-context cost guarantee or treat model self-report as a loading trace.
- **Authoring vs evaluation:** Skill content/scripts are untrusted before inspection. Author in bounded context away from live evaluator; inspect source and static/shell safety before native activation. Run only in explicitly permitted disposable Codex evaluation target, with separately pre-approved absolute paths and verified actual sandbox/OS rights. A Git worktree shares Git refs and is **not** OS isolation.
- **Provenance:** adapt Lite-native technique from pinned prior repositories only after review of licence/notice requirements. Reject copied force-cleanup commands, automatic integrated-memory writes, changes to frozen accepted Spec/P/W, foreign verdicts/lifecycles, remote installs and provider credentials. Use original text rather than unclear licence reuse.
- **Independent roles:** Critic/Reviewer/Verifier remain separate actual native missions and cannot edit normative source under a read-only assignment. No creator/skill config changes authorize file writes. Native Claude adapters/parity and downstream Issue #10 are NOT_TESTED and outside this project.

## 3. Finite implementation, navigation, and evidence write sets

**Exactly eleven candidate normative Skill source files** (no wildcard permission):

1. `.agents/skills/requirements-clarification/SKILL.md`
2. `.agents/skills/task-decomposition/SKILL.md`
3. `.agents/skills/git-safety/SKILL.md`
4. `.agents/skills/context-recovery/SKILL.md`
5. `.agents/skills/systematic-debugging/SKILL.md`
6. `.agents/skills/assurance-evidence/SKILL.md`
7. `.agents/skills/documentation-validation/SKILL.md`
8. `.agents/skills/workflow-to-skill/SKILL.md`
9. `.agents/skills/skill-evaluation/SKILL.md`
10. `.agents/skills/change-impact-analysis/SKILL.md`
11. `.agents/skills/test-design/SKILL.md`

**Conditional navigation-only paths**, only if the future approved W demonstrates need: `PROJECT_MAP.md` and `.agents/roles/README.md`. They may link only; they cannot introduce new policy/gates. `docs/templates/subagent-mission.md` remains unchanged. No `.agents/**` blanket write, `agents/openai.yaml`, new `scripts/` or `references/`, provider adapter, global Skill install, setup or auto-installer.

**Finite planning/evidence paths for separately scoped W/roles:**
- `docs/projects/wb-lite-003-universal-skills/spec.md` (existing frozen exact accepted Spec, read-only), `docs/projects/wb-lite-003-universal-skills/plan.md` (this candidate P, byte-frozen once independently reviewed/approved).
- `docs/changes/WB-LITE-003/owner-decisions.md` (attributable Owner decisions), `docs/changes/WB-LITE-003/handoff.md` (mutable branch-local checkpoint), `docs/changes/WB-LITE-003/project-critic.md` (original formal independent P review).
- `docs/changes/WB-LITE-003/work-block.md` (first candidate stage W), `docs/changes/WB-LITE-003/stage-critic.md` (independent stage verdict); additional future stage contracts require **distinct explicitly approved** paths and preservation of prior frozen W bytes.
- `docs/changes/WB-LITE-003/eval-cases.jsonl`, `docs/changes/WB-LITE-003/eval-oracles.md` (fixed before scored run), `docs/changes/WB-LITE-003/test-evidence.md`, `docs/changes/WB-LITE-003/review.md`, `docs/changes/WB-LITE-003/verification.md`, `docs/changes/WB-LITE-003/closeout.md`.

**One writer per overlapping path.** GitHub-connected Orchestrator is the current sole repo recorder of planning and task-local evidence. Future Coder has only W-owned Skill paths; independent Critic/Reviewer/Verifier act read-only on reviewed source unless a later explicit scope permits disposable fixture/evidence writes. Physical disposable paths, ownership and safe cleanup must be enumerated in future W before creation; no open `/tmp/*` authority. Skill scripts or additional evidence files are not automatically authorized by this P.

**Excluded:** `AGENTS.md`, `docs/workflow/*`, `docs/security/*`, `docs/decisions/*`, `docs/templates/*`, `memory_bank/*`, historical `plan.md`/Spec/P/W/report subjects, `.claude/*`, CI/hooks/GitHub settings/rulesets, provider-global installations, source rewrites, direct `main` push, force push, deletion of other worktrees, merge, deployment, Issue #10 pilot and arbitrary external effects.

## 4. Ordered stages and independently gated deliverables

| Stage | Entry (no forward inference) | Outputs | Evidence / exit |
| --- | --- | --- | --- |
| **P0 — formal project planning (current)** | Exact Spec accepted under OD-SK-04; P authored on branch with correct repository/base | This complete candidate P + decision/handoff evidence | Independent **formal Project Critic READY on exact P commit/path/blob and accepted Spec**, then **separate Owner exact-P acceptance and delegated bounds**. REWORK requires a corrected new P and fresh Critic |
| **S1 — pre-fix evaluation oracle** | Owner-approved P + separately committed W-S1 and independent Stage Critic READY; verified destinations | Exact `eval-cases.jsonl`, `eval-oracles.md` and bounded safe fixture description; no scored runs | Case selection/negative controls/oracles fixed at attributable Git revision before testing; if changes, preserve originals and re-run affected cases |
| **S2 — skill authoring/static validation** | Approved P, actionable W-S2 + independent Stage Critic READY, S1 fixed corpus and inspected authoring target | Exact eleven new Skills + optional W-approved navigation links, pinned licence provenance, static validation | All 11 metadata valid/roles/triggers distinct, no scripts/foreign governance, no automatic runnable-document execution; separate native evaluation candidate thereafter |
| **S3 — native evaluation + assurance** | S2 authored candidate, S1 oracle unchanged; approved stage scope and separate permitted native environment | Actual Codex discovery/selection/loading-as-observable/behavior, no-skill baseline, permission-negative fixtures, independent reports on source candidate **S** | All mandatory accepted AC-SK-01…14, quantitative targets, original independent **Reviewer READY** and **Verifier PASS on identical exact S**; missing mandatory real evidence = NOT_OBSERVABLE/BLOCKED, never fictional PASS |
| **S4 — delivery/integration** | Same-S assurance READY/PASS, evidence-only candidate delivery H, complete source diff | Exact S→H mapping, original reports/evidence, applicable CI at exact H and Owner decision package | Actual H Actions SUCCESS, **separate Owner Merge GO**, normal merge commit preferred over squash/rebase for Git-subject preservation, post-merge main/CI evidence; shared memory updated only under separate Owner-approved action |

S1, S2 and S3 may use distinct independently reviewed W revisions; each stage W must bind approved exact P/Spec, exact finite write and evidence paths, real allowed worktree and negative STOP tests. No Owner-per-W approval for W fully conforming to approved P. Significant change to Spec, P, write-set, security, evaluation thresholds or permissions requires affected Owner/Critic gate. A failed source/metadata case may be corrected within authorized W but creates a **new S** and affected review; never retrofit approved W or claim prior assurance for a changed subject.

## 5. Exact acceptance metrics, real test feasibility, and CI

**Spec AC-SK-01…14 remain immutable.** Key stage allocation: S2 covers 11 exact Skill files and metadata (AC-01/02/10); S3 tests `workflow-to-skill` no-write (AC-03), native discovery/loading (AC-04/06), fixed matched/mismatched corpus and no-skill baseline (AC-05), role/STOP/sandbox negatives (AC-07), unsafe Bash/Markdown examples and corrected controls (AC-08), wrong P/stale handoff/no-cache authority (AC-09), no mandatory routine gates or fake Claude parity (AC-13/14); S3/S4 independently evidence S and H/CI (AC-11/12).

**Owner-accepted quantitative constraints from the exact Spec:**
- Native discovery: **11/11** Skills from repository root and **11/11** from nested cwd.
- Explicit matching tests: **11/11**; implicit matching selection/observable outcome **≥20/22**.
- Irrelevant activation: **≤1/22** unrelated-case runs; competing near-match **≥8/10** from five cases × two runs.
- Same task without candidate library: at least **11** comparable baseline cases, with per-skill differentiated utility evidence; zero forbidden mutations in *each* critical negative fixture.
- Description metadata: **≤240 Unicode code points each**, **≤2,640 combined**; these character counts are **not** tokens or runtime context measurement.
- Pre-fix oracle and case count/denominators before measured runs; do not alter thresholds after observing outcomes. Record available system/user skills, Codex version/config, actual observed commands/results/exit codes and absences of instrumentation honestly.

**Hard feasibility problem for independent Critic:** existing [Lite Checks](../../../.github/workflows/lite-checks.yml) verify static/Git history but do **not** test native Codex. PR #16 [Actions 39974800073](https://github.com/oleyna80/agentic-sdlc-lite/actions/runs/39974800073) was SUCCESS on exact *Spec* revision only. Project Critic must determine whether currently available local Codex supports observable root/nested discovery and matching/implicit routing and whether truly separate evaluator/permitted disposable target can execute scored cases. If mandatory internal loading is not observable, distinguish observable surfaced skills and behavior from unsupported internal event, escalate where the Spec requires it, do not convert self-report into PASS or invent instrumentation. Branch protection CFG-001 remains absent; Owner merge gate is still mandatory.

**Required negative controls:**
- `documentation-validation` recognizes undefined `owned_worktree_path`, an unclosed Markdown fence, a Git mutation lacking verified destination, and a syntactically valid Bash guard that does **not** STOP before mutation; corrected control accepted.
- `context-recovery` rejects wrong/foreign approved P/Spec, stale handoff, changed HEAD, `/tmp` cache and inherited template approvals **before** any write.
- `workflow-to-skill` does not create source, invoke creator or promote one-off requests.
- Independent read-only Reviewer/Verifier, role permission, collision and no-match cases cannot edit authorized source or provider settings; any forbidden effect is FAIL even if selection targets pass.

## 6. Risks, STOPs, recovery and revision policy

**Stop** on missing original Owner acceptance, P critic REWORK/BLOCKED, changed approved P/Spec blob, unclear write-set/parallel writers, unsafe Skill provenance, inadequate OS restrictions, unavailable required native instrumentation, after-the-fact test oracle edits, CI failure, source drift or failed critical no-write case. Preserve authentic original reports, before/after inventories, raw diagnostics and exact revisions; avoid fake OS-isolation claims or synthetic PASS. Do not run untrusted documentation examples by default.

**Recovery:** identify authorized WB-LITE-003 task and current W (when later approved), verify `oleyna80/agentic-sdlc-lite` identity and actual Git/branch/worktree/HEAD, exact accepted Spec `05d6f0536f77a853824391a41d4ce8b5e5f1cc69:docs/projects/wb-lite-003-universal-skills/spec.md` blob `0655245d5f00aafc6980d4a5e1232eacb0b7da53` + [Owner OD-SK-04](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6368109911), and exact **approved** P commit/blob with its real independent Critic READY and separate Owner approval (currently absent); then independently Stage-READY W and actual permissions. No scan for latest P, historical root `plan.md`, copied matching blob or ROADMAP substitute.

**Rollback and concurrency:** corrections use non-force reviewable branch commits; approved Spec/P/W revisions remain byte-frozen at their original subjects. Preserve prior reports, unique histories and unrelated worktrees; fixture deletion needs proven safe owned target. No direct main mutation or automatic post-merge shared memory. A new stage with overlapping paths must have one explicit writer.

## 7. Project Critic subject, Owner gates and integration

This P is a **complete candidate**, not a future fill-in-the-blanks template. Independent formal Project Critic must inspect **exact commit/path/blob**, authenticated Spec acceptance and compatibility with root/canonical protocols, detailed stages/actual permission and test feasibility, finite scope and source/evidence writers, foreseeable CI/negative blockers, and whether introducing eleven Skills causes overlapping authority or an unauthorized creator path. Return **READY / REWORK / BLOCKED** in an independent report *outside this P*. If READY, present **separate exact-P Owner approval**; only then commit Stage W and obtain Stage Critic READY before Coder. Project Critic approval is not merge GO.

No material P/S/W revision without affected formal gate; no changes to `docs/projects/wb-lite-003-universal-skills/spec.md` after its accepted commit. Exact S source Reviewer and Verifier must remain independent and check same SHA; final Owner PR merge decision is separate from Project P acceptance. Proposed integration is **normal merge commit** only after actual H CI and all necessary Owner gates. No deployment.
