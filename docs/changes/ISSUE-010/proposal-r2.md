# Architecture Proposal R2 — ISSUE-010 Documentation Model

**Subject:** compatibility design, not implementation P. **Baseline:** `ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb`, tree `d1812868ac576c36b732a51804a42a412b983b52`. **Repository:** `oleyna80/agentic-sdlc-lite`. **Date:** 2026-10-22. Architecture direction approved; exact spec/P/W and merge gates remain pending. The exact bytes of this document are the independent Architecture Critic R2 subject; checksum and verdict are recorded separately.

## A. As-is architecture and verified state

Live main equals expected baseline. PR #11/#12/#13 are MERGED; PR #6 is CLOSED without merge. Main push Actions [39768044803](https://github.com/oleyna80/agentic-sdlc-lite/actions/runs/39768044803) is completed/success on exact baseline. Shared memory describes verified integration through `2b8c7ed54d91d0763cb72f0da8196fab7140ce27`; the later PR #13 merge is verified live, not inferred from that dated snapshot. This lag does not make memory an authority registry.

Original six linked worktrees were inspected including tracked/staged/untracked/ignored state: clean; the original primary local main remains older than live main. They are preserved. A separate independent local clone is used at `/tmp/sdlc-issue010-r2-16sdb8xe/worktree`, branch `docs/issue-010-documentation-model-r2`, exact baseline. This avoids writes to the original shared Git database; it is not a security isolation claim. Actual sandbox permits this `/tmp` destination; no escalation/settings changes. The task branch has not been published.

The current lifecycle is coherent about significant approval: accepted exact spec → committed P → independent Project Critic READY → separate Owner exact-P approval → committed W/conformance → independent Stage Critic READY → Coder → independent same-S Reviewer/Verifier → H/actual CI → Owner merge. Its mandatory root P address is the incompatibility. Native roles are logical responsibilities, not runtime privilege enforcement.

Historical objects are reachable ancestors of baseline (all four `git merge-base --is-ancestor <commit> <baseline>` returned 0):

| Contract | Exact commit | Original path | Exact blob |
|---|---|---|---|
| WB-LITE-002 P | `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df` | `plan.md` | `fcfda1f6dfa011a5688c5f04111d918d6bbce707` |
| WB-LITE-002 W2 | `63ed889d8991a5d2187bb82709f4cbb5773db1cc` | `docs/changes/WB-LITE-002/work-block.md` | `19beb072f321a7c9730ea86630112ce8c1b90dbb` |
| ISSUE-009 P | `90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74` | `plan.md` | `399b3bb96c6482d35fed93411104d04d3d191482` |
| ISSUE-009 W1 | `80fe489458a8b3cfd290ba8f2ca000b786a9ffe5` | `docs/changes/ISSUE-009/work-block.md` | `5f79747f1562eea839ec1a97ba09efbbb0248275` |

Current root P has the ISSUE-009 blob, while WB-LITE-002 P survives at its original commit. Their actual coexistence used isolated branches and explicit stacked Owner dispositions, not two simultaneously authoritative root files in one tree. WB-LITE-002 P §2/W2 §9 impose original-path/provenance and alternate-base conditions: this new design must not retroactively relax them. Reachability alone does not verify every historical approval/report; this audit verifies contract addressing, not reissues release assurance.

## B. Compatibility findings

All source locations below refer to exact baseline. Appendix A supplies each file's exact Git blob; `(baseline, path, line, blob)` is the citation, not a mutable branch view. Severity means migration/design priority, not permission to edit now.

