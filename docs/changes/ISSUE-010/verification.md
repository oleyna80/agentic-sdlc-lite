## Independent Verifier Report — ISSUE-010

Tier: standard
Work Block: WB-ISSUE-010-01 — migration to project-local Spec/P, deterministic recovery, ROADMAP and ADR-0002
Reviewed source subject: S = b5dbc4764292b881c2e370404a7919be94d3b4e3
Reviewed source tree: e9a5d025857da32a2d66b5810ac8c6c9bbf37bf2
Verdict: PASS — source acceptance only

This PASS applies to the immutable source candidate S. It does not establish delivery readiness, evidence-only H conformance, CI on H, PR mergeability at a later head, or merge authorization.

### Exact verified subjects

| Subject | Verified identity |
|---|---|
| Baseline main | ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb |
| Source candidate S | b5dbc4764292b881c2e370404a7919be94d3b4e3 |
| S tree | e9a5d025857da32a2d66b5810ac8c6c9bbf37bf2 |
| S parent / implementation delta base | 37019b90ed00b352b994bed007b5d21790e8a6a0 |
| Current later PR checkpoint, deliberately not substituted for S | b76bad073f5298cbdc2d50a2397fdf08546ecf3b |
| Accepted Spec | commit e391d09cc908e886d4e019d54987fc26d34bbb55; blob a364ec0fbd21767a36820653bd851d552c8ab7a7; SHA-256 866a3cb1ba0958cb0e19fcc392cfb5cb960837b70042c772c0778a08dc1ffa14 |
| Approved P | commit 41530894af15ecdb9347b8f39e9ee6f939f0bc16; blob 5b0dfb2654ed3072b655de73068b438dc4cb9b1a |
| Stage W | commit f20e9296cd483f88ef850bfe7023a845f6a68b2d; blob 4f179db45b890591af635476a43cbd607f8130e7; SHA-256 383ebc4c8b3dedbd943591fe291ef3ac01f6739fb45f40e6e831d6b3adfd7235 |
| Formal Project Critic R2 | report blob 0ddfe900d15ec8fd1905212b77fc5d27498e8a17, READY |
| Owner P approval | OD-010-05, commit 6aa1f1007a784c6289ea39e365aa7911d6a33f83; owner-decisions blob 93dfe6b1f243e6219b20bd89541d048cccda9333 |
| Historical WB-LITE-002 root P | commit b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df; root plan.md blob fcfda1f6dfa011a5688c5f04111d918d6bbce707 |
| Historical ISSUE-009 root P | commit 90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74; root plan.md blob 399b3bb96c6482d35fed93411104d04d3d191482 |

main, accepted Spec, approved P, and Stage W are Git ancestors of S. git fsck --no-dangling completed successfully on the detached S inspection worktree.

### Changed Files

The actual implementation commit 37019b90… → b5dbc476… changes exactly the 17 source paths authorized by W:

AGENTS.md
README.md
PROJECT_BRIEF.md
PROJECT_MAP.md
ROADMAP.md
docs/architecture/overview.md
docs/changes/README.md
docs/decisions/0002-project-documentation-model.md
docs/templates/intent.md
docs/templates/plan.md
docs/templates/session-handoff.md
docs/templates/spec.md
docs/templates/subagent-mission.md
docs/templates/work-block.md
docs/workflow/development.md
docs/workflow/initialization.md
docs/workflow/memory.md

The expected-versus-actual sorted path comparison passed: W_EXACT_SOURCE_SCOPE_PASS paths=17.

The larger main..S range also contains the authorized ISSUE-010 planning and assurance records. Those are separate planning/evidence paths, not unapproved implementation edits.

### Executed checks

- [PASS] Exact S identity and tree — git rev-parse, git cat-file, GitHub commit metadata, and tree inspection resolved S to b5dbc476… / e9a5d025….
- [PASS] Ancestry and object integrity — git merge-base --is-ancestor confirmed the accepted Spec, P, and W precede S; git fsck --no-dangling exited successfully.
- [PASS] Exact source scope — actual 37019… → S diff contains the 17 W-authorized implementation paths and no others.
- [PASS] Protected-source invariants — no changes from main to S in root plan.md, memory_bank/, .github/, .agents/, docs/security/, docs/workflow/workspaces.md, or ADR-0001.
- [PASS] Whitespace and diff integrity — git diff --check main..S and git diff --check 37019… S exited successfully.
- [PASS] Historical provenance — both approved historical root P blobs resolve at their original commits. Historical W2 63ed889d… and ISSUE-009 W1 80fe4894… remain reachable.
- [PASS] Markdown structural validation — isolated parser checked 32 relative Markdown links across the reviewed source documents: MARKDOWN_RELATIVE_LINKS_PASS checked=32 files=19.
- [PASS] Canonical invariants — required statements are present in the actual S sources: one lifecycle, no controller/registry/runtime authority, W-first deterministic recovery, no root/latest/folder fallback, STOP on bad binding, downstream deactivation, routine proportionality, same-S assurance, and exact-H CI rule.
- [PASS] Exact-S GitHub Actions — Lite Checks run 39833240573 completed success for head SHA b5dbc4764292b881c2e370404a7919be94d3b4e3. This is structural CI evidence for S only.
- [PASS] No credential exposure found in source diff — manual review of all source changes found no credentials, tokens, private keys, or secret values. A broad keyword scan matched ordinary policy wording such as “security boundaries”; it was not treated as secret-scan proof.

