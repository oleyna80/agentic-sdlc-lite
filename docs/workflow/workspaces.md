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

## Explicit target verification before mutations

Read-only inspection of permitted repositories/files **outside** the task worktree, Git history and external reference sources is allowed under actual security rules; it does **not** need a full write-target preflight. Copying from such a source is a **write at its destination**: verify approved destination independently.

For Git/index/ref/worktree mutations, derive expected identity, absolute root, branch, HEAD, dirty/untracked inventory and authorized scope from mission/checkpoint (not from possibly wrong target). Inspect explicit target:

```bash
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