| ID / severity | Current source | Current behavior → approved target / conflict | Minimum resolution and finite affected files | Verification |
|---|---|---|---|---|
| F01 HIGH | `AGENTS.md:21` | Recovery demands root P → new significant work needs addressed project-local P. Fresh agents can select another project's root. | Replace only addressing/recovery pointers, retain precedence/gates: `AGENTS.md`. | T01–T05, T15–T16; root invariant. |
| F02 HIGH | `docs/workflow/development.md:17` | Root P mandatory; no full project/path binding → deterministic multi-project identity required. | Canonical address/binding/revision/legacy rules, preserving existing gates: `docs/workflow/development.md`. | T01–T11, T18. |
| F03 HIGH | `docs/workflow/memory.md:15`, `:67` | Root P listed as authority; no ROADMAP classification → project P exact revision and overview/memory separation needed. | Update source-of-truth table/recovery, add sparse ROADMAP ownership/update guidance: `docs/workflow/memory.md`. | T03–T05, T12, T15–T16. |
| F04 HIGH | `docs/workflow/initialization.md:13`, `:20` | Only inherited root P/tasks explicitly deactivated; new root P required → inherited initiative artifacts and roadmap status must also be inactive; roadmap optional. | Extend existing initialization checklist, no new gate/auto-delete: `docs/workflow/initialization.md`. | T13–T14, T21. |
| F05 MEDIUM | `docs/templates/plan.md:3`, `:8` | Instantiate root P; spec link lacks complete recovery binding → initiative path/exact spec provenance required. | Replace destination instructions, add ID/exact spec binding reference; strategy remains P: `docs/templates/plan.md`. | T01, T06–T10. |
| F06 HIGH | `docs/templates/work-block.md:9`, `:10` | P commit/blob and spec mentioned, project/path/complete chain not explicit → deterministic W contract. | Add canonical binding tuple and conformance references; no self SHA or new Owner-W gate: `docs/templates/work-block.md`. | T02–T11, T18. |
| F07 MEDIUM | `docs/templates/session-handoff.md:7`, `docs/templates/subagent-mission.md:8` | Evidence refs lack explicit project/path binding → every role must recover same chain. | Reference canonical tuple in these two templates, handoff remains observation, mission bounded. | T03–T05, T15–T17. |
| F08 MEDIUM | `docs/changes/README.md:5`, `:17`, `:18` | Root P plus stage optional intent/spec may look like competing project documents → new initiative inputs live project-local, W only stage detail. | Update navigation/placement, preserve old task-spec provenance: `docs/changes/README.md`. | T01, T17–T18. |
| F09 MEDIUM | `README.md:10`, `PROJECT_MAP.md:11`, `:27`, `docs/architecture/overview.md:55`, `:72` | Public entrypoints/diagrams/layout root P → project-local recovery and ROADMAP navigation. | Synchronize exactly `README.md`, `PROJECT_MAP.md`, `docs/architecture/overview.md`. | T17, T20; links. |
| F10 LOW | `docs/templates/intent.md:1`, `:9` | Task intent and generic approval field risk implying extra mandatory document/approval → optional initiative file OR accepted request. | Clarify optional file/provenance, no intent gate: `docs/templates/intent.md`. | T09, T18, T21. |
| F11 MEDIUM | `docs/templates/spec.md:3`, `:9`, `:20` | Functional requirements/interfaces/risks exist but initiative identity/intent/Owner exact revision and design concerns incomplete → Requirements + Design contract. | Add missing fields and external acceptance reference, avoid P/W content: `docs/templates/spec.md`. | T06, T09, T18. |
| F12 LOW | `PROJECT_BRIEF.md:5`, `:8`, `:13`, `README.md:3` | Product already portable/native/Git-driven; Foundation-only status mixes product intent with journey, motto implicit → explicit product identity plus separate dated journey. | Small wording/link edits in `PROJECT_BRIEF.md`, `README.md`; new `ROADMAP.md` with only verified major milestones/limits/future proposals. | T12, T19–T20. |
| F13 MEDIUM | `docs/decisions/0001-lite-foundation.md:15`, `:24`; `docs/decisions/README.md:3` | Accepted rationale lacks project-addressing/overview distinction → durable architectural rationale required. No conflict in ADR-0001 itself. | New `docs/decisions/0002-project-documentation-model.md`, complement not rewrite ADR-0001. | T11, T19–T20. |

No finding is a current authorization BLOCKER for this bounded proposal. Normative editing is BLOCKED until exact spec/P/W gates are met.

### Already compatible / NO_CHANGE

