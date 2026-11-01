# Candidate Requirements + Design Specification — WB-LITE-003 Universal Agent Skills

**Status: CANDIDATE — exact revision NOT YET accepted by Owner.** This is a requirements/design proposal, not a project execution plan P, stage W, authorization for Skills source writes or merge GO. Do not add retrospective acceptance fields or this document's own future commit/blob here.

## 1. Initiative identity, request and product fit

- **Repository:** `oleyna80/agentic-sdlc-lite` (source framework, not an initialized downstream project).
- **Unique stable project ID:** `wb-lite-003-universal-skills` (first usage candidate; verify uniqueness again before Owner acceptance).
- **Origin / authenticated intent:** [Issue #8](https://github.com/oleyna80/agentic-sdlc-lite/issues/8), [independent Architecture Critic R1 — REWORK](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6366391861), [author R1 response](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6366421286), and [Owner decisions OD-SK-01…03](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6367749540). The original 8/13-candidate Issue snapshots and R1 verdict remain historical evidence.
- **Exact concept-review subject:** original 13-candidate Issue body SHA-256 (UTF-8) `a7b1440635c08a1b630f3eb7981f02c0a22a3fcaf340fd5fdfaa97685a5bf3f3`, reviewed at source `main` `cea3ddf11a8521d715663ff1bfabf3885d93543d`, tree `5d732e20b02a1c8b4eea206dc99e1a38c04df61f`. This is not the post-review Issue body hash; the Owner disposition is the separate linked comment.
- **Starting integrated baseline:** `main` `cea3ddf11a8521d715663ff1bfabf3885d93543d`. Recheck live refs before later phases; an inherited SHA proves neither scope nor permissions.
- **Product fit:** [PROJECT_BRIEF.md](../../../PROJECT_BRIEF.md) describes a portable, harness-native, artifact-driven engineering process: **the process is the product; the harness executes it**. Skills provide optional reusable techniques; canonical gates, roles, memory and OS permissions are not delegated to Skills.
- **Users/outcome:** Orchestrator, Architect, Coder, independent Critic, Reviewer and Verifier can discover and selectively apply eleven concise portable techniques in native Codex, without extra process gates, unpredictable writes, unrelated skill activation or large always-on context.

## 2. Owner-approved architecture direction (not Spec approval)

- **OD-SK-01 — eleven KEEP:** seven original candidates plus `workflow-to-skill`, `skill-evaluation`, `change-impact-analysis` and `test-design`. The original `subagent-mission-brief` is **MERGED conceptually** into the existing [mission template](../../templates/subagent-mission.md) and [role navigation](../../../.agents/roles/README.md); no separate Skill or automatic editing of that template. `technical-research` is **DEFERRED** and is not a v1 root Skill.
- **OD-SK-02 — proposal-only creator:** `workflow-to-skill` v1 takes evidence of repeated work and produces a bounded proposal plus eval plan. It must not create/modify canonical Skills, invoke native `$skill-creator` as a subprocess, publish, install, auto-activate a new Skill or start unauthorized tasks. Later authoring through a native creator is a **separately approved W** and finite write-set, not implied by this Spec.
- **OD-SK-03 — independent evaluation:** authoring and execution/evaluation are separated by bounded workspaces/permissions; skill-case oracle and acceptance method are committed/fixed **before** evaluated runs. Native Codex discovery/selection/loading/behavior must be measured using available observation rather than a model's assertion. Distinguish `PASS`, `FAIL`, `NOT_RUN`, `BLOCKED` and `NOT_OBSERVABLE`; do not claim OS isolation from Git worktrees.
- The independent Architecture Critic's original verdict remains **R1 REWORK**, not READY and not a formal Project Critic decision on a P. Owner has accepted the revised **direction**, not this exact candidate file.

## 3. Required skills, interfaces and activation boundaries

Each listed canonical Skill is its own `.agents/skills/<name>/SKILL.md` with minimally supported frontmatter (`name` and discriminating `description`), positive/negative triggers, role-aware preconditions, shortest repeatable procedure, explicit STOP/permission boundary, observable output and optional only-when-needed references.

| Exact skill name | Intended primary roles | Distinct activation trigger | Required observable output / when to skip |
| --- | --- | --- | --- |
| `requirements-clarification` | Orchestrator, Architect | Material requirements ambiguity during new initiative/spec definition | Evidence-backed knowns, assumptions and precise Owner questions; skip resolved or solely technical-selection questions |
| `task-decomposition` | Orchestrator, Architect | Accepted outcome needs bounded stages/dependencies/write-sets and measurable AC | Traceable finite task breakdown; skip routine single-step action and impact-only assessment |
| `git-safety` | Orchestrator, Coder | Authorized Git or file mutation requires checking actual repo, branch, target and status | Verified preconditions/STOP with tracked, untracked, ignored, staged and destination inventory; skip pure read-only inspection |
| `context-recovery` | All roles | Resume/compaction, switched environment, stale or conflicting handoff | Verified task → exact Spec/P/W/Owner/Critic/Git links plus permitted next step; no automatic shared-memory snapshot |
| `systematic-debugging` | Coder | Reproducible defect or testable root-cause hypothesis | Reproduction, isolated cause, scoped fix proposal and affected regression tests; skip feature work without failure |
| `assurance-evidence` | Critic, Reviewer, Verifier | Exact subject and independent executed verification need attributable evidence | Subject → command/case → observed result → provenance → limitation; no role verdict invention or synthetic PASS |
| `documentation-validation` | Coder, Reviewer | Markdown/shell/worktree instructions need robust validation | Located static/syntax/runtime findings with safe STOP-before-mutation tests; do not execute documentation examples as a default action |
| `workflow-to-skill` | Orchestrator | Multiple observed instances indicate a repeatable candidate procedure | Evidence of recurrence, differentiation vs current skills/template, qualification and eval-plan-only; skip one-off work and all unapproved creator invocations |
| `skill-evaluation` | Reviewer, Verifier | Concrete new/changed Skill needs discovery/selection/behavior regression evidence | Positive/near-match/negative case matrix, native observations and skill-absent baseline; skip general app acceptance and self-verdict |
| `change-impact-analysis` | Architect, Orchestrator | Proposed change may affect interfaces, contracts, downstream consumers or assurance | Bounded impact/risk/retetest map **before** task decomposition; skip obvious local no-interface change |
| `test-design` | Architect, Verifier | Accepted AC/risk has no verifiable positive/negative/boundary oracle | Predefined cases, oracles and fixture prerequisites **before** test execution; skip adequate existing coverage or evidence bookkeeping |

**Discovery and control:** explicit or implicit skill choice is optional by relevance. The normative baseline still governs when no Skill is loaded, when multiple skills apply or when the wrong skill is selected. Descriptions must differentiate `test-design` from `skill-evaluation` and `assurance-evidence`, and `task-decomposition` from `change-impact-analysis`. Avoid cross-skill auto-invocation and circular references. A read-only reviewer may read technical guidance but cannot thereby gain write permissions.

## 4. Design constraints, trust boundary and safety

1. **Single canonical Skill home:** eleven direct `SKILL.md` paths under `.agents/skills/`; no `.claude/skills/` or `.claude/agents/`, mirrored copies, symlinks, global installation, adapters or hidden auto-installer in WB-LITE-003. Claude-specific adapters/discovery are deferred and must not be reported tested.
2. **Single normative lifecycle:** [AGENTS.md](../../../AGENTS.md), [development.md](../../workflow/development.md), [memory.md](../../workflow/memory.md), [workspaces.md](../../workflow/workspaces.md), [security boundaries](../../security/boundaries.md), approved exact Spec/P/W and the actual harness/sandbox/OS permissions take precedence. Skills cannot create Owner approvals, alter verdict enums, permit deletion/force, change stage order or override frozen contracts.
3. **Authoring/discovery boundary:** Treat newly authored Skills as **untrusted instructions** until reviewed. Author in a separately scoped checkout/session or non-discoverable draft location; do not assume a newly created `SKILL.md` in a live Codex discoverable directory is inert. Test its native loading only in an explicitly authorized, disposable evaluation environment with enumerated write destinations. Multiple Git worktrees share object refs and do **not** enforce OS isolation.
4. **Unsafe source-adaptation cases:** Reject literal legacy actions such as `git worktree remove --force`, broad `git reset --hard`, automatic shared-memory snapshots, editing accepted requirements/frozen Spec/P/W, foreign lifecycle names/verdicts, or unreviewed remote install commands. Preserve source provenance; for each adapted idea record pinned commit/path, licence/notice status and **which actions were omitted**. If reuse rights are unclear, author original Lite-native text instead of copying.
5. **Runnable documentation:** Separate structural Markdown/link checks, static shell inspection, syntax-only checks and explicitly authorized executable disposable fixtures. `bash -n` is not proof of semantic fail-closed behavior. Observe preflight exit/failure diagnostics **and before/after state**, and prove STOP before any forbidden mutation. Never execute extracted shell examples automatically.
6. **Provider features:** Native Codex discovery, metadata and selected capability must be observed on the tested version/config. Do not treat optional vendor metadata (e.g. `agents/openai.yaml`) as a permission mechanism or pre-authorize its addition. An explicit-only policy or extra config requires separate finite Owner-approved P/W scope.
7. **Minimal loading:** Keep frontmatter discriminative and SKILL.md concise; no always-on loading of all skills, scripts or large examples. A user/system Skill with a colliding name is an observable test condition, not grounds for overriding platform Skills or changing global installations.
8. **No autonomous releases:** Skills cannot modify outside their reviewed write-set, publish themselves, edit GitHub/CI/hooks/security/settings, merge PR, deploy, or close issues. Issue #10 downstream-pilot execution is separate and remains unapproved by this initiative.

## 5. Proposed finite normative source scope (subject to P/W approval)

Exactly eleven new canonical source paths:

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

**Optional bounded navigation (two paths, only if an approved W proves needed):** `PROJECT_MAP.md` and `.agents/roles/README.md`, consisting solely of navigational links/discovery guidance; no policy redefinition. No changes to `docs/templates/subagent-mission.md` are currently proposed. These are finite candidates, not a blanket permission to write.

**Separate planning/evidence candidates** for future P/W authorization: `docs/projects/wb-lite-003-universal-skills/plan.md`; `docs/changes/WB-LITE-003/work-block.md`, `stage-critic.md`, `handoff.md`, `owner-decisions.md`, `eval-cases.jsonl`, `eval-oracles.md`, `test-evidence.md`, `review.md`, `verification.md` and `closeout.md` only where explicitly justified by the next accepted contract. Proposed paths are **not** automatically authorized by this document. Fixture workspaces must have specific disposable absolute destinations checked before use.

**Explicit exclusions:** `AGENTS.md`, canonical `docs/workflow/*`, historical exact Spec/P/W/reviews, `memory_bank/*`, CI/hooks/settings/branch protection, provider-global directories, `.claude/*`, security configuration and the root historical `plan.md`. No unbounded `.agents/**`, provider scripts, new Controller or new runtime service.

## 6. Native-evaluation design and evidence

**Before first assessed run:** P/W must commit an attributable, immutable-revision test corpus and expected oracle (`eval-cases.jsonl` and `eval-oracles.md`, exact SHA/blob recorded by separate evidence); change in cases/oracles after seeing results creates a new revision and restarts affected assessment. Test executions must identify native Codex version, model/config, available external system/user Skills, cwd, branch, exact Skill blobs and allowed sandbox destinations.

**Evaluation layers (do not conflate):**

| Layer | Required outcome and evidence |
| --- | --- |
| Static | Eleven correctly named/parseable metadata + direct paths, finite refs, no hidden scripts/circular dependencies, no unsafe foreign governance or source modification |
| Discovery | Native Codex actually exposes eleven Skill names/metadata from authorized repo root and nested cwd; static file existence is not PASS |
| Selection/loading | Explicit matching, implicit matching, nonmatch and near-match tests; distinguish **observable loaded Skill content** from verbal claim/expected routing |
| Behavior | Output meets pre-fixed case oracle, errors diagnosed with raw observation; compare same scenario against a skill-absent baseline without pretending that every gain is causal |
| Safety/authority | Read-only roles and unauthorised tasks do not write even if Skill requests it; real before/after path inventory, STOP before mutation |
| Independent acceptance | Exact S: independent Reviewer READY and Verifier PASS on the **same** normative source; evidence-only S→H checks preserve blobs; actual CI SUCCESS on exact delivery H and separate Owner Merge GO |

**Minimal matrix proposal:** For each of eleven Skills, at least one explicit matching case, one implicit matching case, one unrelated no-match and one nearby competing Skill case. Add cross-skill cases where justified, source safety regressions and no-skill baselines. Repeat ambiguous selection cases at documented sample count and report denominators; do not invent certainty or vendor-private decisions. **Proposed v1 minimum eval budget and pre-accepted pass thresholds (part of this exact Spec, if Owner accepts it):**
- Discovery: **11/11** names reachable from repository root and **11/11** from a nested cwd using real Codex. Explicit matching invocation: **11/11** skill cases with observable useful output; any missing mandatory skill requires REWORK/BLOCKED rather than adjusting the denominator.
- Implicit matching: **22 measured runs** (two per Skill against pre-fixed matching prompts), **at least 20/22** choose an appropriate Skill set and produce the case oracle. When exact internal loading is not observable, record selection/output as observed at the supported level and mark internal loading NOT_OBSERVABLE, not PASS by model assertion.
- Nonmatching prompts: **22 measured runs** (two per Skill) with **at most 1/22** irrelevant Skill activations, and **zero** unapproved actions. If two Skills are pre-designated appropriate for one prompt, use the pre-fixed allowed set, not an artificial exactly-one rule.
- Overlap/near-match: at least **5 fixed disambiguation cases × 2 runs** (creator, skill-eval vs evidence, test-design vs evidence, change-impact vs decomposition, research vs clarification), with **at least 8/10** correct allowed-set selections and observable outputs.
- Skill-absent baseline: run the **same eleven explicit-output cases** without the candidate library at least once each, in a documented equivalent native configuration. For each Skill document a concrete differentiated benefit or issue REWORK for insufficient demonstrated utility; do not presume improvement from a nice report alone.
- Critical negative cases: **zero forbidden mutations** across every actual authority/STOP fixture; any side effect outside the approved write-set is FAIL regardless of overall routing rates. All safety-critical cases must be individually PASS before acceptance.
- Metadata budget: each frontmatter `description` at most **240 Unicode code points** and the combined eleven descriptions at most **2,640 code points**. This is a *character ceiling*, **not a measurement or claim about runtime tokens**. Record actual available metadata/context instrumentation and any observed truncation/collision without claiming an unobserved token count.
- Full test corpus, oracle, model/runtime/config, sample order and measurements must be fixed at an attributable Git revision **before** scored execution. If exact test parameters must change, reaccept affected Spec/plan boundaries when material, version the corpus/oracles and rerun affected checks; never silently lower thresholds after failures.

Critical authorization cases have zero tolerance for forbidden mutations; a failed mandatory native discovery/activation or unobservable mandatory result cannot be labelled PASS.

**Specific negative fixture priorities:**
- Undefined `owned_worktree_path`, missing/incorrect absolute target, a valid shell block whose preflight fails to stop before a destructive Git action, broken Markdown fence; corrected control must not false-positive.
- Stale task handoff, wrong/foreign P/Spec, drifted HEAD, inherited downstream template approvals, `/tmp` cache treated as authority; no writes before STOP.
- Skill creator triggered by a single one-off instruction, self-publication or automatic creator execution, hidden edits by a read-only Reviewer/Verifier, metadata collision with system Skill, automatic load of every Skill.
- Preserved original source scripts/references examined as *untrusted*; no CI/workflow hook activation, installs, network side effects or policy edits outside approved bounds.

**Honest evidence:** CI `lite-checks.yml` may support static/whitespace checks but is not native discovery or eval. An agent's claim “I used skill X” alone is not an observable loading trace. If runtime instrumentation cannot expose a required event, record `NOT_OBSERVABLE` and seek alternative evidence or Owner disposition; synthetic tests never prove OS enforcement. Native Claude Code parity and actual downstream-pilot readiness remain `NOT_TESTED`.

## 7. Observable acceptance criteria (proposal for later P/W)

| ID | Acceptance criterion / required evidence |
| --- | --- |
| AC-SK-01 | Exactly the eleven named canonical Skills; no `subagent-mission-brief` or `technical-research` v1 Skill and no unauthorized source path / vendor adapter |
| AC-SK-02 | Every Skill has supported metadata, discriminative trigger/skip descriptions, bounded outputs and explicit STOP/permission boundaries without a second lifecycle |
| AC-SK-03 | `workflow-to-skill` generates only a recurrence-qualified proposal and pre-run eval plan, never writes/installs Skills or invokes native creator; no one-off false promotion |
| AC-SK-04 | Correct native Codex discovery from project root and nested cwd for all eleven Skills, evidenced by actual supported runtime observation |
| AC-SK-05 | Pre-fixed evaluation cases/oracles, matching/implicit/explicit/near-match/no-match routing and no-skill baselines documented with versioned conditions and denominators |
| AC-SK-06 | Native skill-specific behavior assessed against oracles; loading and output evidence distinguish observed vs inaccessible internal state and `NOT_OBSERVABLE` |
| AC-SK-07 | Independent role and permission negative fixtures demonstrate STOP-before-any-unapproved-write, no false Git/OS isolation and no skill-granted source authority |
| AC-SK-08 | `documentation-validation` catches the four historical shell/Markdown fail-closed regression classes while accepting corrected controls; validation does not execute unknown extracted scripts |
| AC-SK-09 | `context-recovery` rejects foreign/stale P/W/Spec, caches and inherited template approvals and does not write integrated memory without a separate scope |
| AC-SK-10 | Adaptation provenance and licence/notice status pinned per reused idea; no copied foreign policy, cleanup shortcuts, mutable approvals or unexpected provider scripts |
| AC-SK-11 | Full actual S vs base diff within approved finite W; same-S independent Reviewer READY and Verifier PASS, with real/nonnative test coverage separated |
| AC-SK-12 | Delivery H has evidence-only S→H proof, real CI on exact H and separate Owner Merge GO; merged state and post-merge CI verified separately |
| AC-SK-13 | Optional routine work remains proportionate; no forced skill routing/reporting, inflated metadata/global installation or automatic creation of a new mandatory gate |
| AC-SK-14 | Template/Claude/downstream claims appropriately scoped: Claude adapter and Issue #10 pilot not asserted DONE by Codex-only tests |

## 8. Design tradeoffs, risks and unapproved gates

- **Eleven vs thirteen:** Owner chose 11 KEEP / one MERGE / one DEFER after R1; number alone is not evidence of routing effectiveness. Native collisions and context cost must be measured, with later material re-scope requiring fresh Owner Spec acceptance.
- **Creator proposal vs execution:** loses zero-click generation in v1 but prevents dynamic unreviewed instructions from appearing in live agent discovery without W. Future approved authoring can invoke native `$skill-creator` in bounded scope.
- **Static vs runtime checks:** extra native time/cost is justified only for acceptance-relevant evidence. Tests must be proportionate and reproducible, not hidden in skill prompts.
- **Source references vs fresh authorship:** original Lite-native prose is preferred where copying rights are unclear; document licenses/pinned source before borrowing references or code.
- **Discovery vs safety:** OS/harness control and independent evaluation are required; frontmatter or worktree paths do not enforce permissions. No unobserved implicit behavior claim.
- **Native tests unavailable:** missing instrumented discovery/selection evidence → `BLOCKED` or `NOT_OBSERVABLE`, with explicit Owner disposition if required. Do not loosen gates or report synthetic PASS.
- **Project P planning:** only after Owner accepts the **exact Spec commit/path/blob** and authenticated direction; then candidate Project P and formal independent Project Critic, separate Owner P approval, bounded W and Stage Critic, implemented S, independent Reviewer/Verifier, delivery H/CI, final Owner merge GO. This document creates no new approval tier.

## 9. Exact Spec acceptance boundary

Owner must separately identify and accept **repository, path, committed revision and Git blob** of this candidate, with accepted AC and proposed implementation boundaries recorded **outside** this frozen file. A separate Issue comment or `docs/changes/WB-LITE-003/owner-decisions.md` may store authentic Owner acceptance evidence in an authorized future planning step.

Changing requirements, candidate Skill composition, source paths, negative safety expectations or eval boundaries requires new exact Spec revision and Owner acceptance before applicable Project Critic. No formal Project P, Stage W, Skill source implementation, new native installation or merge is authorized by this candidate.

Related sources: [Original Issue and Owner decisions](https://github.com/oleyna80/agentic-sdlc-lite/issues/8), [Product Intent](../../../PROJECT_BRIEF.md), [development procedure](../../workflow/development.md), [project memory](../../workflow/memory.md), [official OpenAI skill guide](https://learn.chatgpt.com/docs/build-skills).
