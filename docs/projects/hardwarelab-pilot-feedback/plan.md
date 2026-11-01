# Project Plan P — hardwarelab-pilot-feedback

## Identity, accepted input and baseline

- **Repository / stable project ID:** `oleyna80/agentic-sdlc-lite` /
  `hardwarelab-pilot-feedback`.
- **Outcome:** Transfer the evidenced HardwareLab pilot lessons into the existing
  Lite documentation while preserving its harness-native architecture and gates.
- **Accepted Spec:** `docs/projects/hardwarelab-pilot-feedback/spec.md`, commit
  `21aa763cd7d7247decf9f6978808de5d5d68db4b`, blob
  `5e1ffcae32aac6927b105ad25d00e5fa0dd1bf9f`.
  [OD-PF-001](../../changes/hardwarelab-pilot-feedback/owner-decisions.md)
  records Owner's reviewed-draft acceptance and unchanged draft-to-commit binding.
- **Initiative:** Owner's 2026-11-01 pilot retrospective request and subsequent
  confirmation recorded in the Spec and OD-PF-001. ADR-0001/ADR-0002 remain the
  design basis; preserve their historical status/evidence, not a copied approval.
- **Integrated diff base B:** `8db525ab1f1443cee944cba07fcccafd71408be8`, tree
  `4252320ec6dd7ad0d605463f021f7075e591fe1f`, verified from Git. The preparation commit above adds the
  register/navigation/Spec/handoff; final review covers all B..S changes, not only
  implementation commits. Record mechanically obtained tree IDs in task evidence.
- **Task target:** `/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/hardwarelab-pilot-feedback`,
  branch `docs/hardwarelab-pilot-feedback`. Preserve the clean manager checkout
  and the older dirty register/map in `git-hook-connection`.

## Finite implementation and evidence scope

The source write-set is exactly:

1. `PROJECT_MAP.md` — register navigation already prepared; keep it discoverable.
2. `docs/process-feedback.md` — preserve original entries/dated selection; add
   implementation evidence links only when true. Entries stay LINKED while this
   change awaits integration; do not equate documentation with proven runtime.
3. `docs/workflow/development.md` — whole-mission autonomy and optional parallel
   Coder coordination in §3; candidate-selection stop rule before assurance;
   final observed CI links in PR metadata in §4; concise delegated task pointers.
4. `docs/workflow/workspaces.md` — one concise resource-placement/concurrency
   section for substantial artifacts, capacity-aware heavy checks and diagnostic
   retries; do not rewrite the guarded workspace creation/cleanup procedures.
5. `docs/workflow/memory.md` — bounded recovery reads, short supporting step
   checkpoints and a navigation reference to the workspace resource guidance;
   preserve the existing conditional committed-checkpoint matrix.
6. `docs/security/boundaries.md` — concrete hook-selection/interception principle
   and limits; preserve separately authorized prototype/activation boundaries.
7. `.agents/roles/orchestrator.md` — short pointers to canonical coordination,
   dispatch and resource guidance instead of another lifecycle.
8. `.agents/roles/verifier.md` — short pointer to canonical exact-candidate/root
   checks before expensive verification; no independent competing procedure.

Separate preparation/evidence paths are exactly:

- `docs/projects/hardwarelab-pilot-feedback/spec.md` (accepted bytes unchanged).
- `docs/projects/hardwarelab-pilot-feedback/plan.md` (this candidate; later
  substantive revision requires its own Project Critic/Owner decision).
- `docs/changes/hardwarelab-pilot-feedback/owner-decisions.md`.
- `docs/changes/hardwarelab-pilot-feedback/handoff.md`.
- `docs/changes/hardwarelab-pilot-feedback/project-critic.md`.
- `docs/changes/hardwarelab-pilot-feedback/work-block.md`.
- `docs/changes/hardwarelab-pilot-feedback/stage-critic.md`.
- `docs/changes/hardwarelab-pilot-feedback/implementation.md`.
- `docs/changes/hardwarelab-pilot-feedback/review.md`.
- `docs/changes/hardwarelab-pilot-feedback/validation.md`.
- `docs/changes/hardwarelab-pilot-feedback/delivery.md`.

Reports are the existing significant-route evidence, not new kit-wide forms.
Retain original independent reports in committed Git history; subsequent reviews
on the same report path preserve prior subjects/verdicts by reachable commit/blob.
Never normalize or overwrite the only original report. No other paths are granted.

## Delegation and external boundaries proposed for Owner approval

After separate Owner acceptance of exact Critic-READY P, Orchestrator owns the
single stage below through DELIVERY_READY, including W, independent Stage Critic,
bounded Coder work, ordinary REWORK, independent source assurance and delivery.
No additional Owner approval is required for conforming stages or assignments.
Choose one Coder because the canonical paths overlap; no parallel writers or
swarm are needed. Reviewer and Verifier are separate native missions from the
Coder and each other. Role names are not OS-enforced isolation.