| Source | Evidence and disposition |
|---|---|
| `AGENTS.md:3`, `:7`, `:27–33`; `development.md:9`, `:18–29`, `:34–38` | One authority hierarchy; routine route; Project Critic before Owner; autonomous W; same-S assurance; H CI; merge separately. ALREADY_COMPATIBLE, preserve these rules. |
| `docs/workflow/workspaces.md:5`, `:175–203` | Actual target/permissions/one-writer/coverage, shared refs not isolation. NO_CHANGE. |
| `docs/security/boundaries.md:3–20` | Actual OS/platform boundaries and limited CI/hooks claims. NO_CHANGE. |
| `.agents/roles/{README,orchestrator,architect,critic,coder,reviewer,verifier}.md` | Roles already path-neutral and consume canonical exact subjects. NO_CHANGE; updated mission template supplies binding. No Skills/adapters now. |
| `docs/templates/critic-review.md:5–7`, `:34` | Already exact commit/path/blob and parent conformance, correct READY semantics. NO_CHANGE; canonical binding reference is sufficient. |
| `docs/templates/closeout.md`; `docs/workflow/agent-roles.md:3` | Existing P/W/S/H and navigation-only role semantics compatible; NO_CHANGE. |
| `.github/workflows/lite-checks.yml:20–42`, `:108` | Structural checks do not demand root P or ROADMAP. First-use guard limited, ISSUE-009 whitespace fix retained. NO_CHANGE; no automated permission claims. |
| `docs/decisions/0001-lite-foundation.md`, `docs/decisions/README.md` | Existing source-scoped ADR and one ADR home compatible. NO_CHANGE to existing files. |
| `memory_bank/*`; current `plan.md`; historical P/W/reports | Integrated observations and exact historical contracts. NO_CHANGE. No new shared registry; no reconciliation in this source scope. |

## C. Chosen architecture

### C1. Options / decision

| Option | Authority and immutable provenance | Parallel/merge/recovery/downstream | Cost / decision |
|---|---|---|---|
| A: branch-scoped root P | Exact SHA can identify P, but current root easy to mistake for default; approvals still external. | Parallel branches work, merges overwrite shared path; needs explicit exceptions and careful recovery. | Small textual change but recurring conflict. Retain only for legacy, not new initiatives. |
| B: project-local P | One exact P per selected initiative/revision; canonical lifecycle remains sole procedure. | Distinct stable paths support concurrent projects; own W binding recovers exact P; init deactivates source contracts. Shared source conflicts still real. | Chosen for initiative contracts, with below product overview. No runtime or registry. |
| C: repository plan + contracts | If repository plan grants authority it creates competing scope. If merely overview, it is ROADMAP and harmless. | Overview does not choose active P. Per-project contracts still required. | Adopt only non-authoritative ROADMAP variant with B; do not turn root P into roadmap. |
| D: serialize significant projects | Single root is easier to find but does not by itself authenticate spec/Critic/Owner. | Prohibits useful concurrency, still has old-P recovery problems and does not meet Owner target. | Reject as default; temporary scheduling choices remain possible. |

**Selection:** B with a mutable product ROADMAP, not a second repository execution plan. Owner architecture direction is the design basis; this proposal refines it without granting implementation authority.

### C2. Proposed layout

```text
PROJECT_BRIEF.md                         # product intent
ROADMAP.md                               # source overview, optional downstream
plan.md                                  # untouched historical legacy root P

docs/projects/<stable-project-id>/
    intent.md                            # optional; verified request/Issue can replace
    spec.md                              # accepted Requirements + Design revision
    plan.md                              # approved exact P revision

docs/changes/<task-id>/
    work-block.md                        # bounded W → exact project P
    handoff.md                           # mutable task recovery, not authority
    review.md                            # original versioned source assurance
    verification.md                      # original versioned source assurance
    ...                                  # only finite authorized task evidence
```

No required `docs/projects` registry/index, active-plan symlink, Controller, database, scheduler or auto-discovery service. Existing PROJECT_MAP points to conventions, never decides approval. Shared Git history does not create isolated authorization domains.

### C3. Artifact contracts

