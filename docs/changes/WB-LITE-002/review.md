# WB-LITE-002 — Independent Reviewer R2

## Verdict

**REWORK** on exact source candidate S2 `cd0234e0478a94b644d795e35b4a60da35d12b57`.

- Observed evidence HEAD before this checkpoint: `5186d5adeb7c92122e19c702ef658fe54ff2943f`.
- Approved P: `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df`.
- Approved W2: `63ed889d8991a5d2187bb82709f4cbb5773db1cc`.
- S2 tree: `c7b134c0c40d897c480f04d4708772dc1177aec0`.
- S2 subject: `docs: bind Git worktree mutation examples to explicit verified targets (FND-REV-001)`.
- Frozen blobs at P/W2 and S2: `plan.md` = `fcfda1f6dfa011a5688c5f04111d918d6bbce707`; W2 = `19beb072f321a7c9730ea86630112ce8c1b90dbb`.

This is an independent source review bound to S2. H differs from S2 only in `docs/changes/WB-LITE-002/handoff.md`; source-only S2..H diff is empty.

## Finding and FND disposition

**MEDIUM — FND-REV-001 remains unresolved; the corresponding FND-VER-001 requirement also fails.** At `docs/workflow/workspaces.md:53`, the destructive example is:

```bash
git -C "$managing_worktree" worktree remove "$owned_worktree_path"
```

The document describes the destination as absolute but never binds `owned_worktree_path` to an explicit absolute value or verifies its ownership. The setup binds `managing_worktree` and `new_worktree_path` only. Exact assignment search returned 1 (no match). A reader can execute the command with an empty, inherited, or incorrectly assigned destination.

| Example | Explicit Git target | Explicit absolute destination binding | Result |
|---|---:|---:|---|
| `fetch origin` | Yes, managing checkout | Not applicable | Static adequate |
| `worktree add` | Yes, managing checkout | Yes, `$new_worktree_path` | Static adequate |
| `worktree remove` | Yes, managing checkout | **No: `$owned_worktree_path` is unbound** | **REWORK** |
| `worktree prune` | Yes, managing checkout | No single destination; affected entries must be inspected | Static adequate |

Exact identifier search finds `FND-REV-001` references but no tracked `FND-VER-001` record at S2. This is a traceability gap; the substantive failing condition is independently established by the unbound variable.

Recommended correction for a separately authorized source candidate: explicitly bind an approved absolute `owned_worktree_path` immediately before the cleanup procedure and include its preflight ownership/path check before mutation. Renew Reviewer and Verifier assurance on that exact new SHA.

## AC-1…AC-15

“Static conformant” means the reviewed source expresses the criterion; it is not fixture execution.

| AC | Reviewer status | Evidence / limit |
|---|---|---|
| AC-1 | Static conformant | P → Project Critic → Owner and W → Stage Critic → Coder → same-S assurance are consistent. |
| AC-2 | Static conformant | Canonical procedures and templates describe checkpoint routes; recovery fixtures not run by Reviewer. |
| AC-3 | PARTIAL | Identity guard exists; positive/negative fixture cases not run by Reviewer. |
| AC-4 | PARTIAL | Own-memory/source-marker logic exists; derived fixtures not run by Reviewer. |
| AC-5 | Static conformant | No-Controller/no-new-authority boundary retained. |
| AC-6 | Static conformant | Routine N/A and significant-work gates align; no native negative mission run by Reviewer. |
| AC-7 | PARTIAL | Local source diff checks passed; actual current-H Actions not observed in Reviewer run. |
| AC-8 | **Not satisfied** | Reviewer is REWORK; no Verifier PASS or actual H CI evidence. |
| AC-9 | **Not satisfied / REWORK** | Unbound cleanup destination at `workspaces.md:53`. |
| AC-10 | Static conformant | Procedure requires tracked, untracked, cached and full-diff coverage; no Reviewer V-15 fixture. |
| AC-11 | Static conformant | Recovery requirements documented; Reviewer did not execute recovery. |
| AC-12 | Static conformant | Scratch/local agent memory/compacted context excluded from authority; Reviewer did not execute fixtures. |
| AC-13 | Static conformant | Project Critic precedes Owner approval in reviewed entrypoints; V-20/V-21 not run by Reviewer. |
| AC-14 | Static conformant | W/Stage Critic/conformance and no Owner-per-WB route consistent; V-21/V-22 not run by Reviewer. |
| AC-15 | Static conformant | Rework, renewed assurance, progression and Owner merge boundary documented; V-23…V-26 not run by Reviewer. |

## W2 V-01…V-26 Reviewer coverage

