# Project Plan P — workspace-creation

## 1. Identity and accepted design

- Repository: `oleyna80/agentic-sdlc-lite`; stable project ID and task ID: `workspace-creation`.
- Outcome: an operation-oriented workspace procedure that permits creation from an approved available exact commit without unnecessary fetch or rejection of unrelated manager data, while preserving target/base/error checks and accounting for checkout hooks.
- Accepted Spec: `docs/projects/workspace-creation/spec.md`, commit `d1e75d7e8d31b37cfb7be68416919e28ebfedf04`, Git blob `12d01f34ae18d97c767ceabd90d733fd2f1e180e`.
- Owner acceptance and initiative provenance: [OD-WC-001](../../changes/workspace-creation/owner-decisions.md), attributable current-conversation request “принимаю. фиксируем и переходим к плану”, following acceptance of the operation-oriented architecture. The decision records the accepted file SHA-256 as well as its committed subject.
- Starting committed tree: `f3fad9a00b914edeb1c4eda750131e9703b8a7ae` at the accepted-Spec commit. Normative baseline before the pending hook-documentation correction: `55ebee6cf26db99d708f089f297344ef0341f698`.
- Architectural basis: [ADR-0002](../../decisions/0002-project-documentation-model.md); one root contract and [one lifecycle](../../workflow/development.md). This P proposes finite work and delegated bounds; it does not approve itself or grant actual platform rights.

## 2. Finite scope and ownership

The only normative implementation path is `docs/workflow/workspaces.md`. Change its creation example/rules and existing-workspace navigation; keep the corrected hook-connection section and everything from the cleanup heading onward byte-identical to the entry baseline defined below. Preserve the current lifecycle, memory obligations, actual permission boundaries and historical exact contracts.

Exact planning and task-evidence paths:

| Path | Responsible author/executor and Git recorder |
| --- | --- |
| `docs/projects/workspace-creation/spec.md` | Accepted frozen subject; no implementation edits. |
| `docs/projects/workspace-creation/plan.md` | Orchestrator; complete candidate committed before Project Critic. Substantive revision is a new P/review/Owner cycle. |
| `docs/changes/workspace-creation/owner-decisions.md` | Orchestrator records attributable Owner decisions; never fabricates approval. |
| `docs/changes/workspace-creation/handoff.md` | Orchestrator; current task observations, bindings, checkpoints and next action. |
| `docs/changes/workspace-creation/project-critic.md` | Independent Project Critic; single report writer, Orchestrator may commit the unchanged original. |
| `docs/changes/workspace-creation/work-block.md` | Orchestrator; one actionable committed W for S1 after exact-P approval and entry readiness. |
| `docs/changes/workspace-creation/stage-critic.md` | Independent Stage Critic; single report writer, Orchestrator may commit the unchanged original. |
| `docs/changes/workspace-creation/implementation.md` | Bounded Coder records source changes, exact S and focused checks; Orchestrator may commit evidence. |
| `docs/changes/workspace-creation/cli-validation.md` | Independent project Codex CLI Verifier records experiments and AC results; Orchestrator may commit the unchanged original. |
| `docs/changes/workspace-creation/reviewer.md` | Independent Reviewer; single report writer, Orchestrator may commit the unchanged original. |
| `docs/changes/workspace-creation/delivery.md` | Orchestrator records source/evidence delta, delivery H, actual CI and Owner handoff. |

Each report retains its original Git revision. A repeat review may append a separately identified new report at its assigned path, retaining prior exact originals by reachable commit/blob; do not rewrite old findings into a new verdict. Reviewer, Verifier and Coder must be distinct native missions. No concurrent writer may edit an overlapping path.

Exclude: cleanup policy/source changes; root contract/lifecycle/memory/template/ADR changes; broad context-loading reform; permanent helper scripts/test infrastructure; native agent hooks; hook/configuration/CI/security-setting changes; HardwareLab/framework/dependency maintenance; integrated memory; merge and deployment. Existing hook-task changes remain that task's work and are not silently committed through this P.