| Artifact | Input → output | Authority / lifecycle | Responsible writer |
|---|---|---|---|
| PROJECT_BRIEF | Owner product intent → identity/users/permanent goals/boundaries | Mutable product description, no feature permission; material product-direction change needs Owner decision. | Owner with designated documentation writer. |
| ROADMAP | Verified integrated milestones + explicit future directions → human journey, maturity/limits/evidence links | Mutable dated overview, never spec/P/approval. Optional downstream. | One authorized integration/documentation writer. |
| Initiative intent | Owner request/problem → why and outcome | File optional; verified immutable request/Issue revision or faithful authenticated retained Owner record. No separate mandatory intent gate. | Owner defines, Orchestrator/Architect records provenance. |
| Spec | Intent + constraints/design exploration → requirements/design/interfaces/AC/decisions/concerns | Owner accepts exact revision. Approval evidence separate; materially changed requirements/design require new acceptance and affected gates. | Orchestrator/Architect prepares, Owner accepts. |
| P | Exact accepted spec + verified base → finite strategy/stages/dependencies/risks/delegation/proof/integration | Committed candidate → independent Project Critic READY → separate Owner exact-P approval → frozen exact revision. | Orchestrator/Architect prepares; independent Critic and Owner decide separately. |
| W | Exact approved P/spec + actual permissions → bounded stage scope/outputs/tests/conformance | Committed W → independent Stage Critic READY + conformance → bounded execution; no Owner-per-W inside P. | Orchestrator; independent Stage Critic. |
| Handoff | Actual Git/gates/dependencies/results → task recovery/next action | Mutable observations, cannot override contracts/approval. Existing checkpoint matrix unchanged. | One task writer. |
| Review/verification/delivery | Exact S + approved contracts + executions → genuine verdicts, H mapping/CI/closeout | Preserve originals/history; no rewriting old verdict; same-S Reviewer/Verifier, actual H CI, separate Owner merge. | Independent native agents; Orchestrator preserves originals and delivery mapping. |
| Shared memory | Last verified integration → short context/recent progress/material events | Existing memory rules, not live parallel work or approval registry. | Separately authorized integration writer. |

### C4. Stable identity and deterministic recovery

Project ID is repository-scoped, unique lowercase ASCII kebab-case `[a-z0-9]+(-[a-z0-9]+)*`, stable after first accepted spec, no reuse/aliases/case variants. Existing legacy project/task IDs keep their original identities. One initiative can have many task IDs/Ws; task ID alone need not equal project ID. Inspect current and retained historical project identities before admitting a new ID; document any ambiguity and STOP, do not silently alias it. This is a cooperative check, not a technical uniqueness lock.

The canonical binding is:

1. Owner-verified repository identity and stable project ID.
2. Exact P commit, repository-relative path, Git blob; current applicability/base evidence.
3. Exact accepted spec commit/path/blob, Owner exact-spec acceptance provenance; P must bind that same revision.
4. Exact intent/request provenance bound by spec; a mutable Issue URL is context only unless exact content/revision is retained and authenticated.
5. Independent Project Critic original report with exact subject/dependencies and READY; separate authentic Owner exact-P approval/delegated bounds.
6. W exact revision recorded externally, its explicit parent tuple/conformance, independent Stage Critic subject/READY and actual permissions.

Start recovery from the known authorized task and its W/checkpoint, not a repository-wide search for the newest plan. Read W at exact revision, retrieve P with `git show <P>:<path>`, compare actual Git blob, spec and report/Owner subjects; verify retained reachability and applicability. Handoff repeats references for navigation but is not a substitute. A path/blob/commit/project/repository mismatch, missing report/approval or ambiguous task means STOP/BLOCKED before affected execution. No fallback to `main:plan.md`, another project's plan, most recent SHA, or identical copied bytes. Git hashes verify bytes, not human approval/authenticity. No field requires embedding a file's own future commit SHA; later subject SHA/verdict/status belong in separate records.

### C5. Revisions, concurrency and integration

Frozen means immutable approved revision, not a filesystem prohibition on ever proposing a new candidate at the same project path. Material spec change creates new exact spec acceptance and affected P/Critic/Owner decisions; material P change creates committed new P → Project Critic → Owner approval. Preserve old commits/blobs, original reports and approval chain. Existing W remains bound to old P until explicit applicability/conformance review; it cannot silently follow a new path revision or keep implementing requirements made obsolete by accepted change. W-only correction inside P creates new W/Stage Critic without new Owner-per-W.

