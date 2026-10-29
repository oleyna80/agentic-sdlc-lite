# Work Block W — workspace-creation: S1 creation and entry procedure

## Identity, authority and verified entry

- Repository: `oleyna80/agentic-sdlc-lite`; origin `https://github.com/oleyna80/agentic-sdlc-lite.git`. Stable project/task ID: `workspace-creation`; stage: S1, the single stage in P §4.
- Authorized existing worktree: `/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/git-hook-connection`; task branch: `docs/workspace-creation`. The historical directory name supplies no authority. Do not create another real worktree to enter this task.
- Exact accepted Spec: commit `d1e75d7e8d31b37cfb7be68416919e28ebfedf04`, `docs/projects/workspace-creation/spec.md`, blob `12d01f34ae18d97c767ceabd90d733fd2f1e180e`. Acceptance/initiative intent: OD-WC-001 in the separate [Owner record](owner-decisions.md), including the authenticated request “принимаю. фиксируем и переходим к плану”.
- Exact parent P: commit `3161c40a74a55fd2f44e0f1ab1591b353b9aca5e`, `docs/projects/workspace-creation/plan.md`, blob `938bc3a27542dd9dae241bcded6068a3ba0cfa75`. Original independent Project Critic READY: commit `3cbe8f473d9d8b3205d33704b70c3952d78e9a89`, `docs/changes/workspace-creation/project-critic.md`, blob `1be11b2182a2bfd2637f2f36775aa8890b2b15db`.
- Separate exact-P Owner acceptance: OD-WC-002, originally committed at `fa18dde8bc6886030097f65cf7dd0394e0740a7a`, authenticated request “посмотрел спек и план. можем начинать”. The accepted bounds supersede P's historical pre-approval phase statements, without changing its frozen bytes.
- Separate hook dependency: authorized by “Да, отдельный локальный коммит и продолжить”; four-file checkpoint `00f4375a8e1e1335ae3bf7fb439beacd849e7478`. OD-WC-003 records that permission and the finished hook-task writer. Owner records at B: `docs/changes/workspace-creation/owner-decisions.md`, blob `0648a1b2d8e1f57248c549691186ec276c16fb0c`.
- Verified implementation baseline **B**: commit `07eb819a3dc4c778fc9f60685d0ed4fb40fb3ec4`, tree `e248befd709e0479c4f3c092fab39ab41d5c6a38`. It descends from exact P; original Spec/P/Project Critic and Owner evidence remain reachable. Full baseline ancestry/diff since `55ebee6cf26db99d708f089f297344ef0341f698` contains only this initiative's planning/evidence and the separately authorized four-file hook checkpoint.
- At B the workspace document is blob `52aa647dbd2eae2441887bf2e54e737f65255c1c`, SHA-256 `5e39d372d0b7e7a47461ea82db9e9f5a9980cd97710e56bdf398f7ffea629021`. README dependency blob: `d8c3930d53b3a511843c474a758a82b067b35dce`.
- Entry observations: clean worktree/index; no active overlapping writer in this architecture team. `core.hooksPath` and `extensions.worktreeConfig` are unset (exit 1, empty output); no effective `post-checkout` or commit hook file. Exact branch absence was verified (exit 2 from `show-ref --exists`); normal branch creation/switch at B succeeded, leaving the target clean and preserving existing refs/other worktrees. No hook/configuration bypass or activation occurred. Recheck affected facts before the next writer acts.
- Applicable architecture: [ADR-0002](../../decisions/0002-project-documentation-model.md), [root contract](../../../AGENTS.md), [one lifecycle](../../workflow/development.md). Real filesystem/Git/harness capabilities are available for preparation; each later mission must verify its own actual limits. GitHub publication/hosted CI rights are not established by local access.

## Finite outputs and ownership

Observable outcome: one readable operation guide with two explicit creation-base routes and complete guarded examples, retaining lifecycle/error/preservation requirements, validated against all accepted Spec AC-01–AC-14. This W refines P §4 S1; it adds no normative source, stage, permanent executable interface or assurance gate.

**Only normative source write path:** `docs/workflow/workspaces.md`. The bounded Coder owns it exclusively after independent Stage Critic READY on this exact committed W. Spec/P/W and previous original reports remain frozen subjects.

Exact task-evidence paths and single writers:

| Path | Author/executor; Git recorder |
| --- | --- |
| `docs/changes/workspace-creation/work-block.md` | Architecture Orchestrator prepares/commits W before its review. |
| `docs/changes/workspace-creation/owner-decisions.md` | Orchestrator records only actual attributable decisions. |
| `docs/changes/workspace-creation/handoff.md` | Orchestrator records exact bindings, writer transfer, checkpoints and next action. |
| `docs/changes/workspace-creation/stage-critic.md` | Independent Stage Critic alone authors; Orchestrator commits the unchanged original. |
| `docs/changes/workspace-creation/implementation.md` | Bounded Coder authors change rationale/checks and subsequently observed S; Orchestrator commits evidence. |
| `docs/changes/workspace-creation/cli-validation.md` | Separate project Codex CLI Verifier alone authors experiments/AC results; Orchestrator commits the unchanged original. |
| `docs/changes/workspace-creation/reviewer.md` | Separate independent Reviewer alone authors exact-S review; Orchestrator commits the unchanged original. |
| `docs/changes/workspace-creation/delivery.md` | Orchestrator records S/H mapping, complete diff, original reports and actual CI/Owner handoff. |

The existing Project Critic original is read-only. Repeat reviews retain prior originals by reachable commit/blob and identify each new subject; never rewrite a finding into another verdict. Coder, CLI Verifier and Reviewer are distinct native missions. One recorder at a time stages explicit task paths; the independent CLI Verifier performs no commit/push or normative write in the real repository.

Current architecture preparation ends with reviewed W and a concrete CLI handoff. After that handoff the project CLI may execute the bounded Coder mission; further assurance uses separate missions, not its self-review. Record any Orchestrator/recorder transfer in the handoff before that writer acts. Shared filesystem/native role separation is not OS isolation.

## Implementation boundaries and preservation

1. Add short navigation for existing-workspace entry/recovery, stable continuation, creation and unchanged deletion. Link existing lifecycle/memory requirements rather than copying or relaxing them. No full preflight per shell line in a stable bounded session; recovery/target/ref changes restore affected checks before writes.
2. Distinguish approved locally available exact commit (no mandatory fetch or `origin/main` equality) from explicitly freshness-bound named ref (authorized fetch, then exact expected ref comparison). Include approved stage descendants without making ancestry approval. Never choose the first route to evade a required freshness check.
3. Permit known unrelated staged/unstaged/untracked/ignored manager state when relevant state/index and active checkout effects are preserved. Unknown overlap stops; no blanket recursive ignored-content scan for creation. Keep clean-main advice distinct from a creation prerequisite.
4. Keep fail-closed repository/root/expected ref, approved exact commit, canonical independently approved parent/owner, destination/symlink/registration and absent valid branch checks in a complete guarded example. Capture command exit status before interpreting output; distinguish absence from inspection failure. Repeat checks actually invalidated by an intervening mutation.
5. Inspect effective relevant checkout-hook behavior, including worktree settings; link the existing hook-connection section. Unknown/out-of-scope effects stop before add. Inspect created root/branch/exact HEAD/registration/state and relevant manager/index preservation. Hook/creation failure requires actual numeric exit and partial state, with no automatic reset/removal/retry.

Preserve these B intervals byte-for-byte: `## Connecting Git hooks\n` up to but excluding `## Safe cleanup (after Owner-approved disposition)\n`, SHA-256 `2f24416d380628749d7070d75a8b6e7715ea12e4f9cef8bd240f1a7e696b3b0e`; cleanup heading through EOF, SHA-256 `7c591074b247e75531f429f32456093302f053ab8fdf1e2c9ff30a6562d591d4`. No cleanup source/policy change. Check README's existing hook anchor still resolves without editing README.

Excluded: other normative source, root contract/lifecycle/templates/ADRs, integrated memory, frozen historical contracts, permanent helpers/tests, real hook/configuration/CI/security changes, native agent hooks, application/HardwareLab/framework/dependency work, real worktree creation/deletion, history rewriting, merge and deployment.

## Required checks and independent source assurance

