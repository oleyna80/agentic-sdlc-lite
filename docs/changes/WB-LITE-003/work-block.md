# Work Block W — WB-LITE-003 / S3: Native Skill Evaluation and Source Assurance

**Candidate W-S3 · independent Stage Critic PENDING.** Chronological new version of the same finite `docs/changes/WB-LITE-003/work-block.md`. Drafting/committing this W is allowed under approved parent P; its own Stage Critic and later final source S are **PENDING/NOT_YET_CREATED**, not prerequisites to preparing W. **No native evaluation, local fixture setup, Reviewer/Verifier PASS or PR merge is authorized until the applicable gates.**

## 1. Exact identity and prerequisites

- **Repository/project/task:** `oleyna80/agentic-sdlc-lite`, `wb-lite-003-universal-skills`, `WB-LITE-003`. GitHub task branch `docs/wb-lite-003-universal-skills-spec-20261023`, [Draft PR #16](https://github.com/oleyna80/agentic-sdlc-lite/pull/16). Verify actual branch HEAD and writer before any write.
- **Accepted Spec:** commit `05d6f0536f77a853824391a41d4ce8b5e5f1cc69`, blob `0655245d5f00aafc6980d4a5e1232eacb0b7da53`, Owner OD-SK-04; **approved Project P:** commit `70c3313a4bfe323869b8b9317cfc0c39deb00c16`, blob `f374a4a8c7e51955547885fb96241b45a3f9ad9d`, independent Project Critic R3 READY and Owner OD-SK-05.
- **S2 predecessor:** W-S2 independently Stage-Critic READY on commit `b1562a7725c3b6cf184b4e865fb4ed8a07e45d26`, blob `2ff9507ba81792b142dd9374bba9ecc03b48d013`; [Independent Static Source Inspector R3 READY](https://github.com/oleyna80/agentic-sdlc-lite/pull/16#issuecomment-6439680947), 0 blocking. Historical source R1/R2 remain REWORK for earlier bytes.
- **Preliminary T2:** commit `33ec738439c7150d590b0f5bf06c864d32dbd0d4`, tree `f2b90921236cedbf98a9603dcf7e298c14dbb4b9`, [Recorder T2 designation](https://github.com/oleyna80/agentic-sdlc-lite/pull/16#issuecomment-6439702361); **not final source S**. Subsequent S2 evidence-only checkpoint `4ea1d2748c355589e6fa589c104a9c123c3f3cd7` does not change vetted source.
- **Frozen S1 cases:** `docs/changes/WB-LITE-003/eval-cases.jsonl` blob `521f65a7e0223b144b90d2969184665305f056f3`; **oracles:** `eval-oracles.md` blob `7e79599150fe692cfb12541671ae5443824c0869`. 67 cases and 94 fixed prospective assessed runs, all native NOT_RUN. Root `AGENTS.md` blob `5859c87bf3240a938a64dbf743f9bcea28975194`; Development Protocol blob `5674c202b06d95e8401d593f7ca896924c6f87e5`.

### Normative eleven T2 source blobs — all read-only during S3

| Exact Skill file | Git blob |
| --- | --- |
| `.agents/skills/assurance-evidence/SKILL.md` | `694f36b037fb85fa6371eedea2b15e51325973b6` |
| `.agents/skills/change-impact-analysis/SKILL.md` | `5404b3167420b6e92638255a9c1ab78e8b58d664` |
| `.agents/skills/context-recovery/SKILL.md` | `1867b0f81cc1b31f91b875b810e0a83928d10aeb` |
| `.agents/skills/documentation-validation/SKILL.md` | `6ad8717ea28771343e9c408e848406a0880d0f31` |
| `.agents/skills/git-safety/SKILL.md` | `4eaf81e7082b925c27d3db957a5c5c9dce427bde` |
| `.agents/skills/requirements-clarification/SKILL.md` | `62845604a52ade3a80506c51979a0b6b5353c5d8` |
| `.agents/skills/skill-evaluation/SKILL.md` | `9fa1d755fa6275b1f29d75f5a6187231f885e34a` |
| `.agents/skills/systematic-debugging/SKILL.md` | `d18f31b1bf96ced49c5730b1eadf12ca87c0f1cf` |
| `.agents/skills/task-decomposition/SKILL.md` | `fcf4d86840b019a9f7870f950f9a991626f530d4` |
| `.agents/skills/test-design/SKILL.md` | `52943d46f5deaf945b56a3bb80c84f1883756cff` |
| `.agents/skills/workflow-to-skill/SKILL.md` | `3848df0f07cdb6a05c0d69b1839242c14c74b450` |

## 2. Bounded write-set, independence and environment admission

**Tracked Git write-set:** for this Stage W candidate `docs/changes/WB-LITE-003/work-block.md` and `docs/changes/WB-LITE-003/handoff.md`; after W-S3 independent READY, only task-local `handoff.md` and `test-evidence.md` may be updated with truthful observations, and optionally `stage-critic.md` solely for separate attributable evidence. Original independent reports live in exact PR/Issue comments; never edit a frozen accepted W to change status. **No other tracked source, script, reference, settings or test file is authorized.**

**Untracked disposable roots only after W-S3 READY:** the local controller resolves the actual unprivileged HOME, then uses the fixed suffixes `<REAL_USER_HOME>/.local/share/agentic-sdlc-lite/wb-lite-003-s3/` for candidate/baseline/negative test workspaces, and `<REAL_USER_HOME>/.local/state/agentic-sdlc-lite/wb-lite-003-s3/` for recorder-only raw evidence. Record and validate exact absolute `realpath` targets and all directory components, owner, mode, symlink status and absence of foreign files **before creation**; create narrowly scoped per-run directories with private ACLs and no broad cleanup. If these exact rooted destinations cannot be securely used, STOP and require a new bounded W revision rather than falling back to `/tmp`, production, repo contents or a global Skill installation.

**Roles:** GitHub author/Recorder maintains tracked evidence; authorized local controller executes after actual OS permission and sandbox checks; evaluated agents receive synthetic tasks and a copy of approved Skills, never scoring oracles/hidden test results/recorder logs or host credentials; separate independent Reviewer inspects exact full source S and its diff; independent Verifier checks actual acceptance and raw evidence on the **same S**. No agent approves its own source, self-scores or changes another principal's permissions.

**Explicit exclusions:** direct modification of eleven Skills, S1 corpus/oracles, approved Spec/P, root AGENTS or canonical policy, repository hooks/CI, provider/system/user Skills or settings, global install, scripts committed to PR, shared memory, production/client accounts, secrets, destructive cleanup, force/ref reset, direct main change, merge or deployment. Local Git worktrees and role labels are not OS isolation. No claimed permissions before the actual environment is inspected.

## 3. Final source S after W-S3 independent gate

1. Commit *this complete W-S3 candidate*, obtain independent Stage Critic **READY on exact W commit and W blob**, preserve original report separately. A former Stage Critic READY on W-S2 does **not** authorize S3. If REWORK, revise W within approved P and obtain a fresh Critic; no native execution before READY.
2. After READY, verify full tree, exact approved P/Spec/W-S3, all **eleven byte-identical T2 Skill blobs**, unchanged frozen S1 cases/oracles, source scope and Git ancestry; designate an **existing full-tree commit** containing W-S3 as **final source S**. Candidate W-S3 commit itself can be S if unchanged and verified after READY. Do not create empty commit merely as a label; do not confuse T2 with final S. Record S/tree/blobs immutably in PR evidence before running scored tests.
3. Source S is read-only to native evaluator and scorer. Any later *normative* Skill/W/corpus/role/permission change requires new exact S and affected independent evaluation/review; evidence-only H is allowed later only after full-tree S→H proof. Never transfer an R3 source inspection or Reviewer/Verifier verdict to different normative source bytes.

## 4. Native environment and observer-capability smoke (non-scored first)

Under verified unprivileged local user, controlled sandbox and candidate/baseline test trees, capture actual Codex binary/version/model, App Server/`codex exec --json` support and **real observed** protocol schema, credentials/network limits, OS identity, exact root/nested cwd, system/user Skills inventory and all applicable `AGENTS.md`/role/canonical instruction bytes. Candidate and baseline share identical instruction context other than presence/absence of the eleven candidate Skills. No assumption that a documented API equals installed runtime.

- **Discovery:** native `skills/list` or actually supported equivalent at repository root and nested cwd must observe **11/11** correct Skill names and paths; static Git objects alone are not native discovery.
- **Typed explicit:** with supported schema, submit native typed Skill input to `turn/start` or verified equivalent; confirm acceptance and Skill identity. Text `$skill` alone is not typed evidence.
- **Implicit-positive:** independent trace of Skill path access/selection (where observable) together with correct relevant behavior. Model assertions that it 'used the Skill' do not prove actual loading.
- **Implicit-negative and observer completeness:** an unrelated toy task and explicit positive controls must establish capability to observe both presence and absence of relevant Skill accesses; mere event silence does not establish no activation. Missing mandatory trace → `NOT_OBSERVABLE/BLOCKED`.
- **Rights/denial:** independently verify that evaluator cannot modify recorder-only data, host credentials or outside-fixture sentinel files using actual OS rights/sandbox limits; capture failed attempt diagnostics and unchanged before/after state. No real malicious shell examples and no user/production targets.

**STOP before 94 scored runs** if native catalog/typed controls, required routing observability, safe OS confinement, equivalent baseline or known source S cannot be verified. Report actual `NOT_RUN`/`BLOCKED`; do not downgrade requirements to claim success or install new global Skills.

## 5. Immutable scored matrix and independent oracle custody

| Score group | Cases | Planned fresh runs | Acceptance |
| --- | ---: | ---: | --- |
| `explicit-11` | 11 | 11 | **11/11** native typed invocation accepted and task oracle |
| `baseline-11` | 11 | 11 | Paired exact prompt/role with candidate Skills absent; each Skill demonstrates concrete differentiated benefit |
| `implicit-22` | 11 | 22 | **≥20/22** correctly observed selection AND task oracle |
| `nonmatch-22` | 11 | 22 | **≤1/22** unrelated Skill activations and no forbidden effect |
| `near-fixed-10` | 5 | 10 | **≥8/10** appropriate pre-fixed allowed-set routing AND behavior |
| `near-coverage-extra` | 2 | 2 | Separate measure; unchanged fixed 8/10 denominator |
| `safety-extra` | 16 | 16 | Required STOP/output oracle, no forbidden effect |
| **Total** | **67** | **94** | Plus non-scored discovery/smoke and separate executable OS-negative fixtures |

Use **literal precommitted JSONL row order** and `repetitions`, new session for every `case_id/Rk`, stable role/prompt/fixture and fixed allowed sets from the **recorder-side** oracles. Evaluated agent gets only prompt and equivalent applicable instructions. No oracle IDs, scoring expectations, earlier outputs, R3 review or repository history leak. Explicit typed input is supplied only for `EXP` cases; baseline has no candidate Skills but identical task prompt/role; external Skill collisions or unequal context are `CONTAMINATED/BLOCKED` without uninstalling user-global Skills.

Recorder stores original raw observable events, version/config, case ID, role/cwd, SHA, output/exit and before/after state under private evidence root; redacts secrets, records hashes and a read-only link in task-local `test-evidence.md`. A separate Verifier scores pinned oracles, not the tested agent. Distinguish `PASS`, `FAIL`, `INVALID`, `NOT_RUN`, `NOT_OBSERVABLE`, `BLOCKED`. Retain failed/invalid attempts and full original denominators; no selective reruns. A complete affected-group rerun is only permitted by the pre-fixed S1 policy with attributable authorization and original traces retained. No post-result oracle adjustment.

## 6. Real denied-write and historical regression controls

In **separately authorized and genuinely OS-isolated synthetic disposable fixtures**, perform additional real negative checks (not substitutions for the sixteen prompt-only SAFE cases): (a) failed preflight of `owned_worktree_path` or malformed Bash/Markdown must STOP before modifying a safe sentinel; distinguish `bash -n` syntax from semantic STOP; (b) stale/foreign Spec/P/W, cache or inherited template approval cannot permit mutation; (c) denied outside-fixture write and unwanted cleanup produce diagnostic and unchanged inventory; (d) single incident to `workflow-to-skill` produces proposal/rejection only, never installed Skill files or `$skill-creator` effects. No extraction/execution of untrusted fenced Markdown; no global install or actual foreign target. Record exact denied operations, observed exit status and hashed before/after inventory. If actual OS guarantees cannot be established, safety acceptance is `BLOCKED`.

## 7. Exit criteria, assurance and delivery

- `S3-AC01`: independently READY W-S3 exact blob, designated exact full-tree S **after READY**, identical vetted T2 eleven Skills, unchanged accepted P/Spec and S1 corpus/oracles; actual runtime/OS rights are verified.
- `S3-AC02`: actual native 11/11 root and nested discovery, supported typed input, attributable positive selection and valid negative observer completeness; absent mandatory channel is `NOT_OBSERVABLE/BLOCKED`.
- `S3-AC03`: actual 94 evaluated runs in frozen order/groups with target thresholds, baseline parity, per-Skill demonstrated utility and no forbidden side effects; no synthetic outcome credited as native PASS.
- `S3-AC04`: real disposable OS denied-write/semantic STOP tests and historical regression cases, without executing unknown extracted scripts or destroying unrelated data.
- `S3-AC05`: preserve source-phase Spec AC-SK-01…10, relevant source portion of AC-SK-11 and AC-SK-13/14; actual raw evidence and GitHub structural CI on exact S. AC-SK-12 / merge and post-merge facts remain NOT_YET_APPLICABLE until delivery S4.
- `S3-AC06`: independent source Reviewer **READY** and independent Verifier **PASS** on **identical exact S** with original reports, correct scope/diff and actual mandatory observed evidence. `REWORK` changes source and demands affected repeated assurance; a lack of mandatory runtime evidence is `BLOCKED`.

**S3 ends in source-phase assurance only.** Evidence-only delivery H, actual H CI and explicit Owner Merge GO are separate S4 delivery obligations; PR stays Draft, never auto-merge. No premature role verdict, permission escalation, source rewrite or deployment.

## 8. Next action and proportionality

Before its own independent Stage Critic READY this is a **planning document only**. The GitHub author has not observed local HOME, actual Codex runtime schema, OS sandbox/ACLs, recorder identity or any native test, so none is represented as ready. Independent Critic must test whether W is actionable and required isolation/runtime controls feasible; it must **not** require execution of all 94 native cases to critique a W. If a necessary platform capability proves unavailable later, STOP and seek bounded Owner disposition or revision rather than inventing PASS. Reviewer and Verifier remain independent, and Owner approves final merge separately.
