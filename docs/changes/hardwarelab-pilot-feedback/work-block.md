# Work Block W — hardwarelab-pilot-feedback / S1

## Identity, authority and parent conformance

- **Task / project ID:** `hardwarelab-pilot-feedback`; significant documentation
  stage. Outcome: pilot lessons consolidated in existing canonical Lite documents,
  independently checked and delivered in one PR for separate Owner acceptance.
- **Repository / authorized target:** `oleyna80/agentic-sdlc-lite`,
  `/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/hardwarelab-pilot-feedback`,
  branch `docs/hardwarelab-pilot-feedback`.
- **Parent P:** `docs/projects/hardwarelab-pilot-feedback/plan.md`, commit
  `e7282ad5f1e2d36d834ba9c4fd0e1e0964152f01`, blob
  `ab0d699a4746c705b40dd1f30e1d8bd6cae8fcab`.
- **Original Project Critic READY:** [report](project-critic.md), commit
  `1340908634b4dab862382d7ee808664a47dd8004`, blob
  `101e6dcd769ddbb7e207a0a9a044692d75ea141a`.
- **Separate Owner exact-P approval:** [OD-PF-002](owner-decisions.md);
  authenticated direct reply «План проверил, подтверждаю к исполнению» after the
  exact P/report were presented. This approves P's delegated delivery boundaries.
- **Accepted Spec:** `docs/projects/hardwarelab-pilot-feedback/spec.md`, commit
  `21aa763cd7d7247decf9f6978808de5d5d68db4b`, blob
  `5e1ffcae32aac6927b105ad25d00e5fa0dd1bf9f`; acceptance/request provenance is
  [OD-PF-001](owner-decisions.md) and the Spec's initiative section.
- **Diff base B:** `8db525ab1f1443cee944cba07fcccafd71408be8`, tree
  `4252320ec6dd7ad0d605463f021f7075e591fe1f`. Observed entry HEAD before this W:
  `1340908634b4dab862382d7ee808664a47dd8004`; clean task worktree, no source writer.
  Preserve ADR-0001/0002 and frozen historical decisions and reports.
- **Conformance:** This is exactly P's sole S1, all seven Spec requirements and
  AC-01–AC-05; no added stage, source path, runtime mechanism or approval boundary.
  W must be committed and independently Stage-Critic-READY before Coder entry.

## Finite scope and single-writer ownership

One Coder owns the exact source paths below; no other source writes are allowed:

1. `PROJECT_MAP.md` — retain the prepared single register navigation entry.
2. `docs/process-feedback.md` — preserve original entries and dated selection;
   add truthful implementation pointers, keep entries LINKED pending integration.
3. `docs/workflow/development.md` — whole-mission autonomy/optional parallel
   coordination, candidate-root checks, bounded dispatch and final CI metadata.
4. `docs/workflow/workspaces.md` — concise portable resource/concurrency/retry
   guidance; preserve existing guarded creation/cleanup procedures.
5. `docs/workflow/memory.md` — bounded recovery/checkpoints and canonical resource
   link; preserve the conditional committed-checkpoint matrix.
6. `docs/security/boundaries.md` — concrete hook/interception selection and
   platform limits, preserving separately authorized prototype/activation.
7. `.agents/roles/orchestrator.md` — short canonical pointers only.
8. `.agents/roles/verifier.md` — short canonical candidate/root-check pointer.

Evidence ownership is exclusive per path; all paths use the task prefix
`docs/changes/hardwarelab-pilot-feedback/`:

| Exact file | Author/executor | Git recorder |
| --- | --- | --- |
| `owner-decisions.md`, `handoff.md`, `delivery.md` | Orchestrator | Orchestrator |
| `work-block.md` | Orchestrator, frozen after review | Orchestrator |
| `project-critic.md` | Original Project Critic, already frozen | Orchestrator |
| `stage-critic.md` | Independent Stage Critic | Orchestrator |
| `implementation.md` | Coder | Orchestrator after source S |
| `review.md` | Independent Reviewer | Orchestrator |
| `validation.md` | Independent Verifier | Orchestrator |

