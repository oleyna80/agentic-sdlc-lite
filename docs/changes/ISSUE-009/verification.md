## Verifier Report

**Tier:** full
**Work Block:** ISSUE-009 — fail-closed Git history inspection
**Source candidate:** `S6 = d737638072d2617b18ae733ecb9eb79f60db28f9`
**Evidence-only head:** `H6 = 82e2047105669f979451b0c5251cb222e28d1300`
**Verdict:** **PASS** for exact S6

This is a fresh execution against S6. No S5 test result or verdict was transferred.

### Provenance and Object Mapping

- Approved P is an ancestor of S6: `90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74`.
- Frozen W1 is an ancestor of S6: `80fe489458a8b3cfd290ba8f2ca000b786a9ffe5`.
- S6 tree: `ed84b8bc1fdc6e28660027fc1bc189379d08c8d1`.
- H6 tree: `a9100883a7d6a4819c300d101ccdbabdfadc3e7b`.
- Workflow blob at S6 and H6: `4a4dc42bd5b84192342ef3173ad9193a382db6d9`.
- Fixture blob at S6 and H6: `4019720fbd297517b9f27e92f254364676aee61f`.
- H6 test-evidence blob: `5f1b218ce07f1a89677071ef40c9d843bf1f6241`.
- `S6..H6` modifies only `docs/changes/ISSUE-009/test-evidence.md`.
- `git diff --check S6 H6` returned `0`.
- Workflow and fixture blobs are identical between S6 and H6.
- Final worktree recheck was clean.

### Executed Evidence

Command:

```bash
bash docs/changes/ISSUE-009/fixtures.sh d737638072d2617b18ae733ecb9eb79f60db28f9
```

Results:

- Fixture exit: `0`
- Git: `2.53.0`
- Bash: `5.3.9(1)-release`
- Workflow SHA-256:
  `0b01e845e27d02ba383d63205c402ec212d266d000383276a700460672345fdf`
- Fixture SHA-256:
  `589ddbe0ffae649c5aad4bfe3cef2632ee77b18636777fdaa98236ee11fee38e`
- Actual extracted workflow run-body SHA-256:
  `f59e1c6e71a8b940582b5e638531aa0a1de82ae1418a1f2570dd90297dbaf46a`
- H6 test-evidence SHA-256:
  `4e3b555c62606c36462483a76be0149929bde5e35ae669149a5b670e3e0f0fc8`
- Independent fixture log:
  `/tmp/issue-009-verifier-s6-fixtures.log`
- Fixture-log SHA-256:
  `9de9171ca15685cb11a8ea61c707de30f5516145edbadb974498d0363e2c01a0`

The fixture extracts the `run` body using `git show S6:.github/workflows/lite-checks.yml`, then executes that extracted body. It does not test a manually copied implementation. `bash -n` on the current fixture also returned `0`.

### Checks

- [PASS] **T01 clean genuine root** — root checker invoked; `git diff-tree --check --root` returned `0`.

- [PASS] **T02 whitespace-defective root** — root checker returned `2` and emitted trailing-whitespace diagnostics.

- [PASS] **T13 genuine shallow root with parent-like commit message** — shallow repository remained correctly classified as root; root checker returned `0`.

- [PASS] **T03 clean ordinary commit** — parent-diff path returned `0`.

- [PASS] **T04 ordinary commit with introduced whitespace** — parent diff returned `2` and emitted whitespace diagnostics.

- [PASS] **T05 inspection failure** — injected `74` from `rev-parse`, `cat-file commit`, and `cat-file -e <parent>^{commit}` each stopped with `rc=74`.

- [PASS] **T06 plausible stdout plus failed inspection** — valid-looking stdout combined with `rc=74` stopped before metadata parsing or whitespace checking. The fixture records the expected “no whitespace checker was invoked” assertion.

- [PASS] **T06 malformed stream with nonzero status** — malformed plausible metadata plus `rc=74` retained the original `74` rather than selecting a root or metadata-parse path.

- [PASS] **T07 invalid/unavailable HEAD** — stopped with `rc=128`, diagnostic `HEAD is not a readable commit`.

- [PASS] **T07 empty successful commit output** — stopped with `rc=1`, diagnostic that commit metadata is incomplete or lacks the header/message separator.

- [PASS] **T07 truncated successful commit output** — stopped with `rc=1` before either checker.

- [PASS] **T07 malformed tree header** — stopped with `rc=1`, diagnostic `commit metadata contains a malformed object header`.

- [PASS] **T07 malformed parent header** — separately injected `parent not-a-valid-oid`; stopped with `rc=1`, diagnostic `commit metadata contains a malformed object header`. This is distinct from malformed-tree coverage.

- [PASS] **T08 realistic depth-2 linear history** — `file://` depth-2 clone returned `0` through the parent path.

- [PASS] **T08 depth-2 detached fetch behavior** — independently fetched depth-2 detached checkout returned `0` through the parent path.

- [PASS] **T08 depth-2 whitespace failure** — parent diff returned `2`.

- [PASS] **T09 depth-1 checkout with unavailable parent** — stopped with `rc=128`, diagnostic `first parent is unavailable or not a commit`; it did not use the root checker.

- [PASS] **T10 parent becomes available after fetch** — after fetching the recorded parent object, the same depth-1 repository used the parent path and returned `0`.

- [PASS] **T11 whitespace-checker failure propagation** — injected non-root `git diff --check` and root `git diff-tree --check` failures both returned `74` unchanged.

