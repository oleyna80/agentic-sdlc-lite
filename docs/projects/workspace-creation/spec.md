# Requirements + Design — workspace-creation

## Initiative identity and intent

- Repository: `oleyna80/agentic-sdlc-lite`.
- Stable project ID: `workspace-creation`; task ID: `workspace-creation`.
- Product fit: [Project Brief](../../../PROJECT_BRIEF.md). Lite supplies cooperative instructions and artifacts; it introduces no workspace controller or security isolation.
- Observed committed baseline: `55ebee6cf26db99d708f089f297344ef0341f698`.
- Owner intent: simplify workspace creation and entry proportionately, retaining exact authorized targets and error handling. In the architecture discussion the Owner agreed to separate creation, existing-workspace entry, stable-session continuation and deletion; to defer cleanup changes; and then instructed: “согласен. начинай.” This authorizes preparation of this proposal, not acceptance of its previously unseen exact bytes or an implementation P.
- The current checkout also contains uncommitted hook-connection documentation. Its provenance and preservation boundary are recorded in the [task handoff](../../changes/workspace-creation/handoff.md); it is not an approved integrated baseline.

## Problem and current evidence

The canonical [workspace procedure](../../workflow/workspaces.md) already permits a stable bounded sequence without repeating full preflight for every line. It also prefers separate worktrees when concurrent tasks must coexist, rather than requiring one for every task.

Its creation example nevertheless requires a fetch, rejects every tracked/untracked/ignored manager entry and equates the approved base with `origin/main`. The accompanying text allows an independently approved stage descendant. The code and prose therefore express different base contracts. The example also repeats broad inspections around the fetch even when an already available exact approved commit would suffice.

These are source observations. Historical fixture results are supporting context only; this proposal does not claim a new runtime validation. Creation can invoke Git `post-checkout`, so configuration, executable behavior and possible side effects are part of the creation boundary.

## Requirements and design

### R1 — Separate operations without a second lifecycle

Keep one canonical workspace procedure with a short operation-oriented entry guide:

| Operation | Required outcome |
| --- | --- |
| Enter or recover an existing workspace | Establish task, repository/root, branch/HEAD, staged/unstaged/untracked state, scope and applicable task evidence before writes. |
| Continue a stable bounded session | Reuse established identity/scope; inspect the result of consequential operations. Repeat affected preflight after recovery, target/ref change or unexpected changes. |
| Create a workspace | Verify creation authority, exact approved base, destination, branch availability, relevant manager state and active checkout effects; inspect the resulting workspace. |
| Delete a workspace | Follow the existing separately authorized cleanup procedure, unchanged by this initiative. |

Root contract, lifecycle, memory/recovery obligations and significant-work assurance remain in their existing canonical documents. The guide links to them; it neither duplicates nor relaxes their rules. Reducing mandatory context loading is a separate future discussion.

### R2 — Two explicit base contracts

1. **Available exact commit:** creation uses an explicitly approved full commit SHA already present in the verified repository. Verify that this SHA resolves to a commit and is the authorized base for this task. No fetch or equality with current `origin/main` is inherently required.
2. **Fresh named ref:** when the mission requires a current remote ref, authorize and perform that fetch as a separate Git mutation after its identity/scope preflight. Resolve the specified ref and require equality with the exact expected approved SHA. Unexpected movement requires disposition, not automatic adoption of the fetched value.

An approved stage descendant can use the first contract. If a named stage ref is part of the approval, verify its exact identity too. Commit existence, ancestry, a current ref value or a branch name alone does not establish approval. Do not replace exact comparison with ancestry-only acceptance. A mission requiring freshness cannot silently select the available-commit route to avoid a mismatch or fetch failure.

### R3 — Preserve unrelated manager state

Inspect manager identity, expected branch/HEAD and staged/unstaged/untracked state. Known unrelated changes in its checkout/index do not alone prevent creating a sibling worktree from an approved commit. Known ignored local dependencies, build output and environment files likewise do not alone forbid creation. Keep the recommendation for a clean persistent main checkout distinct from this operation's safety prerequisites.