Distinct project paths avoid plan-file contention. They do not avoid source-file merge conflicts, shared refs or lost mutable overview edits. One writer per overlapping path; use task-local handoffs and verified workspaces. After merge of project A, unfinished project B still recovers its approved P at exact commit. Before further writes/delivery evaluate current base/diff and retained original approval conditions, W conformance and affected assurance. No automatic merge/rebase or approval transfer. Existing alternate-base rules and exact historical exceptions remain binding.

### C6. ROADMAP, memory and product language

ROADMAP answers origins/current position/future directions. Each substantial factual milestone cites exact merge/source/evidence and verification date. Future directions explicitly proposed/open; maturity limits include CFG-001/CFG-002 and unexecuted pilots. Update when an authorized release/integration or product-direction change materially changes the journey, through an existing authorized documentation/integration PR. This is a content-maintenance rule, not a new mandatory lifecycle gate or condition on every W. No per-tool/test logs, no assertion that proposed work is COMPLETE.

Memory stays short, operational and last-integrated; ROADMAP is long-view product navigation. Link original evidence instead of duplicate narratives. Parallel task state stays task-local. A stale ROADMAP cannot authorize work or override live Git; dated memory/roadmap snapshots are reconciled only by an authorized writer. Source ROADMAP can describe Foundation, WB-LITE-001/002, ISSUE-009, memory reconciliation and open Skills/product directions using verified links; exact facts rechecked at future implementation S.

README/BRIEF need only small explicit wording: “The process is the product; the harness executes it.” Explain portable, native-harness, artifact-driven cooperation with logical roles, bounded autonomy/independent assurance/Git continuity/Owner stops. The process is documented and audited, not runtime-enforced by the kit. Most of these properties already exist; link the only canonical lifecycle instead of duplicating it. Move current journey/status detail out of enduring Product Intent into ROADMAP with evidence links.

### C7. Legacy and initialization

Keep current root `plan.md` and historical approved root/task plans unchanged. Legacy recovery uses original repository, commit/path/blob, spec acceptance, exact Critic/Owner records, W conformance and original transfer/integration exceptions. An exact copy at a new path is an illustration only, never an approved contract. No mass migration, no retroactive relaxation/reapproval. If an old dependency/report cannot be recovered, mark the affected use BLOCKED; availability of its blob alone does not repair assurance.

A new downstream repo initializes its own identity/brief/map/memory. Extend the existing checklist to deactivate inherited `docs/projects` intent/spec/P, source approvals and source roadmap statuses as active authority. Owner can separately adopt relevant design principles with repository-specific provenance; copying original approvals does not adopt them. Historical source files may remain clearly inactive references or be removed only within separately authorized initialization scope. ROADMAP absent is valid. Do not treat source-approved P as downstream P. First-use CI remains limited structural evidence; fresh-session semantic initialization check remains existing procedure, not a new gate.

### C8. External reference and ADR

Inspected AzurSysTech reference at exact `2bf681e4ae80a88b0f405b5279bcd43839269d17`: notes 02 capture intent (blob `c5c3e5027856b9ea970fe5bdcd38b9815840c8dd`), 03 requirements/design (`dc48681211cd8d556b15802f6bcf9d473efb768f`), 04 plan mode (`dfda7441b3a181898d440ed14754edbbad0284be`). Authenticated read-only GitHub API supplied content; these are engineering references, not adopted authority or proof that original Anthropic lessons/runtime were tested.

Adopt why/outcome separation, Requirements + Design before build, and repository-aware implementation/proof planning. Do not import living-plan edits into frozen Lite P, mandatory committed plan for every routine task, separate intent gate, hooks/Auto Mode runtime or another lifecycle. References:

- [Capture Intent](https://github.com/oleyna80/azursystech-ai-native-sdlc/blob/2bf681e4ae80a88b0f405b5279bcd43839269d17/notes/02-capture-intent.md)
- [Requirements and Design](https://github.com/oleyna80/azursystech-ai-native-sdlc/blob/2bf681e4ae80a88b0f405b5279bcd43839269d17/notes/03-requirements-and-design.md)
- [Plan Mode](https://github.com/oleyna80/azursystech-ai-native-sdlc/blob/2bf681e4ae80a88b0f405b5279bcd43839269d17/notes/04-plan-mode.md)

ADR-0002 is recommended: rationale for project-local addressing, product overview separation, backward compatibility and initialization; status accepted only after actual Owner disposition. It complements ADR-0001, creates no new authority level and is not formal P approval.

## D. Finite implementation scope and migration order

Exactly **17 source paths** are proposed. No normative edits are authorized yet.

| Order | Paths | Concrete change |
|---|---|---|
| 1 | `docs/workflow/development.md`, `AGENTS.md` | Canonical project-local binding/revision/legacy rules; root entrypoint pointer; retain all gates. |
| 2 | `docs/workflow/memory.md`, `docs/workflow/initialization.md` | Recovery table, ROADMAP vs memory ownership, inherited initiative deactivation/optional ROADMAP. |
| 3 | `docs/templates/intent.md`, `spec.md`, `plan.md`, `work-block.md`, `session-handoff.md`, `subagent-mission.md` (all under `docs/templates/`) | Distinct inputs and canonical identity/binding references; optional intent/no routine burden; no post-freeze fields. |
| 4 | `README.md`, `PROJECT_BRIEF.md`, `PROJECT_MAP.md`, `docs/architecture/overview.md`, `docs/changes/README.md` | Consistent entrypoints/layout/product wording; stage versus initiative placement; legacy links. |
| 5 | `ROADMAP.md`, `docs/decisions/0002-project-documentation-model.md` | New non-authoritative source journey and new architectural rationale. |

All edits form one coordinated documentation correction to avoid delivering mixed addressing rules. Existing root P, ADR-0001, roles, workspaces/security, shared memory, hooks/CI/Skills/adapters remain outside source write-set. No new `docs/projects/README.md` is needed: existing map/navigation suffice. If implementation discovers a required additional source path, STOP for scope decision instead of silently widening the list.

Current planning scope is only four new files: `docs/projects/issue-010-documentation-model/spec.md`, `docs/changes/ISSUE-010/proposal-r2.md`, `architecture-critic-r2.md`, `handoff.md` (last two in the same ISSUE-010 directory). These are candidate/evidence, not approved contracts. P is intentionally not prepared before exact spec acceptance; future P/W/report paths will be enumerated at that phase. The one-time project-local planning-path exception is not a blanket permission for other initiatives before canonical migration.

## E. Executable acceptance design (not executed implementation evidence)

All T01–T22 below are **NOT_RUN** for a future implementation S. Audit Git reads/ancestry/current CI are executed observations in A, not substitutes. Use disposable independent repositories and exact extracted candidate documents; no synthetic Owner record is real approval. Preserve command/mutation scripts or reconstructible commands in authorized evidence, source/fixture SHA/blob/hash, numeric codes/diagnostics, expected/observed result and before/after inventory. No permanent test framework required.

| ID / AC | Fixture / action | Expected observable result |
|---|---|---|
| T01 / 01,04 | Two project IDs, two branches, distinct accepted spec/P and W; inspect actual files/commits. | Both exact bindings recover; no root P mutation or overwrite. |
| T02 / 04 | Merge A in disposable repo while B unfinished; recover B and evaluate changed base/full diff. | B still uses original P; source conflicts/applicability surfaced; no inherited A approval or automatic assurance transfer. |
| T03 / 03 | In otherwise valid W substitute each repo ID, project ID, P commit, path or blob. | Each mismatch independently STOP before write; record unchanged inventory. |
| T04 / 03 | Task has no valid W/checkpoint; nearby/main root P and another valid project P exist. | STOP, no scan/latest/root fallback. |
| T05 / 03,05 | Individually omit spec acceptance, Project Critic original/READY, Owner exact-P approval, Stage Critic READY or conformance. | Each missing prerequisite STOP; Critic READY alone cannot open execution. |
| T06 / 05 | Modify P/spec after Critic READY/acceptance keeping filename; compare old subject and new blob. | New bytes not approved; affected work STOP and correct new revision route identified. |
| T07 / 04 | Duplicate/reused/case-variant/invalid new project ID including retired ID. | Reject ambiguity/collision; historical IDs are not renamed. |
| T08 / 01,05 | Complete project then prepare new significant project in distinct path. | Prior exact objects remain; new spec/P/gates required, no permission transfer. |
| T09 / 02,05 | Material requirements/design change, then material P-only change. | New spec acceptance as needed, new P/Project Critic/Owner; original evidence retained. |
| T10 / 05 | W-only correction within unchanged approved P. | New W/Stage Critic/conformance; no invented Owner-per-W gate. |
| T11 / 01,06 | Recover both historical root P/W pairs at original commits; attempt identical copy/new-path approval. | Original hashes/paths/approval exceptions preserved; copied P not automatically approved. |
| T12 / 02,09 | Stale ROADMAP, future milestone marked proposed, then roadmap-only edit. | Live task scope still from contracts; no execution authority or false COMPLETE; memory not overwritten. |
| T13 / 07 | Generate disposable downstream repo with inherited project P/spec/intent/approvals/roadmap/memory. | Semantic initialization identifies and deactivates inherited active authority/status; source approvals cannot authorize work. |
| T14 / 07 | Properly initialized downstream repo with no ROADMAP; own significant project then routine task. | Optional ROADMAP accepted; significant own gates required; routine full chain not required. |
| T15 / 08 | Fresh independent native agent/session receives only repository, exact task checkpoint/W and minimal objective, no chat. | Independently recovers correct exact spec/P/Owner/Critic/W and next bounded action; report actual reads/subject. |
| T16 / 08 | Recovery with wrong/stale/missing checkpoint; separately real native compaction if available. | STOP on missing binding. Synthetic replay explicitly synthetic; actual compaction NOT_RUN if unobserved, never claimed PASS. |
| T17 / 01,10 | Cross-file audit all 17 sources plus unchanged roles/critic template/CI. | No active root-P directive for new significant tasks; only legacy root refs; one lifecycle, no new authority/gate. |
| T18 / 02,09 | Routine mission and accepted Issue/request as intent without intent.md. | No forced initiative files/intent approval/ROADMAP/P/W; required boundaries still apply. |
| T19 / 06,12 | Compare invariant hashes and full baseline..S diff, historical ancestry/ADR links. | Root P/frozen P/W/reports/ADR-0001/hooks/CI/security unchanged; ADR-0002 truthful status. |
| T20 / 10–12 | Markdown/link validation; check every roadmap fact against live Git/PR/CI at exact S. | Links resolve, facts exact, future directions/risks explicit; no duplicated normative lifecycle. |
| T21 / 03,07 | Identical P blob in another repo or copied Owner/Critic records with changed context; false source identity. | No automatic adoption/approval; STOP or explicit repository-specific Owner disposition and affected gates. |
| T22 / 11 | Same-S native independent Reviewer/Verifier; inspect S..H and actual delivery-H GitHub CI. | Genuine exact-S verdicts and evidence-only mapping/current-H CI; queued/synthetic/missing is not PASS. |

Document fixtures test prescribed behavior and artifacts, not nonexistent runtime enforcement. Negative-fixture success means a native agent actually stops (or a specific structural check detects its intended malformed input), not a new controller denying writes. T15 is mandatory native recovery. Actual compaction is separately conditional T16; absence must be disclosed, never substituted by roleplay. Future P/W must specify exact operational records and final AC coverage, not count a written expected result as execution.

## F. Owner decisions and next action

1. Review exact candidate `spec.md` and its SHA-256/Git-content blob supplied in handoff; accept or request changes to those exact bytes and the 17-path future source scope.
2. Confirm ADR-0002 as the proposed rationale record, source ROADMAP and optional downstream rule, unchanged legacy root P, and no automatic historical migration (these follow approved direction; no new implementation authorization is assumed).
3. After exact-spec acceptance: prepare committed P at `docs/projects/issue-010-documentation-model/plan.md` under the explicit exception; enumerate finite P/approval/Project Critic/W/report evidence paths, run formal independent Project Critic, request separate Owner exact-P approval, then W/Stage Critic. No normative source editing before these gates.

Architecture Critic R2 reviews only this immutable proposal. READY means ready for Owner architecture/spec review, not formal Project Critic or implementation permission. Merge/deployment remain NOT_GRANTED. Local `/tmp` drafts are NOT_COMMITTED and not a durable Git checkpoint until explicitly recorded/preserved through the authorized planning route; their mere existence cannot authorize resumed execution.

## Appendix A — exact source provenance

All entries below are Git blobs at baseline `ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb`. Line references in B use these exact bytes.

| Path | Git blob |
|---|---|
| `AGENTS.md` | `1e3d65f26c3618efc6881c3c92718ba082ab1c0f` |
| `README.md` | `03a1dba6cf536997652527da33a61327a9947246` |
| `PROJECT_BRIEF.md` | `d27c5c4a3c673926bf066af140de4787db0984b7` |
| `PROJECT_MAP.md` | `da94c36584d491463c300a7a003f9a2e24b4380e` |
| `plan.md` | `399b3bb96c6482d35fed93411104d04d3d191482` |
| `docs/workflow/development.md` | `d1807ad538898f78bd991b41c6f69c16d978fd08` |
| `docs/workflow/memory.md` | `169e1a2fd040d3e14b2cd9ad54ef847f045ef9e5` |
| `docs/workflow/initialization.md` | `6d1f64e41f63f17fff6d4869aadadfc6dbc972c4` |
| `docs/workflow/workspaces.md` | `baadc348775a69f720ac0cf23f931658e518e47f` |
| `docs/security/boundaries.md` | `3e00360e284e2a369dd153516ccf9d9a4cd99f16` |
| `docs/workflow/agent-roles.md` | `e66645d13fdbe2163a9b211fa19f2a0effec3d68` |
| `docs/architecture/overview.md` | `aeba24052e53cfa77521c57e4288707e0e172e8e` |
| `docs/changes/README.md` | `215d7c6399e1c7c0bf38bf747b5566599cf1efad` |
| `docs/decisions/0001-lite-foundation.md` | `20f5636c8e1209bc1152e9f416ace5ea744fd95d` |
| `docs/decisions/README.md` | `be9cbab1ba2879941c68d5274ac06e2a34566f23` |
| `docs/templates/intent.md` | `63bc61166d2eb049d17314172ccf6915cb9ca58b` |
| `docs/templates/spec.md` | `6a6b2d0331c04138145c03d1391352e165648efe` |
| `docs/templates/plan.md` | `cb72fa26c3730592bbbcdb0251cb0bed2efe69a0` |
| `docs/templates/work-block.md` | `cfed7981c6a3f0d4735756c49785db10baf4b23f` |
| `docs/templates/session-handoff.md` | `dd67ab6b2ce5e718debe1a35bffa5abf51c4e7db` |
| `docs/templates/subagent-mission.md` | `20c340f154c1c19deb61e7eee8d1b80f8fdc42a6` |
| `docs/templates/critic-review.md` | `3cf38c0908fb5789a8b9dc15f557f34c8016b199` |
| `docs/templates/closeout.md` | `21aebb6ea82343816d317747ae94eeafb4d8deb3` |
| `.agents/roles/README.md` | `b000360637f6f919b45eb20b1f091d31966abb2b` |
| `.agents/roles/orchestrator.md` | `c3e8cf6b575c983805da1ec3f600c83421f4e468` |
| `.agents/roles/architect.md` | `05e90763d870b5baf7f2f246e55290b0f0db20bf` |
| `.agents/roles/critic.md` | `708e6f503d8dbc29e6aac3767c78f49c1c6e2bb1` |
| `.agents/roles/coder.md` | `b51e88b601b2e0454be1678a418d99370fb6f35e` |
| `.agents/roles/reviewer.md` | `594806a909dcdc49d22388ee487af1122398a9a5` |
| `.agents/roles/verifier.md` | `b1616b687566a941c28da70a535b601afd32e585` |
| `memory_bank/README.md` | `6a0fab0fa8e5cee7a8e75eeb6c54b14677e51ac4` |
| `memory_bank/context.md` | `7c9e89e78faddd05856ebd0228c3cea23b055fdf` |
| `memory_bank/progress.md` | `93a9e35c661e63ee479dd586ebfad4ede5838db3` |
| `memory_bank/decisions.md` | `bb630ce49361cbd3815c5d156459a3dfcb3504b5` |
| `memory_bank/orchestrator-log.md` | `7049245836c5ea4381fb3946ef120d900716508d` |
| `.github/workflows/lite-checks.yml` | `a3e67b594e799b781cc0bad571733e2082631cbf` |