## 3. Concrete dependency and implementation entry

Planning and Project Critic can proceed while the hook task has uncommitted changes. Implementation cannot. The hook task must first deliver a separately authorized committed checkpoint retaining the corrected hook documentation and settle its writer ownership. No merge is required merely to satisfy this dependency. This P does not authorize committing or publishing that other task.

An implementation baseline B is acceptable only when all of these predicates hold:

1. B is a locally available committed descendant of this exact candidate P's eventual commit; all original Spec/P/review/Owner evidence remains reachable and applicable. W records B's actual commit/tree and relevant blobs, never a mutable branch name alone.
2. At B, `docs/workflow/workspaces.md` is exactly Git blob `52aa647dbd2eae2441887bf2e54e737f65255c1c`, file SHA-256 `5e39d372d0b7e7a47461ea82db9e9f5a9980cd97710e56bdf398f7ffea629021`. These are the already inspected hook-task draft bytes, made committed by that task under its own authority. Creation and cleanup at this baseline remain the pre-initiative procedures.
3. The hook section is the byte interval starting with `## Connecting Git hooks\n` and ending immediately before `## Safe cleanup (after Owner-approved disposition)\n`; SHA-256 `2f24416d380628749d7070d75a8b6e7715ea12e4f9cef8bd240f1a7e696b3b0e`. From the cleanup heading through EOF, SHA-256 is `7c591074b247e75531f429f32456093302f053ab8fdf1e2c9ff30a6562d591d4`. Preserve both intervals exactly in S.
4. Full B ancestry/diff is inspected: only this initiative's planning/evidence and the separately authorized hook task have been added to the starting baseline. The normative contract, lifecycle, actual configuration and other source files are unchanged. Unrelated integration, changed expected document bytes or uncertain provenance requires reassessment and the affected revised P/Owner gates, not silent adaptation.
5. The hook task has stopped writing the target; the preparation worktree/index are clean of its pending work. Relevant Git settings and any checkout hook behavior are inspected before an authorized ref change. Actual tool/filesystem permissions permit the bounded work.

Use the existing verified worktree `/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/git-hook-connection` for preparation. After the entry predicates and exact-P approval, a local task branch `docs/workspace-creation` may be created from recorded B and selected in that same clean worktree. Verify branch absence, root/identity, base and checkout effects before switching; stop on collisions. No real worktree creation, removal or branch deletion is delegated by this P. If another workspace or branch is needed, resolve its scope before the affected mutation.

This route avoids depending on the proposed creation rules to bootstrap their own implementation. The path's historical name does not confer task authority. Before entering the project CLI, record its actual task branch/root and single-writer handoff.

## 4. One implementation stage, sequential execution

| Stage | Entry and finite outputs | Acceptance and gates |
| --- | --- | --- |
| S1 — revise and validate workspace creation/entry | Exact accepted Spec, committed Project-Critic-READY P and separate Owner exact-P approval; baseline B and ownership predicates above. Orchestrator commits conforming W; independent Stage Critic examines that exact W. Bounded Coder changes only the workspace document and records source S. Independent CLI Verifier tests S; separate Reviewer reviews that same S. Orchestrator delivers evidence H. | All Spec AC-01–AC-14, invariant section hashes, original same-S Reviewer READY and Verifier PASS, evidence-only S..H and actual applicable CI at final H. Missing evidence is reported; it is not synthetic PASS. |

Execute sequentially:

1. Bind W to exact Spec/P/Owner and original Project Critic evidence, exact B, named writers/report paths, fixture bounds and the test matrix below. Do not prepare actionable W before the dependency is satisfied. W-only conforming rework needs a new exact W/Stage Critic, not Owner approval per W.
2. After Stage Critic READY, Coder produces the concise operation guide, two explicit base routes, preservation rules, complete guarded examples and postconditions in the one normative path. Reuse existing Linux/GNU checks where sufficient; factor repetition inside examples only when it improves readability and preserves error handling. Do not introduce a permanent executable interface.
3. Coder performs static checks and source review, then commits candidate S. Transfer an exact-S testing mission to the project's Codex CLI; give it the task/root/bindings, finite fixture operations, expectations, source invariant and evidence path. CLI writes no normative source and does not commit/push from the real repo.
4. CLI Verifier performs disposable tests and the bounded native-session entry/continuation scenario. Reviewer separately inspects exact S and the full B..S source change, consistency and evidence limits. Neither can adopt a changed HEAD as S without re-binding. If correction is needed, Coder produces new S and repeats affected tests plus same-new-S final independent assurance.
5. Orchestrator preserves original reports, checks all AC and S..H classification, performs authorized delivery/CI and hands the exact reviewed P/S/H/CI evidence to Owner. No intermediate Owner-per-stage or forced merge is introduced.

## 5. Expected test outcomes and evidence

Temporary testing uses a new task-owned directory created by `mktemp -d` under the system temporary directory, with its resolved path/inventory recorded before any fixture mutation. All test repositories, local bare remotes, hooks, injected-error wrappers, synthetic commits and linked fixture worktrees stay inside it. No real remote fetch is needed for tests. Fixture hooks are clearly synthetic and never installed in the source repository.

Do not add a permanent test suite. Retain disposable scripts/results for inspection, record their paths/content hashes and include concise expected/actual evidence in the assigned report. Do not automatically delete the fixture directory or any worktree; cleanup is outside this P.

| Cases / Spec AC | Required observations |
| --- | --- |
| Available exact base — AC-02, AC-04 | Approved available commit and approved stage descendant both create at the exact SHA without fetch. Missing/non-commit/unexpected SHA, wrong repo/root/branch/HEAD stop before add. Inspect call order, not final exit alone. |
| Fresh ref — AC-03, AC-07 | Fixture-local fetch follows preflight; expected ref permits add. Fetch failure, ref drift and injected relevant post-fetch state change stop before add. Record fetch's actual local effects separately. |
| Preserved manager state — AC-05 | Separate staged, unstaged, untracked and ignored fixtures succeed without modifying relevant pre-state/index bytes; uncertain ownership/overlap stops. Use harmless synthetic ignored data, never actual secrets. |
| Collision/path/ref failures — AC-06, AC-07, AC-08 | Destination directory, dangling symlink, stale registered path, invalid/existing branch, noncanonical parent and wrong expected owner refuse before add. Inject status/ref/base inspection failures, including matching stdout with failure status; errors cannot pass as equality or absence. |
| Native checkout effects — AC-09, AC-10 | Real fixture `git worktree add` runs permitted synthetic `post-checkout`. Verify execution and post-state, including a bounded hook that produces unexpected dirt and a hook error. Unknown/out-of-scope hook behavior refuses before invocation. Observe actual exit and partial branch/path/registration state; no automatic recovery deletion/reset. |
| Native CLI procedure — AC-01, AC-11, AC-14 | In the independent project CLI session, enter the already existing verified target and continue a bounded evidence-writing sequence. Exercise a real target/ref switch using only disposable fixture workspaces, then restore the real task target and its affected preflight before writing the report. No new real worktree or per-line full preflight. Report concrete false stops/repetition/context-loading costs. |
| Source/static/delivery — AC-12, AC-13 | Protected interval hashes equal B; only authorized normative source changed. Check links/anchors, all affected Bash fences with `bash -n`, complete tracked/untracked bytes before staging, exact staged diff afterward and full B..H change. Actual CI runs on H; syntax checks are not runtime proof. |

All matrix rows are required. Real native compaction is not mandatory for this initiative: a real target/ref change satisfies the AC-11 restoration scenario; compaction remains NOT_RUN unless actually observed. Do not claim quantified speed/token gains from qualitative friction evidence. Git/Linux versions, effective fixture hook source, exact extracted example bytes, scenario expectations, numeric status/diagnostics and relevant before/after state accompany results.

