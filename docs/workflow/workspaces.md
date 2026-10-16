# Git Branches and Workspace Lifecycle

## Default

Keep a persistent, clean checkout of `main`. Use a short-lived task branch, preferably in a separate Git worktree when multiple tasks must coexist. A worktree shares Git objects and refs with the repository; an independent clone does not.

Example (run manually in the correct parent repository only):

```bash
git fetch origin
git worktree add -b feat/my-task ../worktrees/my-task origin/main
```

This is **not** an agent authorization command. First verify the repository, selected base, exact branch, permissions, existing paths, and task ownership.

## Before touching an existing workspace

Run read-only inspections:

```bash
git worktree list --porcelain
git status --short --branch
```

Never overwrite a directory because it looks obsolete. Untracked/ignored files may contain user work. If active state or ownership is unclear, stop.

## Safe cleanup (after Owner-approved disposition)

1. Confirm the exact task worktree and that its PR/branch history and evidence are retained.
2. Ensure no agent/process is using it, and no uncommitted, untracked, or ignored files must be preserved.
3. Confirm the Work Block/task has concluded or was cancelled, and cleanup is authorized.
4. Use `git worktree remove <path>` **without** `--force` for a clean registered worktree.
5. Use `git worktree prune` only for stale administrative entries after inspection.
6. Remove the branch separately only when its commits are safely retained and Owner explicitly authorizes deletion.

Never run recursive deletion on arbitrary `/tmp` folders or standalone clones as "worktree cleanup." Record `CLEANED`, `PRESERVED`, or `CLEANUP_PENDING`.

No automated cleanup is included in Lite v0.1.