Proposed delegation includes normal local task-branch commits, read-only remote
inspection, non-force publication of this branch only, one task PR to `main`,
and existing GitHub Actions. Reuse a matching PR rather than creating duplicates.
Publication is not exercised before Owner approves this P. No Git config/hook
activation, credential/IAM/settings changes, application mutation, cleanup,
history rewrite, force push, direct `main` write, merge or deployment is included.
Missing actual runtime/OS/service permission stops the affected action.

## One actionable stage

| Stage | Entry / dependencies | Outputs | Acceptance / gates |
| --- | --- | --- | --- |
| S1 — consolidate pilot documentation | Accepted Spec and exact Project-Critic-READY P with separate Owner approval; committed conforming W and independent Stage Critic READY; verified task target and no overlapping writer | Minimal changes within the eight source paths; six recorded documentation scenarios; original independent reports and delivery evidence | Spec AC-01–AC-05; all checks below; independent Reviewer READY and Verifier PASS on the same frozen source S; evidence-only S..H and actual Lite Checks for H; Owner delivery review remains separate |

Orchestrator prepares W only once actionable. W names the eight-path source
subset and assigns each evidence/report path to one writer. Ordinary source
REWORK creates new S and affected fresh assurance; it does not reopen Owner
approval unless requirements, scope, boundaries or P materially change.

## Checks and feasible assurance

1. Freeze source S before independent checks. Verify its readable commit/tree,
   actual source/test root and relevant files against Git; mechanically capture
   identifiers. Never fall back from a missing archive/root to mutable content.
   Sequential use of the verified checkout is acceptable while source remains
   frozen; worktrees/archives are not a claim of OS isolation.
2. Inspect full B..S source and evidence scope; compare Spec requirements 1–7
   against their canonical homes and role references. Confirm no new gate,
   mandatory report, activation, provider catalog or copied lifecycle appears.
3. Record six walk-throughs in `validation.md`: interrupted heavy check;
   missing/wrong/mutable candidate root; overlapping Coders/shared Git index;
   report containing only final CI links; oversized delegation versus quota/
   ownership failure; concrete hook proposal versus ordinary workflow enforcement.
   Include expected allowed/stop/escalation behavior, canonical citations and
   limitations. These are documentation checks, not native-runtime test claims.
4. Check whitespace/conflict markers and relative links in every changed source
   and evidence file, including untracked reports before staging; inspect the
   actual staged contents and `git diff --check B S`, not only the last commit.
   Execute the current Lite Checks shell steps verbatim with the source identity
   `GITHUB_REPOSITORY=oleyna80/agentic-sdlc-lite`; record each outcome separately
   from hosted CI. Small disposable metadata files are allowed; no new test
   framework, project copy or application/browser/Docker matrix is required.
5. Independent Reviewer checks exact S/full diff, consistency and boundaries;
   independent Verifier checks the same S and the coverage above. Preserve failures
   and original reports; missing independence or coverage is not PASS/READY.
6. Commit necessary original reports and recovery/delivery evidence before final
   CI, deriving H afterward. Verify full B..H diff and evidence-only S..H; source,
   tests, requirements or gates changed after S require fresh source assurance.
   Publish the authorized task branch/PR and observe actual Lite Checks for H.
   Distinguish a PR synthetic merge SHA from associated PR head H. Put final run
   URLs/checked SHA/conclusion in PR metadata without a link-only commit. A later
   necessary commit creates new H and requires applicable CI for that H.

**Feasibility observed during preparation:** GitHub repository is accessible,
not archived; the existing authenticated identity reports push permission;
`lite-checks.yml` is active and triggers on pull requests. No task PR/current-H
CI has run. Recheck actual remote branch/access/workflow and conflicts before
publication; read access or an old green run is not proof of write execution or
future CI success. Local source hooks are inspectable/executable; do not activate
them or alter configuration as part of this documentation task.

## Recovery, risks and final delivery

Recover the task through its own handoff/W → this exact accepted P → accepted
Spec/OD-PF-001, original Project Critic and separate Owner P approval, plus the
exact Stage Critic/W binding. Do not discover authority from latest/root P or
ROADMAP. Keep status outside frozen Spec/P/W; substantial revisions repeat their
applicable gates. Git worktrees share storage/index-related effects; preserve
unrelated work and inspect base drift before integration.

Resource guidance must not assume `/tmp` is RAM-backed or impose HardwareLab's
absolute paths. Final CI metadata must not replace mandatory durable reports or
waive checks for a later H. Short pointers must still identify mission/target/
output. Candidate checks must fail closed without prescribing an unneeded runner.
Use short task-local checkpoints and selective reads; diagnose before retries.

Stop the affected action for source/evidence mismatch, unknown overlapping work,
missing permissions/independence, unavailable mandatory CI or material deviation.
Resolve bounded findings within P; escalate exceptions to Owner without invented
verdicts. Preserve work; no reset/cleanup/rollback execution is delegated. Any
later rollback is a separately reviewed normal change, not history rewriting.

Delivery identifies exact S/H, original role reports, executed checks, PR/current-H
CI, limits and preserved work. End at DELIVERY_READY for separate Owner acceptance
and merge decision. Shared integrated memory/ROADMAP reconciliation, issue closure,
HardwareLab rollout and all deployment are outside this P.
