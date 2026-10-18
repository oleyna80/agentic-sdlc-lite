# Git Branches and Workspace Lifecycle

## Default

Keep a persistent, clean checkout of `main`. Use a short-lived task branch, preferably in a separate Git worktree when multiple tasks must coexist. A worktree shares Git objects and refs with the repository; an independent clone does not.

Example (run manually only after the required repository/base, scope, destination and permission checks):

```bash
# Set these explicitly from the approved mission; do not infer them from shell cwd.
managing_worktree=/absolute/verified/managing-worktree
new_worktree_path=/absolute/approved/worktrees/my-task

# Verify the existing managing checkout, its expected branch/HEAD and ownership.
git -C "$managing_worktree" rev-parse --show-toplevel
git -C "$managing_worktree" remote get-url origin
git -C "$managing_worktree" branch --show-current
git -C "$managing_worktree" rev-parse HEAD
git -C "$managing_worktree" status --short --branch --untracked-files=all
git -C "$managing_worktree" worktree list --porcelain

# Only after explicit fetch authority, verified target identity and clean ownership:
git -C "$managing_worktree" fetch origin
# Recheck the expected base/ref and approved absolute destination (including collisions)
# before creating the worktree; the destination must not contain unrelated work.
git -C "$managing_worktree" worktree add -b feat/my-task "$new_worktree_path" origin/main
# Verify the newly created root, branch, HEAD and status before any source write.
git -C "$new_worktree_path" rev-parse --show-toplevel
git -C "$new_worktree_path" branch --show-current
git -C "$new_worktree_path" rev-parse HEAD
git -C "$new_worktree_path" status --short --branch --untracked-files=all
```

These are illustrative commands, **not** agent authorization. First establish expected values independently of the discovered checkout, confirm permitted parent/destination, branch availability, base and ownership, and stop on any mismatch.

## Before touching an existing workspace

Run read-only inspections:

```bash
# Replace this example value with the independently verified absolute task root.
task_worktree=/absolute/verified/owned-task-worktree
git -C "$task_worktree" worktree list --porcelain
git -C "$task_worktree" status --short --branch --untracked-files=all
```

Never overwrite a directory because it looks obsolete. Untracked/ignored files may contain user work. If active state or ownership is unclear, stop.

## Safe cleanup (after Owner-approved disposition)

Bind **both** cleanup variables from the separately approved ownership/cleanup record. The example paths below are placeholders, **not verified facts or authorization**; substitute real absolute values and inspect the read-only commands before any removal:

```bash
managing_worktree=/absolute/verified/managing-worktree
owned_worktree_path=/absolute/approved/worktrees/my-task

# STOP unless both substituted values are absolute and distinct.
[[ "$managing_worktree" == /* && "$owned_worktree_path" == /* ]]
[[ "$managing_worktree" != "$owned_worktree_path" ]]

# STOP unless observed identity, branch/HEAD, registered owned path and contents
# all match the approved cleanup record; any failed command is a STOP.
git -C "$managing_worktree" rev-parse --show-toplevel
git -C "$managing_worktree" remote get-url origin
git -C "$managing_worktree" branch --show-current
git -C "$managing_worktree" rev-parse HEAD
git -C "$managing_worktree" status --short --branch --untracked-files=all
git -C "$managing_worktree" worktree list --porcelain
git -C "$owned_worktree_path" rev-parse --show-toplevel
git -C "$owned_worktree_path" branch --show-current
git -C "$owned_worktree_path" rev-parse HEAD
git -C "$owned_worktree_path" status --short --branch --untracked-files=all
```

Check that `owned_worktree_path` appears as the **exact registered absolute path** in the managing repository's worktree list, resolves to its own root, and is owned by this task. Check dirty, untracked **and ignored** files, active processes, retained Git/PR evidence, and distinct explicit Owner cleanup authorization. A zero command exit alone does not validate ownership or grant removal permission. **STOP on any mismatch.**

