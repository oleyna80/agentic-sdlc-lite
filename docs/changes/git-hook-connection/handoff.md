# Git hook connection documentation — local handoff

## Scope and observed state — 2026-10-29

- Owner requested architecture/documentation/environment preparation here, followed by practical testing in a project Codex CLI session.
- Repository: `https://github.com/oleyna80/agentic-sdlc-lite.git`.
- Task root: `/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/git-hook-connection`.
- Branch: `docs/git-hook-connection`.
- Observed predecessor HEAD/base: `55ebee6cf26db99d708f089f297344ef0341f698`.
- Classification: routine usage-documentation correction. No lifecycle, authority, security boundary or hook implementation changes; significant-project Spec/P/W and independent gates are NOT_APPLICABLE.
- Worktree was created with the existing guarded procedure after `fetch origin` confirmed the expected `origin/main`. Existing worktrees were preserved.
- Local edits: `README.md`, `docs/workflow/workspaces.md`, this handoff and `validation.md` in this directory. NOT_COMMITTED; these drafts are not a completed Git-backed checkpoint or a reviewed source candidate.

## Change

README links to one canonical hook-connection section. It distinguishes repository-common and worktree-specific settings, checks the extension before a worktree-specific write, and explains replacement of existing hooks, absolute-path ownership, compatibility and post-change verification.

Worktree creation/cleanup procedures, real Git hook configuration, `.githooks`, global agent configuration and the HardwareLab pilot are outside this change.

## CLI test scope and corrected scenario reference

The first practical CLI run completed on 2026-10-29; see [recorded results and source-session reference](validation.md). It tested the earlier uncommitted documentation and found an overgeneralized fallback claim. The scenario reference below incorporates that finding; it is not a verbatim copy of the original assignment. Any later session must inspect current instructions, branch/HEAD and the entire uncommitted diff before acting.

Use disposable repositories under a new task-owned temporary directory for practical tests. Local fixture files, fixture Git configuration and synthetic fixture commits/worktrees are permitted for these tests only. Keep real repository files and configuration unchanged. Do not commit, push, merge, deploy, enable project hooks or change global agent settings.

Scenario reference for any future practical retest:

1. Unset `core.hooksPath`: distinguish exit 1/unset from command failure and identify the default directory.
2. Existing hooks: show which directory would be replaced and retain the fixture's existing behavior when replacement is not chosen.
3. Common `--local` setting: both main and linked fixture worktrees resolve to the selected absolute hook source; demonstrate which hook executes through a local Git operation.
4. Extension absent or false: the documented guarded `--worktree` block stops without changing configuration. Separately observe raw `--worktree` writes in single-worktree and multiple-worktree fixtures; record Git version, extension state, exit status and configuration before/after. Do not assume unconditional fallback: Git may write common config or reject the operation. The first run on Git 2.53.0 observed single-worktree fallback and multiple-worktree refusal.
5. Extension enabled in the fixture: target-worktree configuration affects its hook execution while another worktree retains its intended setting/behavior. Include Git boolean normalization such as `yes`.
6. Command-scoped override: inspection and execution with the same override agree; do not confuse that result with the ordinary configuration.

Report expected/actual outcomes, commands or concise evidence, any NOT_RUN coverage, documentation defects and process friction separately. A fixture smoke hook proves connection/routing only; it does not validate bundled hook policy, native agent hooks, hosted CI or the HardwareLab pilot. If the CLI cannot write to a disposable test directory, report the actual boundary; source `.git` write access is not needed for this test.

## Preparation checks before the CLI run

- `git diff --check`: passed for tracked edits; whitespace checked separately for this untracked handoff.
- README target section exists; all Bash blocks in the workspace document pass `bash -n`.
- Removing only the new section reproduces the base workspace document byte for byte: creation/cleanup procedures are unchanged.
- Index is unchanged. Dirty state consists of the two modified documents and this untracked handoff. Main checkout is clean; the pilot retains its previously existing handoff modification.
- Configuration semantics were checked against the official Git documentation. At preparation time practical CLI tests were NOT_RUN; the subsequent run found the fallback claim needed correction. Syntax/static checks do not prove runtime behavior.

## Current follow-up

The fallback explanation and scenario 4 have been corrected without changing the guarded write block. A disposable-fixture example now repeats the same command-scoped override for path inspection and direct hook invocation; its syntax is checked here, but this new example has not been executed. The recorded CLI run used fixture commits to demonstrate execution with the same override.

The next architectural discussion is proportionality of workspace setup/recovery. No workspace creation/cleanup rule is changed by this correction. A full runtime-suite repeat is not required for these prose/example-only changes; the original CLI evidence and the remaining coverage limits are in `validation.md`. Commit/publication remains outside the current authorization.

No independent READY/PASS, project acceptance or publication is claimed here.