## 6. Proposed delegation and actual limits

After separate Owner approval of exact P, the proposed delegated bounds are: local task-branch creation/switch as above; local W/source/evidence commits; ordinary conforming rework; disposable fixture operations above; non-force push only to `origin` branch `docs/workspace-creation`; a PR to `main`; and inspection of that PR's actual Lite Checks. A new push updates H and requires its own actual current-H CI result. Source/CLI reports are written only at their assigned paths by the named role; Orchestrator stages/commits reviewed task files explicitly.

These are proposed bounds for the Owner's exact-P disposition, not present permission. This planning instruction currently authorizes local Spec/P/evidence commits and independent Project Critic only. Do not push or implement now. Never bypass hooks, widen Git settings, change credentials/platform controls, force-update refs, clean/stash/reset, mutate main, delete real/fixture worktrees or deploy. If actual access or a mandatory role/CI capability is unavailable, stop the affected delivery gate with truthful evidence.

Feasibility at planning time: `git`, `bash`, `python3`, `codex` and `gh` are installed locally; `gh auth status` reports active GitHub authentication. The checked-in `.github/workflows/lite-checks.yml` runs on PRs and main pushes; source identity remains `oleyna80/agentic-sdlc-lite`, and this P requires no workflow fix. Local filesystem capability is available; target push permission, branch protection and current CI success have not been established by tool presence or authentication alone. Before publishing verify actual remote access and applicable CI availability. An unavailable mandatory hosted gate prevents delivery readiness; it is not waived by local fixtures.

Independent Project/Stage Critic, Reviewer and CLI Verifier are separate native missions; shared filesystem and role briefs do not supply OS isolation. Original role reports disclose their actual separation, commands and limits. Scope/cost is controlled by one normative file, one stage and one bounded fixture matrix; broaden testing only for changes, failures or unresolved concerns.

## 7. Recovery, revision and delivery

Recover the authorized task and its handoff, then verify exact W → repository/project/P → accepted Spec/OD-WC-001, original Project Critic and separate Owner exact-P approval, W conformance and its own Stage Critic. Record commit/path/blob subjects and actual branch/base in W/evidence. No latest/root P, folder scan, ROADMAP or another branch's matching blob supplies authority.

Spec/P revisions remain frozen at their original subjects. Material requirement/design/P changes require the affected Owner/Critic cycle; conforming W changes require fresh Stage Critic. Do not backfill approvals. Preserve unrelated dirty work and other worktrees; stop the affected action on unexpected drift. Continue only after its source and applicable authority are resolved.

S includes the complete normative change and source-test design; final Reviewer READY and CLI Verifier PASS must bind that exact S. Subsequent H may add only original evidence/status records: inspect `git diff S..H`, preserve source/spec/P/W blobs and record the mapping in delivery evidence. If behavior, requirements, source tests or gates change, create new S and repeat affected assurance. Record a subsequently observed H in later evidence/PR rather than inserting a self-referential SHA into a frozen subject.

Delivery readiness requires all AC, original independent reports, actual Lite Checks success at current H and full PR diff inspection. Local replay of the current workflow bodies may diagnose CI but is never reported as hosted success. Final acceptance/merge requires separate Owner GO; deployment is excluded. Shared memory reconciliation is a separate integration task.

Rollback here means stop further changes and preserve the inspected source/evidence/partial state. Do not reset/rewrite history or auto-remove created state. Corrective source commits inside unchanged P are permitted only after their applicable W/gates; destructive or out-of-scope recovery requires Owner disposition.

## 8. Review boundary

Commit this complete P before independent Project Critic. The Critic checks exact P/spec subjects, acceptance provenance, scope/dependency feasibility, testability, independence, delegated bounds and delivery route, returning READY for Owner review or REWORK. Store that original report separately; do not write the verdict, own commit ID or later approval into P. Owner then separately accepts/rejects the exact reviewed P. No W, source edit or fixture experiment starts merely because P was committed or Project Critic returned READY.