Establish which state the operation and its active hooks can affect. If ownership, overlap or preservation is uncertain, stop the affected creation; do not reset, clean, stash, stage or rewrite existing work. No blanket recursive ignored-content inventory is required merely to create an unrelated sibling. Where ignored paths are relevant, inspect only what is needed and do not print secrets. The strict ignored-file inventory for deletion remains unchanged.

### R4 — Short explicit fail-closed creation boundary

Keep the essential observations immediately before creation: verified absolute manager/repository identity and expected ref state; independently approved existing canonical parent and owner; destination within that parent; no path/symlink or registered-worktree collision; valid absent new branch; exact approved available base; established relevant state and hook effects. Existing GNU/Linux path checks may be reused; their portability limits must remain explicit.

If fetch or another intervening operation can invalidate these observations, repeat the affected checks before creation. Stable observations need not be repeated solely to lengthen a recipe. Preserve command errors separately from stdout comparisons. Distinguish absent refs from inspection failure; neither blank output nor any nonzero status automatically means safe absence. Never extract the final mutation line from its required checks or derive expected facts from the untrusted target itself.

### R5 — Hooks and postconditions

Determine the effective hook source and whether creation would execute a relevant `post-checkout` hook, accounting for worktree configuration. Inspect only relevant configuration/code; do not activate, replace or bypass hooks. Unknown or out-of-scope checkout effects must be resolved before the affected creation. Link to the hook-connection section instead of duplicating its configuration procedure.

After creation inspect actual root, branch, exact HEAD, registration and staged/unstaged/untracked state. Compare relevant manager/index state with the observed pre-state; unexpected hook changes or other deviations are not successful acceptance. A zero command exit is insufficient evidence of correct hook behavior or preservation. Ignored outputs require inspection when the hook/operation can affect them.

If creation or a hook fails, report actual partial state, including any created branch/directory/registration. Do not assume nothing changed and do not automatically remove, reset or retry over the partial result. Any recovery mutation must have its own applicable authority.

### R6 — Minimal documentation footprint

Future normative implementation is limited to `docs/workflow/workspaces.md`: concise rules, operation navigation and complete guarded examples. Preserve the hook-connection section and cleanup procedure as separate work. Do not introduce a permanent script, controller, registry, lock service, hook implementation, CI change or agent-specific adapter.

If keeping necessary checks prevents a shorter shell example, prefer clear rules and a complete readable example over a line-count target. This proposal changes creation semantics deliberately; it is significant work even though the implementation is Markdown.

## Observable acceptance criteria and future test design

Define expected results before experiments. Use only disposable fixture repositories and fixture-local hooks; bind the report to the exact tested document and extracted example bytes. Record numeric exit codes, diagnostics, mutation order and relevant before/after inventories. Do not put environment values or secret file contents into evidence.