The single mandatory runtime matrix is [exact P §5](../../projects/workspace-creation/plan.md#5-expected-test-outcomes-and-evidence), evaluated against Spec AC-01–AC-14. Do not replace it with a smoke test or add a second suite. Required rows cover available base/stage descendant without fetch; fresh-ref success/error/drift and relevant post-fetch changes; each manager-data category; all path/ref/status/base failures including matching stdout with nonzero exit; native permitted/unknown/error/dirty checkout-hook cases and partial state; real CLI entry/continuation/target-ref-change recovery; protected bytes/static checks and delivery.

- Coder checks the full changed document, local links/anchors, all affected Bash fences using `bash -n`, whitespace and complete tracked/untracked content, then the exact staged source diff. Commit the complete normative change as source candidate **S** on the authorized task branch; record S afterward in `implementation.md`. Syntax is not runtime proof. No uncommitted source can substitute for S.
- Transfer an exact-S mission to a distinct project Codex CLI Verifier. It reads only S as the tested source, records its source blob plus extracted example bytes/hashes, and tests every P §5 runtime row. All synthetic repos, bare remotes, local fetches, hooks, wrappers, commits and fixture worktrees stay under one new task-owned `mktemp -d` system-temporary root, resolved and inventoried before fixture mutation. Scripts/results remain there for inspection with paths/hashes in the report. No real remote fetch, hook installation or source-repo configuration writes. Retain partial state; no fixture/worktree automatic deletion.
- In that separate CLI session, enter the existing real task workspace, continue a bounded evidence-writing sequence, and perform a real target/ref change only within disposable fixtures. Restore actual task root/ref and affected preflight before the real report write. Record concrete false stops, interruption repeats and unnecessary context reads separately from required checks. Actual compaction is optional NOT_RUN unless observed; do not fabricate time/token gains.
- The report identifies expected/actual results, numeric statuses, diagnostics, mutation order, relevant before/after state and index bytes, Git/Linux versions/effective hook source, failures and NOT_RUN coverage. Mandatory missing coverage prevents PASS; fixture success proves only tested cooperative behavior.
- A separate Reviewer inspects the same exact S, full B..S source diff, procedure readability/consistency, protected bytes and evidence limitations. Final source gates are original Reviewer READY and CLI Verifier PASS on the same S. No mission may silently adopt a later HEAD.
- Correctable findings within unchanged P/W return to the Coder for new S and affected tests plus final same-new-S independent assurance. Preserve previous candidates/reports. Source-test design or behavior changes after assurance also require new S; evidence-only commits do not inherit assurance for changed source.

## Delegated actions, stops and delivery

The accepted P/OD-WC-002 permits bounded local source/evidence commits, conforming rework and later non-force push only to `origin` branch `docs/workspace-creation`, one task PR to `main` and its actual Lite Checks. Coder may commit S; the designated Orchestrator records other evidence and performs delivery. Check actual remote/CI capabilities before publication; unavailable mandatory capability blocks the affected delivery gate. No independent hook-task publication is added by OD-WC-003.

Before each mission's first write, verify actual root/repository, authorized branch/HEAD, current staged/unstaged/untracked state, exact W → P → accepted Spec/Owner evidence, original Critic subjects, source applicability, permissions and writer ownership. Matching paths/blobs alone, copied approval, a latest/root plan, ROADMAP or another branch's memory never supply authority. Unexpected state or stale bindings stop the affected action; preserve unrelated work.

Bounded choices include wording, example structure and sufficient Linux/GNU checks inside the agreed contracts. Prefer a complete readable example over a line-count target. Material scope/Spec/P/security change stops for affected Owner/Project gates. Conforming W-only correction requires a new committed W and independent Stage Critic, without an Owner-per-W gate. Never bypass hooks, force refs, mutate main, clean/stash/reset, delete state or disclose credentials.

Rollback means stop and preserve source/evidence/partial fixture state. Authorized ordinary corrective commits may follow; destructive recovery is not delegated.

Delivery requires all AC, original same-S reports, full B..H and PR diff inspection (including the declared hook dependency), verified evidence-only S..H and invariant source/Spec/P/W blobs. Record subsequently observed **H** in later evidence/PR, not its own future SHA in a frozen record. Run/inspect actual current-H Lite Checks; local replay is not hosted success. Distinguish stage delivery readiness from task completion, Owner acceptance, merge and deployment. This W grants no merge/deploy or shared-memory integration authority.

## Frozen review boundary

Commit complete W before independent Stage Critic. Its actual commit/blob, original Stage Critic verdict and later status belong in separate handoff/report records. Any changed W requires a fresh exact-W review. Stage READY does not replace actual conformance, permissions or independent source assurance.