1. Confirm the exact task worktree and that its PR/branch history and evidence are retained.
2. Ensure no agent/process is using it, and no uncommitted, untracked, or ignored files must be preserved.
3. Confirm the Work Block/task has concluded or was cancelled, and cleanup is authorized.
4. With a separately verified managing checkout and the exact owned **absolute** destination, use `git -C "$managing_worktree" worktree remove "$owned_worktree_path"` **without** `--force` only for a clean registered worktree and after explicit cleanup authorization.
5. Use `git -C "$managing_worktree" worktree prune` only for independently inspected stale administrative entries after separate applicable authorization; recheck repository identity and affected worktrees before this mutation.
6. Remove the branch separately only when its commits are safely retained and Owner explicitly authorizes deletion.

Never run recursive deletion on arbitrary `/tmp` folders or standalone clones as "worktree cleanup." Record `CLEANED`, `PRESERVED`, or `CLEANUP_PENDING`.

No automated cleanup is included in Lite v0.1.

## Explicit target verification before mutations

Read-only inspection of permitted repositories/files **outside** the task worktree, Git history and external reference sources is allowed under actual security rules; it does **not** need a full write-target preflight. Copying from such a source is a **write at its destination**: verify approved destination independently.

For Git/index/ref/worktree mutations, derive expected identity, absolute root, branch, HEAD, dirty/untracked inventory and authorized scope from mission/checkpoint (not from possibly wrong target). Inspect explicit target:

```bash
# Replace this example value with the independently verified absolute task root.
task_worktree=/absolute/verified/owned-task-worktree
git -C "$task_worktree" rev-parse --show-toplevel
git -C "$task_worktree" remote get-url origin
git -C "$task_worktree" branch --show-current
git -C "$task_worktree" rev-parse HEAD
git -C "$task_worktree" status --short --branch --untracked-files=all
git -C "$task_worktree" diff --name-status
git -C "$task_worktree" diff --cached --name-status
```

Compare actual facts with expected repo/branch/HEAD and **every** dirty/untracked path. Wrong root/ref, unknown owner, unapproved or unexpected dirty/untracked path → **STOP before affected write**. Expected own drafts are allowed. `git -C` selects a target, not isolation/permission.

For Python, redirect, patch/edit tool, `cp`, `mv`, install and other non-Git writes, verify explicit absolute destination or tool's checked working directory and approved exact paths; for `mv` verify both mutated paths. An inherited/unverified cwd is insufficient. Permitted read-only A → authorized B writes target only B, not A.

Stable bounded edit sequences in a verified context need not repeat full preflight per line; observe operation post-state and recheck after compaction/resume, unexpected changes, target/ref switch and before commit/ref/cleanup. Bootstrap an absent worktree by inspecting authorized parent, destination, collisions, source/base and permissions first; do not require nonexistent target HEAD. Verify actual new root/branch/HEAD/status after creation. Shared Git refs remain shared.

## Content coverage: tracked, staged, untracked

Before claiming PASS, enumerate all relevant tracked/staged/**untracked** files, directly check untracked content/whitespace/conflict markers/local links and record coverage/hashes **before staging**. `git diff --check` does **not** inspect untracked bytes. `git diff --no-index --check <baseline-or-empty-file> <path>` may return 1 for a difference without whitespace fault; evaluate numeric exit code **with diagnostic output and content**. An absent/unclear check is not PASS.

Only **after authorized scoped staging**, use `git -C "$task_worktree" diff --cached --check` and inspect full staged diff and index blobs versus approved write-set. Changes invalidate affected prior PASS. Also verify the full baseline-to-delivery PR diff and actual CI on final H; a clean last commit alone is insufficient.

Never reset/clean/stash, force-push, bypass hooks, delete other worktrees or treat checked-out sibling state as private. Cleanup only with separate Owner authority and inventory of all owned/ignored/untracked paths.