Accepted project-local Spec/P paths are preserved byte-identically; they receive
no execution updates. Original independent report bytes are retained by reachable
commit/blob, including failures before bounded REWORK. Orchestrator serializes
Git writes; only Coder may commit its own source S while Orchestrator pauses Git
mutation. Separate native Reviewer and Verifier missions may run concurrently
against frozen source, writing only their different report paths. No OS isolation
or tested parallel-Coder capability is inferred.

## Acceptance, checks and feasible delivery

- **AC-01:** One discoverable register, original PF-001–PF-003 preserved, evidenced
  PF-004–PF-006 and initiative linkage, no unsupported closure/runtime claim.
- **AC-02:** Requirements 2–7 live in P's canonical homes with brief role links;
  no changed independent gates, Owner stops or new mandatory artifacts.
- **AC-03:** Verifier records six documentation walk-throughs in `validation.md`:
  interrupted heavy check; missing/wrong/mutable candidate; overlapping Coders/
  shared index; final-CI-link-only report; oversized dispatch versus quota/ownership;
  concrete hook versus ordinary workflow. For each: canonical citations, expected
  allowed/stop/escalation behavior and limits. Not native runtime test claims.
- **AC-04:** Verify actual root, committed S/tree/relevant blobs before costly
  checks; compare working source with S, fail closed without mutable fallback.
  Inspect full B..S and source/evidence scope; whitespace/conflict/local-link checks
  include untracked reports before staging and actual staged contents afterward.
  Execute all five current Lite Checks shell bodies verbatim with repository
  identity; report numeric outcomes separately from hosted CI. Use only existing
  tools and small temporary metadata, no added test framework/project copies.
- **AC-05:** Preserve unrelated/older dirty work, clean manager checkout and
  HardwareLab; no main, hook/config, shared memory/ROADMAP or runtime changes.
- **Independent source gates:** Reviewer READY and Verifier PASS bind the same
  frozen S and full B..S diff. Coder self-checks do not replace these roles.
  Corrected source creates new S and affected fresh independent assurance.
- **Delivery:** Commit necessary original reports and task evidence first, then
  mechanically derive H and verify evidence-only S..H/full B..H. Publish this
  branch non-force, reuse/create one PR, observe actual Lite Checks for H; distinguish
  synthetic PR merge SHA from head H. Put final run URLs/head/conclusion in PR
  metadata without a CI-link-only commit. Any later commit requires new H checks.
  Final phase is DELIVERY_READY; Owner acceptance/merge remains separate.
- **Feasibility:** Project Critic inspected the active PR-triggered workflow,
  repository identity/access and required local Bash/Git/Python/gh. Recheck actual
  permission/ref/CI drift before publication. Metadata inspection does not prove
  future CI/write success. No application/browser/Docker matrix is required.

## Bounded decisions, STOP and recovery

Coder may choose concise phrasing/placement within these paths and existing
architecture. Orchestrator may resolve bounded findings, commit/report/dispatch
and deliver within approved P without repeated Owner permission. Use the verified
task checkout, not substantial copies; no heavy parallel checks are needed.
Short recovery records follow the existing memory matrix, not a new form.

STOP the affected action on wrong repository/root/subject, missing original gate
or Owner binding, source mutation during assurance, unknown overlapping writer,
missing permission/independence/mandatory CI, or material deviation. W-only change
inside P requires new committed W/Stage Critic; material Spec/P change goes to
Owner and affected gates. Never substitute a latest/root plan or mutable archive
fallback. No hook bypass, Git config activation, credentials/settings, force push,
main mutation, cleanup, reset, merge, deployment or application changes.

Preserve work on failure and diagnose before retries. No rollback command is
delegated; any later rollback is a separately reviewed normal change. Recovery
starts from this task's handoff → exact W/P/accepted Spec with separate original
Critic and Owner records, not shared integrated memory as live task authority.