| V | Reviewer status | Coverage |
|---|---|---|
| V-01 | PARTIAL static | Exact S2/P/W2 relation, paths, links and whitespace inspected; no staging/untracked fixture. |
| V-02 | NOT_RUN | Workflow shell bodies read but not executed. |
| V-03…V-08 | NOT_RUN | Guard logic inspected only. |
| V-09 | NOT_RUN | No native routine/negative mission by Reviewer. |
| V-10 | NOT_RUN | No recovery fixture. |
| V-11 | PARTIAL | Reviewer performed; independent Verifier is reported separately. |
| V-12 | NOT_RUN | No actual PR/current-H Actions evidence in Reviewer execution. |
| V-13…V-18 | NOT_RUN | No worktree/STOP/staging/recovery fixtures. |
| V-19 | PARTIAL static | Cross-file normative language inspected. |
| V-20…V-26 | NOT_RUN | Critic lifecycle, correction, progression and provenance fixtures not run by Reviewer. |

## Exact Reviewer command log

All commands were read-only. `exit` records the observed shell status.

```bash
git cat-file -t cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0; commit
git rev-parse cd0234e0478a94b644d795e35b4a60da35d12b57^{tree}
# exit 0; c7b134c0c40d897c480f04d4708772dc1177aec0
git show -s --format='S2=%H%nparent=%P%nsubject=%s' cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0
git merge-base --is-ancestor b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0
git merge-base --is-ancestor 63ed889d8991a5d2187bb82709f4cbb5773db1cc cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0
git rev-parse b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df:plan.md cd0234e0478a94b644d795e35b4a60da35d12b57:plan.md
# exit 0; equal blob IDs
git rev-parse 63ed889d8991a5d2187bb82709f4cbb5773db1cc:docs/changes/WB-LITE-002/work-block.md cd0234e0478a94b644d795e35b4a60da35d12b57:docs/changes/WB-LITE-002/work-block.md
# exit 0; equal blob IDs
git diff --name-status 63ed889d8991a5d2187bb82709f4cbb5773db1cc..cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0
git diff --name-status cd0234e0478a94b644d795e35b4a60da35d12b57..5186d5adeb7c92122e19c702ef658fe54ff2943f
# exit 0; only docs/changes/WB-LITE-002/handoff.md
git diff --quiet cd0234e0478a94b644d795e35b4a60da35d12b57..5186d5adeb7c92122e19c702ef658fe54ff2943f -- . ':(exclude)docs/changes/WB-LITE-002/handoff.md'
# exit 0; no source-only delta
git diff --check cd0234e0478a94b644d795e35b4a60da35d12b57^..cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0
git diff --check 63ed889d8991a5d2187bb82709f4cbb5773db1cc..cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0
git diff --check b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df..cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0
git fsck --no-dangling --no-reflogs cd0234e0478a94b644d795e35b4a60da35d12b57
# exit 0
git show cd0234e0478a94b644d795e35b4a60da35d12b57:docs/workflow/workspaces.md | nl -ba | sed -n '7,115p'
# exit 0
git show cd0234e0478a94b644d795e35b4a60da35d12b57:docs/workflow/workspaces.md | rg -n '^owned_worktree_path='
# exit 1; no assignment
git show cd0234e0478a94b644d795e35b4a60da35d12b57:docs/workflow/workspaces.md | rg -n 'git -C "\$[a-z_]+" (fetch|worktree add|worktree remove|worktree prune)'
# exit 0
git grep -n -I -E 'FND-(REV|VER)-001' cd0234e0478a94b644d795e35b4a60da35d12b57 --
# exit 0; FND-REV references only
git show 63ed889d8991a5d2187bb82709f4cbb5773db1cc:docs/changes/WB-LITE-002/work-block.md | nl -ba | sed -n '250,366p'
# exit 0
git show cd0234e0478a94b644d795e35b4a60da35d12b57:docs/workflow/development.md | nl -ba | sed -n '1,75p'
# exit 0
git show cd0234e0478a94b644d795e35b4a60da35d12b57:.github/workflows/lite-checks.yml | nl -ba | sed -n '1,240p'
# exit 0
git status --short --branch --untracked-files=all
# exit 0; clean at H
```

## Limitations and next authorized action

The Reviewer did not execute disposable fixtures, native subagents, guard tests, cross-worktree cases, negative STOP cases, recovery/compaction, lifecycle simulations, staging checks, bare-remote tests, or GitHub Actions. CI is **NOT_RUN** in this Reviewer execution. The next authorized action is a separately authorized correction of the source defect followed by fresh independent Reviewer and Verifier on the same new exact SHA. No merge, publication, deployment, settings, hooks or source correction was performed here.