### Disposable Git-fixture evidence

All fixtures were created and executed only under /tmp/issue010-fixtures; no project repository, ref, PR, or settings were modified.

The fixture uses real Git repositories, commits, branch histories, a merge commit, blobs, and before/after refs/heads inventory. Its recovery evaluator is intentionally a synthetic procedural harness, not a newly claimed runtime controller. This matches the source’s explicit “No Controller” constraint.

Command:

bash -n /tmp/issue010-fixtures/run-fixtures.sh
bash /tmp/issue010-fixtures/run-fixtures.sh

Both commands exited 0. Relevant observed results:

T01-project-a PASS exit=0 output=PERMIT exact-binding; no-write-intent-issued refs-unchanged
T01-project-b PASS exit=0 output=PERMIT exact-binding; no-write-intent-issued refs-unchanged
T02-project-b-after-merge PASS exit=0 output=PERMIT exact-binding; no-write-intent-issued refs-unchanged

T03-invalid-project-id PASS exit=70 output=STOP project-id refs-unchanged
T03-wrong-project-plan-blob PASS exit=70 output=STOP p-binding refs-unchanged
T03-wrong-repository PASS exit=70 output=STOP repository refs-unchanged

T04-missing-work-block PASS exit=70 output=STOP missing-W refs-unchanged

T05-missing-spec_acceptance PASS exit=70 output=STOP spec-acceptance refs-unchanged
T05-missing-project_critic PASS exit=70 output=STOP project-critic refs-unchanged
T05-missing-owner_p_approval PASS exit=70 output=STOP owner-p-approval refs-unchanged
T05-missing-stage_critic PASS exit=70 output=STOP stage-critic refs-unchanged
T05-missing-w_conformance PASS exit=70 output=STOP w-conformance refs-unchanged

R2-L01-wrong-spec-commit PASS exit=70 output=STOP spec-commit refs-unchanged
R2-L01-wrong-spec-path PASS exit=70 output=STOP spec-binding refs-unchanged
R2-L01-wrong-spec-blob PASS exit=70 output=STOP spec-binding refs-unchanged
R2-L01-acceptance-for-different-revision PASS exit=70 output=STOP spec-acceptance refs-unchanged
R2-L01-wrong-initiative-intent PASS exit=70 output=STOP intent refs-unchanged
R2-L01-absent-intent PASS exit=70 output=STOP intent refs-unchanged

T13-downstream-inherited-source-contract PASS exit=70 output=STOP repository refs-unchanged
T14-no-roadmap STRUCTURAL-PASS source-canonical-initialization-explicitly-allows-absence

The fixture repository had:

base    c65d04a2cd877acc47e37ca51017b97879e6080e
project A head 900ddef2b6d0493a5e2907e7ced6f070a7a90152
project B head e8d96b157fb08ef9906dbffdef58a4cd34fd6574
merge   49f198995064cf055c6cfee9fb006146111d80a6
root plan blob 1bdbe27e8a2c45b4482a9ea6d6811b05b51df98c

Each negative result exited 70, emitted STOP, and preserved recorded branch-ref inventory. It did not attempt an affected source write.

### T01–T22 matrix

