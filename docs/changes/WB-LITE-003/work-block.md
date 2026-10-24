# Work Block W — WB-LITE-003 / S2: Author Eleven Portable Native Skills

**Status at drafting: CANDIDATE W-S2 — independent Stage Critic READY PENDING.** This chronological revision of the finite `work-block.md` path supersedes the active W-S1 presentation for **future work only**. Original Stage-READY W-S1 remains immutable at its historical commit/blob. This candidate neither self-approves nor permits writing the Skills before its own independent Stage Critic READY.

## 1. Identity, exact parent authority and prerequisites

- **Repository/project/task:** `oleyna80/agentic-sdlc-lite`, `wb-lite-003-universal-skills`, `WB-LITE-003`. **Authorized task branch:** `docs/wb-lite-003-universal-skills-spec-20261023`; [Draft PR #16](https://github.com/oleyna80/agentic-sdlc-lite/pull/16). **Observed predecessor HEAD:** `6f8769c7469210626d2246516340e7e474324cd0`; recheck remote HEAD/main, changed paths and effective permissions before writing.
- **Frozen accepted Spec:** `05d6f0536f77a853824391a41d4ce8b5e5f1cc69:docs/projects/wb-lite-003-universal-skills/spec.md`, Git blob `0655245d5f00aafc6980d4a5e1232eacb0b7da53`, [OD-SK-04](https://github.com/oleyna80/agentic-sdlc-lite/issues/8#issuecomment-6368109911). Its requirements, 11 Skills and AC-SK-01…14 are not amended by this W.
- **Frozen approved Project P:** `70c3313a4bfe323869b8b9317cfc0c39deb00c16:docs/projects/wb-lite-003-universal-skills/plan.md`, blob `f374a4a8c7e51955547885fb96241b45a3f9ad9d`; [Project Critic R3 READY](https://github.com/oleyna80/agentic-sdlc-lite/blob/a4b5508f89313dc77878e489b9cbcde8e3ef852d/docs/changes/WB-LITE-003/project-critic.md) and [distinct Owner OD-SK-05 exact-P approval](https://github.com/oleyna80/agentic-sdlc-lite/pull/16#issuecomment-6373311049). Owner delegated this project's Skill documentation authorship to this GitHub-connected ChatGPT session under each independently Stage-READY W.
- **Completed predecessor stage:** W-S1 exact commit `9096c6e3247ded41afd6db7489213a71a3a4d819`, blob `ca4deb5cabbef0ac6e620bba988fec017d99bed4`; [original independent Stage Critic R1 READY](https://github.com/oleyna80/agentic-sdlc-lite/blob/686d81de9680e0be4aa4e96a074f1e91d05c7534/docs/changes/WB-LITE-003/stage-critic.md). S1 output corpus `docs/changes/WB-LITE-003/eval-cases.jsonl`, blob `521f65a7e0223b144b90d2969184665305f056f3`; oracle `docs/changes/WB-LITE-003/eval-oracles.md`, corrected blob `7e79599150fe692cfb12541671ae5443824c0869` at `6f8769c7469210626d2246516340e7e474324cd0`; [exact-head Lite Checks SUCCESS](https://github.com/oleyna80/agentic-sdlc-lite/actions/runs/40020420771). S1 planned 67 cases / 94 later assessed runs, not executed native outcomes.
- **Entry gate:** W-S2 must be separately committed and evaluated by an **independent Stage Critic READY on its exact new commit and W blob** before authoring any `.agents/skills/*/SKILL.md`. Actual writable scope must be verified. No repeated Owner-per-W permission for a conforming W; no Stage Critic can grant OS/provider permissions.
- **Environment:** Markdown authored through the connected GitHub API on this isolated task branch, outside a live Codex runtime/discovery session. New candidate Skills are treated as untrusted instruction text, not executed by their author or activated in an evaluator during drafting. A Git branch/worktree does **not** enforce sandbox isolation. Local native fixtures, installations and read-only evaluator identities are deferred to W-S3.

## 2. Finite write-set and single writers

**Normative source files (exactly eleven, no wildcard write grant):**

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

**Task-local evidence / control paths:**

- `docs/changes/WB-LITE-003/handoff.md` — single connected GitHub recorder maintains current S2 author checkpoint, verified commit and all eleven source blob IDs after they exist.
- `docs/changes/WB-LITE-003/test-evidence.md` — append source-provenance/rights and actually executed structural/static validation results, explicitly distinguish later native NOT_RUN checks.
- `docs/changes/WB-LITE-003/work-block.md` — exact **candidate W-S2** committed before independent review, then byte-frozen for this stage. Any changed stage contract requires a new W revision and a new independent Stage Critic.
- `docs/changes/WB-LITE-003/stage-critic.md` — optional single bounded presentation path for a separately attributable independent Stage Critic report; original report stays immutable in its own commit/PR comment. No write to this path is necessary for Skill authoring.

**Writers and separation:** this ChatGPT/GitHub author/recorder owns only the above paths; an independent separate-session Stage Critic is read-only for reviewed W, and a separate independent read-only source inspector reviews untrusted candidate Skill content/static risks before future evaluator access. Do not assert a source Reviewer READY or Verifier PASS at S2: canonical independent same-S assurance belongs to later final S after W-S3.

**Explicitly excluded:** all other `.agents/skills/` source paths; any scripts, `references/`, `agents/openai.yaml`, metadata config, symlinks or installers; `PROJECT_MAP.md` and `.agents/roles/README.md` (conditional navigation **not needed in this W**); `docs/templates/*`, `.claude/*`, provider-global Skills, `AGENTS.md`, canonical workflow/security/ADR docs, approved `spec.md`/`plan.md`, S1 `eval-cases.jsonl`/`eval-oracles.md`, shared `memory_bank/*`, CI/hooks/GitHub settings, client/system credentials, production/other worktrees, direct `main` push, force push, PR merge, issue close or deployment. Later Stage S3 has its own W and native observation rights.

## 3. Mandatory Skill authoring contract

Every new direct `SKILL.md` is original concise portable prose, with minimal supported YAML frontmatter `name` **exact directory name** and a specific `description` that activates for material relevant circumstances and disambiguates competing Skills. Frontmatter description must have ≤240 Unicode code points for each file and ≤2,640 total. Do not confuse code points with tokens or claim unmeasured context savings.

**Each Skill body must include** bounded purpose and applicable primary roles; concrete trigger and explicit skip/non-match conditions; preconditions and needed evidence; the smallest repeatable procedure; observable result/artifact; and an explicit STOP on missing authorization, contradictory provenance, unsafe destination or unverified permissions where relevant. An optional technique cannot override `AGENTS.md`, canonical Development Protocol, approved exact Spec/P/W, native OS rights or Owner decisions, or invent lifecycle stages/gates/statuses. No automatic or reciprocal cross-Skill invocation.

**Distinct Skill outcomes that must remain technically differentiated:**

| Exact Skill | Primary roles | Trigger | Required output |
| --- | --- | --- | --- |
| `requirements-clarification` | Orchestrator, Architect | material missing requirements | knowns/assumptions, prioritized Owner questions, decision boundary |
| `task-decomposition` | Orchestrator, Architect | accepted outcome requires bounded dependent units | dependency-ordered finite stages, ownership/write-set suggestions, measurable AC |
| `git-safety` | Orchestrator, Coder | authorized file/Git mutation with unverified target state | read-only repo/branch/target/staged/untracked/ignored checks and explicit STOP |
| `context-recovery` | All roles | session reset, changed environment, stale/conflicting handoff | verified task→accepted Spec/P/Owner/Critic/W→live Git state and next safe step |
| `systematic-debugging` | Coder | reproducible failure or discriminable root-cause hypothesis | minimal repro, competing hypotheses, isolation, bounded fix, regression tests |
| `assurance-evidence` | Critic, Reviewer, Verifier | actual checks on exact subject need attributable evidence | source/check/observed result/provenance/limits without invented independent verdict |
| `documentation-validation` | Coder, Reviewer | Markdown/shell/worktree instructions need safety or syntax review | static findings vs runtime limitations; STOP-before-mutation controls |
| `workflow-to-skill` | Orchestrator | multiple observed repetitions suggest reusable technique | recurrence-qualified proposal and pre-run eval plan only; no Skill creation |
| `skill-evaluation` | Reviewer, Verifier | new/changed Skill needs routing and behavior assessment design | pre-fixed positive/near/no-match/baseline matrix, observation and score boundaries |
| `change-impact-analysis` | Architect, Orchestrator | proposed change has contracts/consumers/assurance consequences | bounded producer/consumer, compatibility, risks and regression impact before decomposition |
| `test-design` | Architect, Verifier | accepted criterion lacks verifiable boundary/negative oracle | pre-run positive/negative/boundary cases, expected observations and fixture prerequisites |

**High-risk disambiguation:** `test-design` produces *prospective* acceptance cases/oracles; `skill-evaluation` plans/measures Skill-specific routing/behavior; `assurance-evidence` records *observed* independent check results. `change-impact-analysis` maps effects before any `task-decomposition`; `requirements-clarification` asks for missing requirements rather than triggering deferred `technical-research`. `workflow-to-skill` requires recurrence and produces **proposal + eval plan only**; must not create Skill source, install/publish Skills, or invoke native `$skill-creator`. `git-safety` and `context-recovery` can both apply to safe resumed mutations without creating permission or requiring selection of exactly one Skill.

**Safety and authorship:** no runnable shell scripts, examples that call unverified mutating Git operations, automatic cleanup, destructive reset, force worktree removal, policy/CI edits or self-authorizing writes. `documentation-validation` must address all four historical regressions: undefined `owned_worktree_path`, unclosed Markdown fence, mutation with unverified destination, and syntactically valid preflight that fails to STOP before modification; `bash -n` alone is not semantic safety proof. `context-recovery` must reject wrong/foreign P/Spec/W, stale HEAD/handoff, cached `/tmp` approvals and inherited template permission. Read-only roles cannot gain write permission by choosing a Skill.

**Adaptation provenance/licensing:** prefer original Lite-native text derived from current frozen Spec, root `AGENTS.md`, canonical procedures and role briefs. Record source documents at pinned commit/path and summary of adaptation in `test-evidence.md`. For each idea actually borrowed from external/prior repositories, independently pin source revision/path, inspect licence/notice terms, document what was modified or omitted, and do not copy if rights are unclear. Never import foreign roles, gates, cleanups or forced mutations. Third-party inspiration does not override this W's scope.

## 4. Actionable S2 implementation / inspection order

1. Confirm exact W-S2 Stage Critic READY, repository/task/branch/HEAD, approved P/Spec and S1 corpus/oracle bytes. Read relevant canonical Lite contracts and role briefs; verify the GitHub connector operates only on this branch and that the eleven target paths do not exist or belong to another writer.
2. Draft the eleven source files via GitHub in this finite scope. Commit in bounded reviewable groups if needed; all revisions before S2 source snapshot remain authoring candidates, not independently assured final source S. Do not execute newly created Skills in the author's chat or local Codex session.
3. Inspect all eleven full texts against accepted Spec triggers, skip conditions, output, STOP boundaries, frontmatter and overlap matrix. Check no scripts/remote installers/new paths/implicit authority, original authoring or documented compliant provenance, concise instructions and safe examples. Apply focused documentation fixes in new commits within this W; no editing accepted P/Spec/S1 corpus.
4. Execute actual available static checks on committed GitHub blobs: exact eleven direct paths and name matching; frontmatter delimiters/keys/description code-point counts, combined cap, Markdown fences and local links; no symlink, nested script/reference/`agents/openai.yaml` or new unauthorized file; no circular invocation; keywords and dangerous shell snippets reviewed; current-head Lite Checks status and changed-file inventory. Record which checks ran and which are NOT_RUN, not synthetic CI.
5. Before any native evaluation, obtain a **separate read-only trust/static content inspection** of the eleven candidate Skills for unsafe or contradictory instructions; record the reviewed exact source revision, findings and disposition in allowed evidence paths or an immutable external report. Stage W-S2's independent Critic READY is **not** this source inspection. A correction stays within authorized Skill paths and requires affected refreshed static inspection.
6. Once all eleven vetted Skill files and any supporting evidence are committed, recorder pins a preliminary **S2 snapshot T2** (existing actual commit SHA) and all eleven exact Skill blob IDs, verifying unchanged S1 corpus/oracle blobs plus no unexpected normative files. This T2 is **not final source candidate S**. Do not create an empty commit merely to label it.
7. Update `handoff.md` and `test-evidence.md` to pin source snapshots, provenance, checks, outstanding risks and a bounded next W-S3; separate later evidence commits do not rewrite the frozen eleven Skill bytes. No S3 scored runs or claims of discovery/selection/behavior PASS at this stage.

## 5. Acceptance criteria and proportional STOP

- **S2-AC01:** exactly eleven files at the eleven approved direct Skill paths; each YAML frontmatter name matches its directory, each `description` is specific and ≤240 Unicode code points and the combined length ≤2,640; no extra provider config, scripts or references.
- **S2-AC02:** all eleven roles, relevant activation triggers, negative/skip boundaries, short safe procedures, observable outputs, sources and STOPs match accepted Spec and distinguish the named near-conflicts. No Skill adds a policy, gate, approval, privilege, deployment/install or unconditional activation.
- **S2-AC03:** high-risk `workflow-to-skill` and `documentation-validation`/`context-recovery` behaviors and static regression controls are explicitly present in source text; untrusted or unsafe executable examples are not run.
- **S2-AC04:** real static Markdown/frontmatter/path/security/provenance review, exact file inventory and GitHub Actions on actual target SHA recorded; technical limitations marked NOT_RUN. Original independent source/trust inspector findings preserved separately before future native evaluator access.
- **S2-AC05:** recorder captures a single preliminary source revision **T2 with all eleven blobs**, unchanged accepted P/Spec/S1 corpus/oracle and no unexpected tracked-source differences. Subsequent evidence-only checkpoints can reference T2; final S is deferred until after W-S3 READY.
- **S2-AC06:** finite scope observed and no other writers overwritten; no premature Skills execution, native discovery, evaluated baseline, same-S Reviewer/Verifier PASS, direct main change or merge claimed.

**STOP before affected action** on missing independent W-S2 Stage Critic READY, unverified GitHub write branch/permissions, wrong repository/project/HEAD, changed frozen P/Spec/S1 inputs, overlapping writers, provider-global Skill collision requiring installation/config change, an unsafe inherited instruction, unreviewed external licence terms or proposed write outside this explicit scope. Stage-only W correction inside approved P → new W and separate Stage Critic; material scope/Spec/P/security/authority change → Owner disposition and affected gates. No force update, unknown cleanup, shell installation, production credential or unapproved external operation.

## 6. Independence, delivery and next stage

**Author here, independent assurance elsewhere:** after independent Stage Critic READY on **this exact W-S2**, the Owner-delegated ChatGPT/GitHub session authors source documents without invoking them. Separate ChatGPT sessions may independently inspect trust/content. Local Codex or another capable agent is reserved for genuinely executable native/OS tests, with platform controls. A reviewer can be independent without being Codex, but the future **Verifier PASS** must be grounded in actual required tests on the **same final S**, not just another model's opinion.

**Handoff:** retain historical W-S1/Stage Critic and frozen P/Spec/oracle subjects. Next chronological `work-block.md` revision W-S3 must be independently Stage Critic READY, after which final source S is chosen with exact W-S3 and byte-identical vetted Skill/S1 blob IDs. Only then run the non-scored observer smoke and measured evaluation in actual authorized native fixtures, obtain independent same-S Reviewer READY / Verifier PASS, then evidence-only H/actual CI and separate Owner Merge GO. S2 does not itself authorize W-S3 execution or merge.

**No future commit SHA, automatic independent READY, native result or final S status is written into this candidate W.**