- [PASS] **T12 merge and PR-merge-like depth-2 checkout** — real merge and depth-2 merge checkout both validated the first parent and returned `0`; merge whitespace case returned `2`.

- [PASS] **T14 unavailable parent object** — isolated commit naming an absent parent stopped with `rc=128`.

- [PASS] **T14 parent points at an existing blob** — `git cat-file -e <parent>^{commit}` failed with object-type diagnostics and STOP `rc=128`; a parent must be a readable commit.

- [PASS] **Fixture inventory preservation** — each operational case recorded HEAD, metadata, shallow state, refs, and before/after inventory. Observed before/after fixture state remained stable for every executed case. Disposable fixtures did not alter the target worktree.

- [PASS] **Workflow scope** — base-to-S6 workflow diff is confined to the permitted `Check introduced whitespace errors` run body. Checkout configuration, triggers, job permissions, hooks, and other workflow steps are unchanged.

- [PASS] **Formatting and source scan** — `git diff --check 69246782c99423721fdb4a6adefc693ee6f57613 S6` returned `0`; no credential-like additions were found in the workflow and fixture diff.

### Remaining Delivery Gates

- Actual GitHub Actions must still pass on the exact published delivery head.
- PR publication and final merge remain Owner-controlled.

## Verifier Report — S9

**Tier:** full
**Work Block:** ISSUE-009 — fail-closed Git history inspection
**Exact source candidate:** `S9 = 8df87c7869866edd703aa462d1d3cbb3bc1ec0a4`
**Verdict:** **PASS** for exact S9

This is a fresh execution against S9. No result from S6 was reused.

### Source and planning provenance

- S9 parent: `029f7ca1595dfccbeed7f51ba20aab82cb1382ed`
- S9 tree: `426c418866b838d037caa10202618144646c2a45`
- Approved P `90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74` and frozen W1 `80fe489458a8b3cfd290ba8f2ca000b786a9ffe5` are ancestors of S9.
- Workflow blob: `a3e67b594e799b781cc0bad571733e2082631cbf`
- Fixture blob: `10b1466d81537a7c12530a58913dd75bdc93278e`
- Historical S6 verification report blob at S9: `8581641c96d820bd0fad136ab1b76133c52bcf28`

### Executed evidence

The Verifier independently ran `bash docs/changes/ISSUE-009/fixtures.sh 8df87c7869866edd703aa462d1d3cbb3bc1ec0a4` against the exact source. Exit `0`; Git `2.53.0`; Bash `5.3.9(1)-release`; full workflow SHA-256 `9681c9396ff89517b40632fdc031aa20ad848a6c70d1dd0bde372029dd5d5e4c`; fixture SHA-256 `a5f79f752e313cd8e782a8c2abbd91cd4e8f5cc45f7881badf9b61d0da1842ce`; extracted actual run-body SHA-256 `e2791002b799375dd21a8d05153a932a7e23b9f8563f25ff05a2307cb0321b23`; fixture-log path `/tmp/issue-009-verifier-s9-fixtures.log`, SHA-256 `05296d702fa576993f8c29cfe9dd8d60337658f15ebe01583f6e0aa93a480017`.

The harness extracted the actual `Check introduced whitespace errors` body from immutable S9, checked Bash syntax, and executed that body. It did not test a copied implementation.

### Acceptance matrix

- **PASS T01:** clean genuine root selected root checker, rc 0.
- **PASS T02:** root whitespace defect diagnosed, rc 2.
- **PASS T03:** clean ordinary commit selected parent diff, rc 0.
- **PASS T04:** ordinary whitespace defect diagnosed, rc 2.
- **PASS T05:** injected `rev-parse`, commit inspection and parent-type inspection failures each STOP with rc 74.
- **PASS T06:** plausible stdout plus nonzero inspection status STOPped before parsing/checker; malformed metadata plus nonzero status retained rc 74.
- **PASS T07:** invalid HEAD, empty, truncated, malformed-tree and malformed-parent metadata each STOPped before checkers.
- **PASS T08:** realistic depth-2 linear and detached-fetched checkouts used parent path; whitespace defect returned rc 2.
- **PASS T09:** depth-1 unavailable parent STOPped rc 128; it did not select root checker.
- **PASS T10:** fetching parent into depth-1 checkout enabled parent path, rc 0.
- **PASS T11:** injected `git diff --check` and `git diff-tree --check` failures propagated rc 74.
- **PASS T12:** merge and PR-merge-like depth-2 checkouts validated first parent; whitespace defect returned rc 2.
- **PASS T13:** genuine shallow root with parent-like commit message stayed on root path, rc 0.
- **PASS T14 unavailable parent:** explicit STOP rc 128.
- **PASS T14 blob parent:** direct object-type inspection STOPped rc 1.
- **PASS T14 annotated-tag parent:** actual parent type `tag`, target type `commit`; body STOPped rc 1 with `first parent is not a commit object`; neither `diff` nor `diff-tree` invoked.
- **PASS fixture state preservation:** per-case before/after HEAD, refs, index/status, shallow metadata and object inventory recorded without target-repository mutation.
- **PASS invariants:** base-to-S9 `git diff --check`, workflow boundary and secret-pattern checks passed.

The historical S6 verifier report remains byte-preserved at blob `8581641c96d820bd0fad136ab1b76133c52bcf28`. This PASS applies only to exact S9. Actual GitHub Actions on the final published delivery head remains a separate gate.