| Test | Status | Evidence and limits |
|---|---|---|
| T01 | PASS | Real disposable Git fixture: two independent project-local Spec/P/W bindings recovered; root plan blob unchanged. |
| T02 | PASS | Real fixture merge preserved project B’s distinct binding after project A integration. |
| T03 | PASS | Real fixture rejected invalid project ID, wrong repository, wrong P blob, wrong Spec commit/path/blob, wrong Spec acceptance revision, and absent/wrong intent. All STOPs occurred with unchanged inventory. |
| T04 | PASS | Real fixture removed W while a root plan existed; recovery stopped and did not use a fallback. |
| T05 | PASS | Real fixture separately omitted Spec acceptance, Project Critic, Owner P approval, Stage Critic, and W conformance; each case STOPped before an affected write. |
| T06 | PASS, structural | development.md requires changed material Spec/P subjects to receive new applicable gates. This is a documentation rule, not runtime enforcement. |
| T07 | PASS, structural | Project ID format, uniqueness/no aliasing, and cooperative collision checks are explicit. No registry or runtime identity service is claimed. |
| T08 | PASS | T01/T02 fixture proves parallel bindings and post-merge coexistence. Canonical recovery requires each distinct initiative to bind its own exact P/Spec/approvals. |
| T09 | PASS, structural | Material Spec/P change propagation is explicit in development.md and templates: new subject, affected Critic, and Owner decision. |
| T10 | PASS, structural | W-only correction path is explicit: new W and Stage Critic, with no fabricated Owner-per-W gate. |
| T11 | PASS | Original WB-LITE-002 and ISSUE-009 root P blobs resolve at their original commits; canonical text denies approval transfer to a copy. |
| T12 | PASS, structural | ROADMAP.md, memory.md, and ADR-0002 explicitly deny task authority, approval-registry semantics, and false-completion use. T04 supplies a related no-fallback operational check. |
| T13 | PASS | Real disposable derived-repository fixture rejected inherited source contract/approval use with STOP repository. |
| T14 | PASS, structural | Initialization explicitly allows absence of ROADMAP, deactivates inherited records, and preserves routine lightweight intake. |
| T15 | PASS | Genuinely fresh native agent was launched without original chat context. It used immutable GitHub REST reads for S, reconstructed W → P → Spec → Critic → Owner bindings, identified next permitted action, and correctly declined further source edits. |
| T16 | PASS | Separate fresh native agent detected branch-local handoff stale relative to S, STOPped before further source writes, and refused root/latest/ROADMAP substitution. No actual compaction occurred, so that distinct coverage remains NOT_RUN. |
| T17 | PASS | Full source-scope review, protected-path checks, exact 17-path implementation delta, unchanged role/CI/security/memory locations completed. |
| T18 | PASS, structural | Canonical procedure preserves routine proportionality and permits Owner Issue/request provenance without mandatory intent.md; no automated intake enforcement claimed. |
| T19 | PASS | Baseline/S trees, protected paths, historical root P blobs, W commits, and ADR-0001 checked. |
| T20 | PASS | Relative Markdown-link parser passed 32 links; whitespace checks passed; ROADMAP wording checked. |
| T21 | PASS | Derived-repository fixture rejected copied source contract/approval records outside their repository identity. |
| T22 | PENDING — delivery phase | Same-S Reviewer/Verifier source subject identity satisfied; evidence-only S→H audit and CI on exact H wait until H exists. |

### AC-01…AC-12 assessment

| Criterion | Status | Evidence |
|---|---|---|
| AC-01 | PASS | Exact 17-path scope, project-local artifacts, root plan legacy only. |
| AC-02 | PASS | Artifact meanings/authority align across canonical docs/templates/ADR-0002. |
| AC-03 | PASS | T03/R2-L01 real Git fixtures reject repo/ID/P/Spec/acceptance/intent mismatches. |
| AC-04 | PASS | T01/T02 real fixture demonstrates parallel bindings and merge behavior. |
| AC-05 | PASS | T04/T05 fixture STOP behavior plus canonical gates. |
| AC-06 | PASS | Historical P blobs/W subjects reachable and nontransferable. |
| AC-07 | PASS | T13/T14 downstream deactivation and optional ROADMAP. |
| AC-08 | PASS | T15 fresh native recovery. |
| AC-09 | PASS | T16 missing/stale binding and no-fallback. |
| AC-10 | PASS | Product docs describe process-as-product/harness-native/etc without new runtime enforcement. |
| AC-11 | PARTIAL — source portion PASS; delivery portion PENDING | Scope, diff, links, exact-S CI and same-S source verifier subject pass; exact-H audit/CI await H. |
| AC-12 | PASS | ADR-0002; ADR-0001 and security/CI/workspace boundaries unchanged. |

### Limitations / explicit NOT_RUN

- Actual compaction event: NOT_RUN; no simulated PASS.
- Delivery H does not exist for this assurance subject; S→H and exact-H CI pending.
- Mergeability/merge not within verifier authority.
- No runtime enforcement claim: fixtures validate documented procedural behavior, not a controller.
- External Markdown destinations were not broadly checked; repository relative links were.
- No source defect, unauthorized source path, provenance mismatch, or failed mandatory source-stage test found.

### Next permitted action

S b5dbc476… may proceed only to authorized evidence-only delivery phase:

1. Preserve original Reviewer/Verifier reports and exact S subject.
2. Create H only within authorized W evidence paths.
3. Full S→H audit and exact normative blob equality.
4. GitHub Actions SUCCESS on exact H.
5. Present delivery package for separate Owner decision.

Normative correction creates a new S and requires fresh affected assurance.