| ID | Required observable result after authorized implementation |
| --- | --- |
| AC-01 | Operation guide distinguishes entry/recovery, stable continuation, creation and unchanged cleanup; links to the existing lifecycle/memory rules without adding gates. |
| AC-02 | Creation from an available approved exact commit succeeds without fetch, including an approved stage descendant distinct from `origin/main`. Hook-free success leaves the new workspace clean. |
| AC-03 | Fresh-ref route fetches only after applicable preflight; an unexpected ref or fetch error stops before `worktree add`. Report any fetch effects separately. |
| AC-04 | Missing/non-commit/wrong base and wrong repository/root/expected branch or HEAD stop before creation. Ancestry or a matching filename cannot substitute for the approved exact base. |
| AC-05 | Separate fixtures with known unrelated staged, unstaged, untracked and ignored manager data allow creation; relevant manager/index bytes and state remain preserved. Unknown or overlapping state stops the affected operation. |
| AC-06 | Existing destination, dangling symlink, registered-worktree collision and occupied/invalid branch stop before creation. Branch inspection error also stops; it is not treated as absence. |
| AC-07 | Noncanonical/symlinked parent or owner mismatch stops before creation. A relevant change during a permitted intervening operation is detected by the affected recheck. |
| AC-08 | Failed status/ref/base inspection cannot pass on empty or matching stdout. Record both numeric error and absence of `worktree add` for pre-creation failures. |
| AC-09 | Native fixture `git worktree add` demonstrates permitted `post-checkout` execution. Out-of-scope hook effects stop before execution; permitted observable hook changes are detected by postchecks. No hook is bypassed. |
| AC-10 | An induced creation or hook failure records actual partial state and does not trigger automatic cleanup. Do not prescribe a hook-failure exit or rollback outcome before observing Git's actual behavior. |
| AC-11 | Existing-workspace entry and stable continuation are exercised in a project CLI session: no new workspace is required for entry, no repeated full preflight per line, and relevant preflight is restored after a real target/ref/context change. Synthetic recovery and actual compaction are labelled separately. |
| AC-12 | Hook-connection section and cleanup procedure remain byte-identical to the explicitly selected implementation baseline. Other normative sources, shared memory, frozen historical contracts, hooks and real configuration remain unchanged. |
| AC-13 | Markdown links, all affected Bash fences, tracked/untracked content and full candidate diff pass appropriate checks. Independent same-source Reviewer/Verifier and actual delivery CI follow the existing lifecycle; syntax alone is not runtime validation. |
| AC-14 | CLI report distinguishes required checks, repeated checks caused by interruption, false stops and unnecessary context reads, with concrete examples. Do not infer token/time savings without measurement or demand improvement at the expense of preserved checks. |

Fixtures demonstrate cooperative behavior under tested conditions. They do not prove race-free filesystem operations, OS isolation, real Owner authorization, arbitrary hook safety or production suitability. Actual native compaction and other unexecuted cases remain NOT_RUN, with mandatory coverage resolved through the approved plan rather than fabricated PASS.

## Alternatives, dependencies and risks

- Retaining the current example leaves the base-contract contradiction, mandatory fetch and blanket dirty-state rejection unresolved; rejected as the target design.
- Removing path/base/error checks wholesale would shorten instructions but lose the required creation boundary; rejected.
- Adding a permanent helper could reduce repetition but would add a software interface and maintenance obligations to a native, instruction-driven harness; outside this initiative.
- Simplifying cleanup together with creation combines preservation risks with destructive operations; deferred.
- Source changes overlap `docs/workflow/workspaces.md` with the earlier hook task. Before implementation establish one writer and an exact baseline retaining those hook corrections, or an explicitly reconciled dependency. Never silently discard them or treat their current uncommitted state as integrated authority.
- Arbitrary hooks can have effects beyond checkout state. Inspect their actual bounded behavior; do not claim generic safety from a path check or marker fixture.

Applicable architectural basis: [ADR-0002](../../decisions/0002-project-documentation-model.md), project-local exact Spec/P and bounded W. No new ADR is necessary unless later planning identifies a separate durable decision.

## Scope and approval boundary

Included: the design above, future workspace-creation/entry documentation and disposable validation, with task-local evidence. Excluded: deletion-policy changes, broad context-loading reform, native agent hooks, hook activation/configuration changes, application/framework/dependency maintenance, HardwareLab migration, main writes, commits/publication without applicable authority, merge and deployment.

The proposed exact planning paths are `docs/projects/workspace-creation/spec.md` and subsequently `docs/projects/workspace-creation/plan.md`; the task checkpoint is `docs/changes/workspace-creation/handoff.md`. The future P must enumerate stage W, independent reports, fixture bounds, delivery actions and exact write ownership before execution. This Spec is not P or W and grants no implementation authority.

After review, record Owner acceptance of the exact committed Spec separately with repository, commit/path/blob and attributable request. Prepare formal P only after that acceptance; preserve the existing Project Critic, Owner exact-P, Stage Critic, same-source assurance and delivery boundaries. Approval, progress and verdicts stay outside this document.
