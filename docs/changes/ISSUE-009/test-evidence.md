# ISSUE-009 fixture evidence

SOURCE=5db63576600fd5b3d9bf6ad1fe0b9d8e21d3e383
GIT=git version 2.53.0
BASH=5.3.9(1)-release
WORK=/tmp/tmp.oGGsxGjGCy

## Preserved unsuccessful pre-final attempts

Recorded at 2026-10-20T18:07:34Z. These attempts are diagnostic history only and are not acceptance evidence.

- Initial extraction attempt: `fixture extraction: malformed run block`; the extractor incorrectly rejected blank lines in the YAML literal block.
- Initial T01 attempt: `Bad file descriptor`; the commit-object reader file descriptor was attached to each `read`, rather than the complete loop.

## Historical exact-source execution (S1)

Captured trailing ASCII spaces are represented as `[U+0020 trailing space]` so
this evidence commit remains eligible for the whitespace validation it records.

S1 was superseded by the bounded status-before-parsing REWORK. Its completed
run remains below as historical evidence only; the S2 execution appended after
it is the current acceptance evidence.

WORKFLOW_BLOB=577881b0b1507d68edc0b73c4afcc5761fbba4a9
BODY_SHA256=7d07f2185d6230d091d29e28b1788e7554f515abf6f9fccead2f438b1aef0c11
[T01-before] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
[T01-after] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc

CASE T01 expected=root rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
[T02-before] HEAD=72237ef285d01cb63fd490d5656c0fbd9c5b0565
parents= tree=f0dbd491e0748758c7477265d3ecf94cc7bb5c28
tree f0dbd491e0748758c7477265d3ecf94cc7bb5c28
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:72237ef285d01cb63fd490d5656c0fbd9c5b0565
[T02-after] HEAD=72237ef285d01cb63fd490d5656c0fbd9c5b0565
parents= tree=f0dbd491e0748758c7477265d3ecf94cc7bb5c28
tree f0dbd491e0748758c7477265d3ecf94cc7bb5c28
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:72237ef285d01cb63fd490d5656c0fbd9c5b0565

CASE T02 expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 72237ef285d01cb63fd490d5656c0fbd9c5b0565 [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 72237ef285d01cb63fd490d5656c0fbd9c5b0565 [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +bad [U+0020 trailing space]
[T13-before] HEAD=e9ccc4a95ba68a0c07a1c23ea91df28286020c11
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:e9ccc4a95ba68a0c07a1c23ea91df28286020c11
[T13-after] HEAD=e9ccc4a95ba68a0c07a1c23ea91df28286020c11
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:e9ccc4a95ba68a0c07a1c23ea91df28286020c11

CASE T13 expected=root rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit e9ccc4a95ba68a0c07a1c23ea91df28286020c11 [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r e9ccc4a95ba68a0c07a1c23ea91df28286020c11 [U+0020 trailing space]
[T03-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T03-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T03 expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
[T04-before] HEAD=d0ca126bcc49d9248165b24650006855c1a5d855
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
tree b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:d0ca126bcc49d9248165b24650006855c1a5d855
[T04-after] HEAD=d0ca126bcc49d9248165b24650006855c1a5d855
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
tree b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:d0ca126bcc49d9248165b24650006855c1a5d855

CASE T04 expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit d0ca126bcc49d9248165b24650006855c1a5d855 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 d0ca126bcc49d9248165b24650006855c1a5d855 [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +child [U+0020 trailing space]
[T05-rev-parse-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-rev-parse-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-rev-parse expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 74)
[T06-rev-parse-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-rev-parse-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-rev-parse expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 74)
[T05-cat-file-commit-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-cat-file-commit-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-cat-file-commit expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
[T06-cat-file-commit-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-commit-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-commit expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
[T05-cat-file-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-cat-file-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-cat-file-parent expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 74)
[T06-cat-file-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-parent expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
stdout: plausible inspection output
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 74)
[T06-malformed-metadata-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-malformed-metadata-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-malformed-metadata expected=stop rc=1
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: commit metadata contains a malformed object header (exit 1)
[T07-invalid-head-before] HEAD=c1b0730e0133447badcfd47fd144e254807b06e1
error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
fatal: Not a valid object name HEAD^{commit}
HEAD-commit-type=unavailable-or-invalid exit=128
shallow=false
shallow-bytes=absent
error: bad tree object HEAD
status-inventory-exit=128
[T07-invalid-head-after] HEAD=c1b0730e0133447badcfd47fd144e254807b06e1
error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
fatal: Not a valid object name HEAD^{commit}
HEAD-commit-type=unavailable-or-invalid exit=128
shallow=false
shallow-bytes=absent
error: bad tree object HEAD
status-inventory-exit=128

CASE T07-invalid-head expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
stderr: fatal: Needed a single revision
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 128)
[T08-depth2-linear-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T08-depth2-linear-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T08-depth2-linear expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T08-depth2-fetch-detached-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T08-depth2-fetch-detached-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T08-depth2-fetch-detached expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T09-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T09-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T09 expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
stderr: fatal: Not a valid object name f7602043d09c3f926b74b204225698543403f82d^{commit}
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 128)
[T10-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a 66 37 36 30 32 30 34
 33 64 30 39 63 33 66 39 32 36 62 37 34 62 32 30
 34 32 32 35 36 39 38 35 34 33 34 30 33 66 38 32
 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T10-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a 66 37 36 30 32 30 34
 33 64 30 39 63 33 66 39 32 36 62 37 34 62 32 30
 34 32 32 35 36 39 38 35 34 33 34 30 33 66 38 32
 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T10 expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T08-depth2-whitespace-before] HEAD=41edc5625fd4212e5de78e1559951a835594c8da
parents=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 tree=1d5700036143a8547634e0cfbf4d117c58dfa96d
tree 1d5700036143a8547634e0cfbf4d117c58dfa96d
parent 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:41edc5625fd4212e5de78e1559951a835594c8da
ref=refs/remotes/origin/main:41edc5625fd4212e5de78e1559951a835594c8da
[T08-depth2-whitespace-after] HEAD=41edc5625fd4212e5de78e1559951a835594c8da
parents=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 tree=1d5700036143a8547634e0cfbf4d117c58dfa96d
tree 1d5700036143a8547634e0cfbf4d117c58dfa96d
parent 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:41edc5625fd4212e5de78e1559951a835594c8da
ref=refs/remotes/origin/main:41edc5625fd4212e5de78e1559951a835594c8da

CASE T08-depth2-whitespace expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 41edc5625fd4212e5de78e1559951a835594c8da [U+0020 trailing space]
git: cat-file -e 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416\^\{commit\} [U+0020 trailing space]
git: diff --check 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 41edc5625fd4212e5de78e1559951a835594c8da [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +four [U+0020 trailing space]
[T11-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T11-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T11-parent expected=rc74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
[T11-root-before] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
[T11-root-after] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc

CASE T11-root expected=rc74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
[T12-merge-before] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/heads/side:7c698d2949fc2254f74c4c5559b18abab8d89fdd
[T12-merge-after] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/heads/side:7c698d2949fc2254f74c4c5559b18abab8d89fdd

CASE T12-merge expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
[T12-depth2-pr-merge-before] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 30 35 39 62 31 62 35 64 38 36 35 34 64 36 30 35
 38 31 65 61 64 39 61 34 36 38 39 62 31 32 30 34
 37 31 34 31 36 34 64 65 0a 37 63 36 39 38 64 32
 39 34 39 66 63 32 32 35 34 66 37 34 63 34 63 35
 35 35 39 62 31 38 61 62 61 62 38 64 38 39 66 64
 64 0a
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/remotes/origin/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
[T12-depth2-pr-merge-after] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 30 35 39 62 31 62 35 64 38 36 35 34 64 36 30 35
 38 31 65 61 64 39 61 34 36 38 39 62 31 32 30 34
 37 31 34 31 36 34 64 65 0a 37 63 36 39 38 64 32
 39 34 39 66 63 32 32 35 34 66 37 34 63 34 63 35
 35 35 39 62 31 38 61 62 61 62 38 64 38 39 66 64
 64 0a
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/remotes/origin/main:1110ba170bdcced6640a0618d46e26cbe8a71a64

CASE T12-depth2-pr-merge expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
[T12-merge-whitespace-before] HEAD=75d26e30347050b39162335283b3c4b8d9bab29a
parents=059b1b5d8654d60581ead9a4689b1204714164de a03d528e774d85a27675cc15ccbeb41c1eea45cb tree=d436aade32dea7ffd65a0ce7996ed1895a59e31a
tree d436aade32dea7ffd65a0ce7996ed1895a59e31a
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent a03d528e774d85a27675cc15ccbeb41c1eea45cb
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:75d26e30347050b39162335283b3c4b8d9bab29a
ref=refs/heads/side:a03d528e774d85a27675cc15ccbeb41c1eea45cb
[T12-merge-whitespace-after] HEAD=75d26e30347050b39162335283b3c4b8d9bab29a
parents=059b1b5d8654d60581ead9a4689b1204714164de a03d528e774d85a27675cc15ccbeb41c1eea45cb tree=d436aade32dea7ffd65a0ce7996ed1895a59e31a
tree d436aade32dea7ffd65a0ce7996ed1895a59e31a
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent a03d528e774d85a27675cc15ccbeb41c1eea45cb
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:75d26e30347050b39162335283b3c4b8d9bab29a
ref=refs/heads/side:a03d528e774d85a27675cc15ccbeb41c1eea45cb

CASE T12-merge-whitespace expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 75d26e30347050b39162335283b3c4b8d9bab29a [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 75d26e30347050b39162335283b3c4b8d9bab29a [U+0020 trailing space]
stdout: side.txt:1: trailing whitespace.
stdout: +side [U+0020 trailing space]
[T14-before] HEAD=07d8897bcd5cebed317734c8a5c924186cd5ddec
error: Could not read 0123456789012345678901234567890123456789
fatal: unable to parse commit 0123456789012345678901234567890123456789
HEAD-metadata-display-exit=128
tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
parent 0123456789012345678901234567890123456789
author Fixture <fixture@example.invalid> 0 +0000
committer Fixture <fixture@example.invalid> 0 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:07d8897bcd5cebed317734c8a5c924186cd5ddec
[T14-after] HEAD=07d8897bcd5cebed317734c8a5c924186cd5ddec
error: Could not read 0123456789012345678901234567890123456789
fatal: unable to parse commit 0123456789012345678901234567890123456789
HEAD-metadata-display-exit=128
tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
parent 0123456789012345678901234567890123456789
author Fixture <fixture@example.invalid> 0 +0000
committer Fixture <fixture@example.invalid> 0 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:07d8897bcd5cebed317734c8a5c924186cd5ddec

CASE T14 expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 07d8897bcd5cebed317734c8a5c924186cd5ddec [U+0020 trailing space]
git: cat-file -e 0123456789012345678901234567890123456789\^\{commit\} [U+0020 trailing space]
stderr: fatal: Not a valid object name 0123456789012345678901234567890123456789^{commit}
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 128)

RESULT=PASS T01-T14

## Historical exact-source execution (S2)

S2=fb87fd28ae9658541ae0c5ed625496878178474d
FIXTURE_LOG_SHA256=a886832c064ac12ec058d98280525a2d4e9b1844c6b42db4cb53647989894f6b
This run extracted the workflow body from S2. Captured terminal ASCII spaces use [U+0020 trailing space].
S2 remains historical evidence; the S3 execution appended below is the current
acceptance evidence with the complete-looking stdout plus rc74 assertion.

WORKFLOW_BLOB=9a23b044936af5f1e3af51b39eaed7469c00e713
BODY_SHA256=752408535e89dfbddf52236217d9d17f81a865ed6ff06b39d0e49453e577db8c
[T01-before] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
[T01-after] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc

CASE T01 expected=root rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
[T02-before] HEAD=72237ef285d01cb63fd490d5656c0fbd9c5b0565
parents= tree=f0dbd491e0748758c7477265d3ecf94cc7bb5c28
tree f0dbd491e0748758c7477265d3ecf94cc7bb5c28
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:72237ef285d01cb63fd490d5656c0fbd9c5b0565
[T02-after] HEAD=72237ef285d01cb63fd490d5656c0fbd9c5b0565
parents= tree=f0dbd491e0748758c7477265d3ecf94cc7bb5c28
tree f0dbd491e0748758c7477265d3ecf94cc7bb5c28
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:72237ef285d01cb63fd490d5656c0fbd9c5b0565

CASE T02 expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 72237ef285d01cb63fd490d5656c0fbd9c5b0565 [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 72237ef285d01cb63fd490d5656c0fbd9c5b0565 [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +bad [U+0020 trailing space]
[T13-before] HEAD=e9ccc4a95ba68a0c07a1c23ea91df28286020c11
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:e9ccc4a95ba68a0c07a1c23ea91df28286020c11
[T13-after] HEAD=e9ccc4a95ba68a0c07a1c23ea91df28286020c11
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:e9ccc4a95ba68a0c07a1c23ea91df28286020c11

CASE T13 expected=root rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit e9ccc4a95ba68a0c07a1c23ea91df28286020c11 [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r e9ccc4a95ba68a0c07a1c23ea91df28286020c11 [U+0020 trailing space]
[T03-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T03-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T03 expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
[T04-before] HEAD=d0ca126bcc49d9248165b24650006855c1a5d855
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
tree b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:d0ca126bcc49d9248165b24650006855c1a5d855
[T04-after] HEAD=d0ca126bcc49d9248165b24650006855c1a5d855
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
tree b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:d0ca126bcc49d9248165b24650006855c1a5d855

CASE T04 expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit d0ca126bcc49d9248165b24650006855c1a5d855 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 d0ca126bcc49d9248165b24650006855c1a5d855 [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +child [U+0020 trailing space]
[T05-rev-parse-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-rev-parse-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-rev-parse expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 74)
[T06-rev-parse-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-rev-parse-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-rev-parse expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 74)
[T05-cat-file-commit-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-cat-file-commit-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-cat-file-commit expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
[T06-cat-file-commit-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-commit-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-commit expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
[T05-cat-file-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-cat-file-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-cat-file-parent expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 74)
[T06-cat-file-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-parent expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
stdout: plausible inspection output
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 74)
[T06-cat-file-commit-malformed-plus-74-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-commit-malformed-plus-74-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-commit-malformed-plus-74 expected=inspection74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
assertion: inspection exit 74 was handled before commit metadata parsing; no whitespace checker was invoked
[T06-malformed-metadata-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-malformed-metadata-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-malformed-metadata expected=stop rc=1
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: commit metadata contains a malformed object header (exit 1)
[T07-invalid-head-before] HEAD=c1b0730e0133447badcfd47fd144e254807b06e1
error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
fatal: Not a valid object name HEAD^{commit}
HEAD-commit-type=unavailable-or-invalid exit=128
shallow=false
shallow-bytes=absent
error: bad tree object HEAD
status-inventory-exit=128
[T07-invalid-head-after] HEAD=c1b0730e0133447badcfd47fd144e254807b06e1
error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
fatal: Not a valid object name HEAD^{commit}
HEAD-commit-type=unavailable-or-invalid exit=128
shallow=false
shallow-bytes=absent
error: bad tree object HEAD
status-inventory-exit=128

CASE T07-invalid-head expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
stderr: fatal: Needed a single revision
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 128)
[T08-depth2-linear-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T08-depth2-linear-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T08-depth2-linear expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T08-depth2-fetch-detached-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T08-depth2-fetch-detached-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T08-depth2-fetch-detached expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T09-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T09-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T09 expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
stderr: fatal: Not a valid object name f7602043d09c3f926b74b204225698543403f82d^{commit}
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 128)
[T10-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a 66 37 36 30 32 30 34
 33 64 30 39 63 33 66 39 32 36 62 37 34 62 32 30
 34 32 32 35 36 39 38 35 34 33 34 30 33 66 38 32
 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T10-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a 66 37 36 30 32 30 34
 33 64 30 39 63 33 66 39 32 36 62 37 34 62 32 30
 34 32 32 35 36 39 38 35 34 33 34 30 33 66 38 32
 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T10 expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T08-depth2-whitespace-before] HEAD=41edc5625fd4212e5de78e1559951a835594c8da
parents=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 tree=1d5700036143a8547634e0cfbf4d117c58dfa96d
tree 1d5700036143a8547634e0cfbf4d117c58dfa96d
parent 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:41edc5625fd4212e5de78e1559951a835594c8da
ref=refs/remotes/origin/main:41edc5625fd4212e5de78e1559951a835594c8da
[T08-depth2-whitespace-after] HEAD=41edc5625fd4212e5de78e1559951a835594c8da
parents=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 tree=1d5700036143a8547634e0cfbf4d117c58dfa96d
tree 1d5700036143a8547634e0cfbf4d117c58dfa96d
parent 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:41edc5625fd4212e5de78e1559951a835594c8da
ref=refs/remotes/origin/main:41edc5625fd4212e5de78e1559951a835594c8da

CASE T08-depth2-whitespace expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 41edc5625fd4212e5de78e1559951a835594c8da [U+0020 trailing space]
git: cat-file -e 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416\^\{commit\} [U+0020 trailing space]
git: diff --check 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 41edc5625fd4212e5de78e1559951a835594c8da [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +four [U+0020 trailing space]
[T11-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T11-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T11-parent expected=rc74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
[T11-root-before] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
[T11-root-after] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc

CASE T11-root expected=rc74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
[T12-merge-before] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/heads/side:7c698d2949fc2254f74c4c5559b18abab8d89fdd
[T12-merge-after] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/heads/side:7c698d2949fc2254f74c4c5559b18abab8d89fdd

CASE T12-merge expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
[T12-depth2-pr-merge-before] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 30 35 39 62 31 62 35 64 38 36 35 34 64 36 30 35
 38 31 65 61 64 39 61 34 36 38 39 62 31 32 30 34
 37 31 34 31 36 34 64 65 0a 37 63 36 39 38 64 32
 39 34 39 66 63 32 32 35 34 66 37 34 63 34 63 35
 35 35 39 62 31 38 61 62 61 62 38 64 38 39 66 64
 64 0a
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/remotes/origin/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
[T12-depth2-pr-merge-after] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 30 35 39 62 31 62 35 64 38 36 35 34 64 36 30 35
 38 31 65 61 64 39 61 34 36 38 39 62 31 32 30 34
 37 31 34 31 36 34 64 65 0a 37 63 36 39 38 64 32
 39 34 39 66 63 32 32 35 34 66 37 34 63 34 63 35
 35 35 39 62 31 38 61 62 61 62 38 64 38 39 66 64
 64 0a
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/remotes/origin/main:1110ba170bdcced6640a0618d46e26cbe8a71a64

CASE T12-depth2-pr-merge expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
[T12-merge-whitespace-before] HEAD=75d26e30347050b39162335283b3c4b8d9bab29a
parents=059b1b5d8654d60581ead9a4689b1204714164de a03d528e774d85a27675cc15ccbeb41c1eea45cb tree=d436aade32dea7ffd65a0ce7996ed1895a59e31a
tree d436aade32dea7ffd65a0ce7996ed1895a59e31a
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent a03d528e774d85a27675cc15ccbeb41c1eea45cb
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:75d26e30347050b39162335283b3c4b8d9bab29a
ref=refs/heads/side:a03d528e774d85a27675cc15ccbeb41c1eea45cb
[T12-merge-whitespace-after] HEAD=75d26e30347050b39162335283b3c4b8d9bab29a
parents=059b1b5d8654d60581ead9a4689b1204714164de a03d528e774d85a27675cc15ccbeb41c1eea45cb tree=d436aade32dea7ffd65a0ce7996ed1895a59e31a
tree d436aade32dea7ffd65a0ce7996ed1895a59e31a
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent a03d528e774d85a27675cc15ccbeb41c1eea45cb
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:75d26e30347050b39162335283b3c4b8d9bab29a
ref=refs/heads/side:a03d528e774d85a27675cc15ccbeb41c1eea45cb

CASE T12-merge-whitespace expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 75d26e30347050b39162335283b3c4b8d9bab29a [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 75d26e30347050b39162335283b3c4b8d9bab29a [U+0020 trailing space]
stdout: side.txt:1: trailing whitespace.
stdout: +side [U+0020 trailing space]
[T14-before] HEAD=07d8897bcd5cebed317734c8a5c924186cd5ddec
error: Could not read 0123456789012345678901234567890123456789
fatal: unable to parse commit 0123456789012345678901234567890123456789
HEAD-metadata-display-exit=128
tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
parent 0123456789012345678901234567890123456789
author Fixture <fixture@example.invalid> 0 +0000
committer Fixture <fixture@example.invalid> 0 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:07d8897bcd5cebed317734c8a5c924186cd5ddec
[T14-after] HEAD=07d8897bcd5cebed317734c8a5c924186cd5ddec
error: Could not read 0123456789012345678901234567890123456789
fatal: unable to parse commit 0123456789012345678901234567890123456789
HEAD-metadata-display-exit=128
tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
parent 0123456789012345678901234567890123456789
author Fixture <fixture@example.invalid> 0 +0000
committer Fixture <fixture@example.invalid> 0 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:07d8897bcd5cebed317734c8a5c924186cd5ddec

CASE T14 expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 07d8897bcd5cebed317734c8a5c924186cd5ddec [U+0020 trailing space]
git: cat-file -e 0123456789012345678901234567890123456789\^\{commit\} [U+0020 trailing space]
stderr: fatal: Not a valid object name 0123456789012345678901234567890123456789^{commit}
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 128)

RESULT=PASS T01-T14

## Historical exact-source execution (S3)

S3=34ef716afd26b6a8c369a7a3b9e635126e1438fa
FIXTURE_LOG_SHA256=673e1bed2809e1f67ae9f0ef19996817e9f41f48e41169af9d590c4a13ccb6dc
This run extracted the workflow body from S3. Captured terminal ASCII spaces use [U+0020 trailing space].
S3 remains historical evidence; the S4 execution appended below is the current
acceptance evidence using byte-preserving metadata capture.

WORKFLOW_BLOB=9a23b044936af5f1e3af51b39eaed7469c00e713
BODY_SHA256=752408535e89dfbddf52236217d9d17f81a865ed6ff06b39d0e49453e577db8c
[T01-before] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
[T01-after] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc

CASE T01 expected=root rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
[T02-before] HEAD=72237ef285d01cb63fd490d5656c0fbd9c5b0565
parents= tree=f0dbd491e0748758c7477265d3ecf94cc7bb5c28
tree f0dbd491e0748758c7477265d3ecf94cc7bb5c28
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:72237ef285d01cb63fd490d5656c0fbd9c5b0565
[T02-after] HEAD=72237ef285d01cb63fd490d5656c0fbd9c5b0565
parents= tree=f0dbd491e0748758c7477265d3ecf94cc7bb5c28
tree f0dbd491e0748758c7477265d3ecf94cc7bb5c28
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:72237ef285d01cb63fd490d5656c0fbd9c5b0565

CASE T02 expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 72237ef285d01cb63fd490d5656c0fbd9c5b0565 [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 72237ef285d01cb63fd490d5656c0fbd9c5b0565 [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +bad [U+0020 trailing space]
[T13-before] HEAD=e9ccc4a95ba68a0c07a1c23ea91df28286020c11
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:e9ccc4a95ba68a0c07a1c23ea91df28286020c11
[T13-after] HEAD=e9ccc4a95ba68a0c07a1c23ea91df28286020c11
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:e9ccc4a95ba68a0c07a1c23ea91df28286020c11

CASE T13 expected=root rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit e9ccc4a95ba68a0c07a1c23ea91df28286020c11 [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r e9ccc4a95ba68a0c07a1c23ea91df28286020c11 [U+0020 trailing space]
[T03-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T03-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T03 expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
[T04-before] HEAD=d0ca126bcc49d9248165b24650006855c1a5d855
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
tree b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:d0ca126bcc49d9248165b24650006855c1a5d855
[T04-after] HEAD=d0ca126bcc49d9248165b24650006855c1a5d855
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
tree b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:d0ca126bcc49d9248165b24650006855c1a5d855

CASE T04 expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit d0ca126bcc49d9248165b24650006855c1a5d855 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 d0ca126bcc49d9248165b24650006855c1a5d855 [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +child [U+0020 trailing space]
[T05-rev-parse-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-rev-parse-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-rev-parse expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 74)
[T06-rev-parse-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-rev-parse-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-rev-parse expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 74)
[T05-cat-file-commit-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-cat-file-commit-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-cat-file-commit expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
[T06-cat-file-commit-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-commit-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-commit expected=inspection74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
assertion: inspection exit 74 was handled before commit metadata parsing; no whitespace checker was invoked
[T05-cat-file-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-cat-file-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-cat-file-parent expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 74)
[T06-cat-file-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-parent expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
stdout: plausible inspection output
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 74)
[T06-cat-file-commit-malformed-plus-74-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-commit-malformed-plus-74-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-commit-malformed-plus-74 expected=inspection74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
assertion: inspection exit 74 was handled before commit metadata parsing; no whitespace checker was invoked
[T06-malformed-metadata-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-malformed-metadata-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-malformed-metadata expected=stop rc=1
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: commit metadata contains a malformed object header (exit 1)
[T07-invalid-head-before] HEAD=c1b0730e0133447badcfd47fd144e254807b06e1
error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
fatal: Not a valid object name HEAD^{commit}
HEAD-commit-type=unavailable-or-invalid exit=128
shallow=false
shallow-bytes=absent
error: bad tree object HEAD
status-inventory-exit=128
[T07-invalid-head-after] HEAD=c1b0730e0133447badcfd47fd144e254807b06e1
error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
fatal: Not a valid object name HEAD^{commit}
HEAD-commit-type=unavailable-or-invalid exit=128
shallow=false
shallow-bytes=absent
error: bad tree object HEAD
status-inventory-exit=128

CASE T07-invalid-head expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
stderr: fatal: Needed a single revision
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 128)
[T08-depth2-linear-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T08-depth2-linear-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T08-depth2-linear expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T08-depth2-fetch-detached-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T08-depth2-fetch-detached-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T08-depth2-fetch-detached expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T09-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T09-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T09 expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
stderr: fatal: Not a valid object name f7602043d09c3f926b74b204225698543403f82d^{commit}
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 128)
[T10-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a 66 37 36 30 32 30 34
 33 64 30 39 63 33 66 39 32 36 62 37 34 62 32 30
 34 32 32 35 36 39 38 35 34 33 34 30 33 66 38 32
 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T10-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a 66 37 36 30 32 30 34
 33 64 30 39 63 33 66 39 32 36 62 37 34 62 32 30
 34 32 32 35 36 39 38 35 34 33 34 30 33 66 38 32
 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T10 expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T08-depth2-whitespace-before] HEAD=41edc5625fd4212e5de78e1559951a835594c8da
parents=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 tree=1d5700036143a8547634e0cfbf4d117c58dfa96d
tree 1d5700036143a8547634e0cfbf4d117c58dfa96d
parent 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:41edc5625fd4212e5de78e1559951a835594c8da
ref=refs/remotes/origin/main:41edc5625fd4212e5de78e1559951a835594c8da
[T08-depth2-whitespace-after] HEAD=41edc5625fd4212e5de78e1559951a835594c8da
parents=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 tree=1d5700036143a8547634e0cfbf4d117c58dfa96d
tree 1d5700036143a8547634e0cfbf4d117c58dfa96d
parent 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:41edc5625fd4212e5de78e1559951a835594c8da
ref=refs/remotes/origin/main:41edc5625fd4212e5de78e1559951a835594c8da

CASE T08-depth2-whitespace expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 41edc5625fd4212e5de78e1559951a835594c8da [U+0020 trailing space]
git: cat-file -e 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416\^\{commit\} [U+0020 trailing space]
git: diff --check 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 41edc5625fd4212e5de78e1559951a835594c8da [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +four [U+0020 trailing space]
[T11-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T11-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T11-parent expected=rc74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
[T11-root-before] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
[T11-root-after] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc

CASE T11-root expected=rc74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
[T12-merge-before] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/heads/side:7c698d2949fc2254f74c4c5559b18abab8d89fdd
[T12-merge-after] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/heads/side:7c698d2949fc2254f74c4c5559b18abab8d89fdd

CASE T12-merge expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
[T12-depth2-pr-merge-before] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 30 35 39 62 31 62 35 64 38 36 35 34 64 36 30 35
 38 31 65 61 64 39 61 34 36 38 39 62 31 32 30 34
 37 31 34 31 36 34 64 65 0a 37 63 36 39 38 64 32
 39 34 39 66 63 32 32 35 34 66 37 34 63 34 63 35
 35 35 39 62 31 38 61 62 61 62 38 64 38 39 66 64
 64 0a
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/remotes/origin/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
[T12-depth2-pr-merge-after] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 30 35 39 62 31 62 35 64 38 36 35 34 64 36 30 35
 38 31 65 61 64 39 61 34 36 38 39 62 31 32 30 34
 37 31 34 31 36 34 64 65 0a 37 63 36 39 38 64 32
 39 34 39 66 63 32 32 35 34 66 37 34 63 34 63 35
 35 35 39 62 31 38 61 62 61 62 38 64 38 39 66 64
 64 0a
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/remotes/origin/main:1110ba170bdcced6640a0618d46e26cbe8a71a64

CASE T12-depth2-pr-merge expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
[T12-merge-whitespace-before] HEAD=75d26e30347050b39162335283b3c4b8d9bab29a
parents=059b1b5d8654d60581ead9a4689b1204714164de a03d528e774d85a27675cc15ccbeb41c1eea45cb tree=d436aade32dea7ffd65a0ce7996ed1895a59e31a
tree d436aade32dea7ffd65a0ce7996ed1895a59e31a
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent a03d528e774d85a27675cc15ccbeb41c1eea45cb
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:75d26e30347050b39162335283b3c4b8d9bab29a
ref=refs/heads/side:a03d528e774d85a27675cc15ccbeb41c1eea45cb
[T12-merge-whitespace-after] HEAD=75d26e30347050b39162335283b3c4b8d9bab29a
parents=059b1b5d8654d60581ead9a4689b1204714164de a03d528e774d85a27675cc15ccbeb41c1eea45cb tree=d436aade32dea7ffd65a0ce7996ed1895a59e31a
tree d436aade32dea7ffd65a0ce7996ed1895a59e31a
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent a03d528e774d85a27675cc15ccbeb41c1eea45cb
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:75d26e30347050b39162335283b3c4b8d9bab29a
ref=refs/heads/side:a03d528e774d85a27675cc15ccbeb41c1eea45cb

CASE T12-merge-whitespace expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 75d26e30347050b39162335283b3c4b8d9bab29a [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 75d26e30347050b39162335283b3c4b8d9bab29a [U+0020 trailing space]
stdout: side.txt:1: trailing whitespace.
stdout: +side [U+0020 trailing space]
[T14-before] HEAD=07d8897bcd5cebed317734c8a5c924186cd5ddec
error: Could not read 0123456789012345678901234567890123456789
fatal: unable to parse commit 0123456789012345678901234567890123456789
HEAD-metadata-display-exit=128
tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
parent 0123456789012345678901234567890123456789
author Fixture <fixture@example.invalid> 0 +0000
committer Fixture <fixture@example.invalid> 0 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:07d8897bcd5cebed317734c8a5c924186cd5ddec
[T14-after] HEAD=07d8897bcd5cebed317734c8a5c924186cd5ddec
error: Could not read 0123456789012345678901234567890123456789
fatal: unable to parse commit 0123456789012345678901234567890123456789
HEAD-metadata-display-exit=128
tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
parent 0123456789012345678901234567890123456789
author Fixture <fixture@example.invalid> 0 +0000
committer Fixture <fixture@example.invalid> 0 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:07d8897bcd5cebed317734c8a5c924186cd5ddec

CASE T14 expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 07d8897bcd5cebed317734c8a5c924186cd5ddec [U+0020 trailing space]
git: cat-file -e 0123456789012345678901234567890123456789\^\{commit\} [U+0020 trailing space]
stderr: fatal: Not a valid object name 0123456789012345678901234567890123456789^{commit}
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 128)

RESULT=PASS T01-T14

## Final exact-source execution (S4)

S4=68515899730ef7d59cb710c30467d95021b19624
FIXTURE_LOG_SHA256=4dcde31048b7e6fb03825498978186a97f3fcd8643684c6d0c38bfdfc34d9fa3
This run extracted the workflow body from S4. Captured terminal ASCII spaces use [U+0020 trailing space].

WORKFLOW_BLOB=4a4dc42bd5b84192342ef3173ad9193a382db6d9
BODY_SHA256=f59e1c6e71a8b940582b5e638531aa0a1de82ae1418a1f2570dd90297dbaf46a
[T01-before] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
[T01-after] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc

CASE T01 expected=root rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
[T02-before] HEAD=72237ef285d01cb63fd490d5656c0fbd9c5b0565
parents= tree=f0dbd491e0748758c7477265d3ecf94cc7bb5c28
tree f0dbd491e0748758c7477265d3ecf94cc7bb5c28
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:72237ef285d01cb63fd490d5656c0fbd9c5b0565
[T02-after] HEAD=72237ef285d01cb63fd490d5656c0fbd9c5b0565
parents= tree=f0dbd491e0748758c7477265d3ecf94cc7bb5c28
tree f0dbd491e0748758c7477265d3ecf94cc7bb5c28
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:72237ef285d01cb63fd490d5656c0fbd9c5b0565

CASE T02 expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 72237ef285d01cb63fd490d5656c0fbd9c5b0565 [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 72237ef285d01cb63fd490d5656c0fbd9c5b0565 [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +bad [U+0020 trailing space]
[T13-before] HEAD=e9ccc4a95ba68a0c07a1c23ea91df28286020c11
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:e9ccc4a95ba68a0c07a1c23ea91df28286020c11
[T13-after] HEAD=e9ccc4a95ba68a0c07a1c23ea91df28286020c11
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:e9ccc4a95ba68a0c07a1c23ea91df28286020c11

CASE T13 expected=root rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit e9ccc4a95ba68a0c07a1c23ea91df28286020c11 [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r e9ccc4a95ba68a0c07a1c23ea91df28286020c11 [U+0020 trailing space]
[T03-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T03-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T03 expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
[T04-before] HEAD=d0ca126bcc49d9248165b24650006855c1a5d855
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
tree b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:d0ca126bcc49d9248165b24650006855c1a5d855
[T04-after] HEAD=d0ca126bcc49d9248165b24650006855c1a5d855
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
tree b1c86b75d86f80d9ed4fea4fdf4fbefd64743291
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:d0ca126bcc49d9248165b24650006855c1a5d855

CASE T04 expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit d0ca126bcc49d9248165b24650006855c1a5d855 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 d0ca126bcc49d9248165b24650006855c1a5d855 [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +child [U+0020 trailing space]
[T05-rev-parse-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-rev-parse-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-rev-parse expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 74)
[T06-rev-parse-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-rev-parse-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-rev-parse expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 74)
[T05-cat-file-commit-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-cat-file-commit-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-cat-file-commit expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
[T06-cat-file-commit-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-commit-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-commit expected=inspection74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
assertion: inspection exit 74 was handled before commit metadata parsing; no whitespace checker was invoked
[T05-cat-file-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T05-cat-file-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T05-cat-file-parent expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 74)
[T06-cat-file-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-parent expected=stop rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
stdout: plausible inspection output
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 74)
[T06-cat-file-commit-malformed-plus-74-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-cat-file-commit-malformed-plus-74-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-cat-file-commit-malformed-plus-74 expected=inspection74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: cannot read HEAD commit metadata (exit 74)
assertion: inspection exit 74 was handled before commit metadata parsing; no whitespace checker was invoked
[T06-malformed-metadata-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T06-malformed-metadata-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T06-malformed-metadata expected=stop rc=1
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
stderr: STOP: cannot establish Git parentage for whitespace check: commit metadata contains a malformed object header (exit 1)
[T07-invalid-head-before] HEAD=c1b0730e0133447badcfd47fd144e254807b06e1
error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
fatal: Not a valid object name HEAD^{commit}
HEAD-commit-type=unavailable-or-invalid exit=128
shallow=false
shallow-bytes=absent
error: bad tree object HEAD
status-inventory-exit=128
[T07-invalid-head-after] HEAD=c1b0730e0133447badcfd47fd144e254807b06e1
error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
fatal: Not a valid object name HEAD^{commit}
HEAD-commit-type=unavailable-or-invalid exit=128
shallow=false
shallow-bytes=absent
error: bad tree object HEAD
status-inventory-exit=128

CASE T07-invalid-head expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
stderr: error: HEAD^{commit}: expected commit type, but the object dereferences to blob type
stderr: fatal: Needed a single revision
stderr: STOP: cannot establish Git parentage for whitespace check: HEAD is not a readable commit (exit 128)
[T08-depth2-linear-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T08-depth2-linear-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T08-depth2-linear expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T08-depth2-fetch-detached-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T08-depth2-fetch-detached-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents=f7602043d09c3f926b74b204225698543403f82d tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 66 37 36 30 32 30 34 33 64 30 39 63 33 66 39 32
 36 62 37 34 62 32 30 34 32 32 35 36 39 38 35 34
 33 34 30 33 66 38 32 64 0a
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T08-depth2-fetch-detached expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T09-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T09-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T09 expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
stderr: fatal: Not a valid object name f7602043d09c3f926b74b204225698543403f82d^{commit}
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 128)
[T10-before] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a 66 37 36 30 32 30 34
 33 64 30 39 63 33 66 39 32 36 62 37 34 62 32 30
 34 32 32 35 36 39 38 35 34 33 34 30 33 66 38 32
 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
[T10-after] HEAD=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
parents= tree=362c17d1d2543f91216583c1d069a7303b286921
tree 362c17d1d2543f91216583c1d069a7303b286921
parent f7602043d09c3f926b74b204225698543403f82d
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a 66 37 36 30 32 30 34
 33 64 30 39 63 33 66 39 32 36 62 37 34 62 32 30
 34 32 32 35 36 39 38 35 34 33 34 30 33 66 38 32
 64 0a
ref=refs/heads/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
ref=refs/remotes/origin/main:9c5f55cf7466e465a365f4d3d5b50f52bf8c2416

CASE T10 expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
git: cat-file -e f7602043d09c3f926b74b204225698543403f82d\^\{commit\} [U+0020 trailing space]
git: diff --check f7602043d09c3f926b74b204225698543403f82d 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 [U+0020 trailing space]
[T08-depth2-whitespace-before] HEAD=41edc5625fd4212e5de78e1559951a835594c8da
parents=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 tree=1d5700036143a8547634e0cfbf4d117c58dfa96d
tree 1d5700036143a8547634e0cfbf4d117c58dfa96d
parent 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:41edc5625fd4212e5de78e1559951a835594c8da
ref=refs/remotes/origin/main:41edc5625fd4212e5de78e1559951a835594c8da
[T08-depth2-whitespace-after] HEAD=41edc5625fd4212e5de78e1559951a835594c8da
parents=9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 tree=1d5700036143a8547634e0cfbf4d117c58dfa96d
tree 1d5700036143a8547634e0cfbf4d117c58dfa96d
parent 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 39 63 35 66 35 35 63 66 37 34 36 36 65 34 36 35
 61 33 36 35 66 34 64 33 64 35 62 35 30 66 35 32
 62 66 38 63 32 34 31 36 0a
ref=refs/heads/main:41edc5625fd4212e5de78e1559951a835594c8da
ref=refs/remotes/origin/main:41edc5625fd4212e5de78e1559951a835594c8da

CASE T08-depth2-whitespace expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 41edc5625fd4212e5de78e1559951a835594c8da [U+0020 trailing space]
git: cat-file -e 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416\^\{commit\} [U+0020 trailing space]
git: diff --check 9c5f55cf7466e465a365f4d3d5b50f52bf8c2416 41edc5625fd4212e5de78e1559951a835594c8da [U+0020 trailing space]
stdout: file.txt:1: trailing whitespace.
stdout: +four [U+0020 trailing space]
[T11-parent-before] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753
[T11-parent-after] HEAD=2d19486b8ba8131be3c64794850a11cfc2a81753
parents=30b9e142ab814425020082cfac232a5ad26754a1 tree=30a14e05ef39056fc078850ab1508e2f4365478a
tree 30a14e05ef39056fc078850ab1508e2f4365478a
parent 30b9e142ab814425020082cfac232a5ad26754a1
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:2d19486b8ba8131be3c64794850a11cfc2a81753

CASE T11-parent expected=rc74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
git: cat-file -e 30b9e142ab814425020082cfac232a5ad26754a1\^\{commit\} [U+0020 trailing space]
git: diff --check 30b9e142ab814425020082cfac232a5ad26754a1 2d19486b8ba8131be3c64794850a11cfc2a81753 [U+0020 trailing space]
[T11-root-before] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
[T11-root-after] HEAD=1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc
parents= tree=8c6ce21b859ea03c7ba784370a8d1448bb74f05e
tree 8c6ce21b859ea03c7ba784370a8d1448bb74f05e
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc

CASE T11-root expected=rc74 rc=74
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
git: diff-tree --check --root --no-commit-id -r 1d7de7f6c0ecc9e2fb8b0275c60a750d8f3e40fc [U+0020 trailing space]
[T12-merge-before] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/heads/side:7c698d2949fc2254f74c4c5559b18abab8d89fdd
[T12-merge-after] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/heads/side:7c698d2949fc2254f74c4c5559b18abab8d89fdd

CASE T12-merge expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
[T12-depth2-pr-merge-before] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 30 35 39 62 31 62 35 64 38 36 35 34 64 36 30 35
 38 31 65 61 64 39 61 34 36 38 39 62 31 32 30 34
 37 31 34 31 36 34 64 65 0a 37 63 36 39 38 64 32
 39 34 39 66 63 32 32 35 34 66 37 34 63 34 63 35
 35 35 39 62 31 38 61 62 61 62 38 64 38 39 66 64
 64 0a
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/remotes/origin/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
[T12-depth2-pr-merge-after] HEAD=1110ba170bdcced6640a0618d46e26cbe8a71a64
parents=059b1b5d8654d60581ead9a4689b1204714164de 7c698d2949fc2254f74c4c5559b18abab8d89fdd tree=eab915171e1207385288a3c61671cbde76f966e9
tree eab915171e1207385288a3c61671cbde76f966e9
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent 7c698d2949fc2254f74c4c5559b18abab8d89fdd
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=true
shallow-bytes= 30 35 39 62 31 62 35 64 38 36 35 34 64 36 30 35
 38 31 65 61 64 39 61 34 36 38 39 62 31 32 30 34
 37 31 34 31 36 34 64 65 0a 37 63 36 39 38 64 32
 39 34 39 66 63 32 32 35 34 66 37 34 63 34 63 35
 35 35 39 62 31 38 61 62 61 62 38 64 38 39 66 64
 64 0a
ref=refs/heads/main:1110ba170bdcced6640a0618d46e26cbe8a71a64
ref=refs/remotes/origin/main:1110ba170bdcced6640a0618d46e26cbe8a71a64

CASE T12-depth2-pr-merge expected=parent rc=0
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 1110ba170bdcced6640a0618d46e26cbe8a71a64 [U+0020 trailing space]
[T12-merge-whitespace-before] HEAD=75d26e30347050b39162335283b3c4b8d9bab29a
parents=059b1b5d8654d60581ead9a4689b1204714164de a03d528e774d85a27675cc15ccbeb41c1eea45cb tree=d436aade32dea7ffd65a0ce7996ed1895a59e31a
tree d436aade32dea7ffd65a0ce7996ed1895a59e31a
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent a03d528e774d85a27675cc15ccbeb41c1eea45cb
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:75d26e30347050b39162335283b3c4b8d9bab29a
ref=refs/heads/side:a03d528e774d85a27675cc15ccbeb41c1eea45cb
[T12-merge-whitespace-after] HEAD=75d26e30347050b39162335283b3c4b8d9bab29a
parents=059b1b5d8654d60581ead9a4689b1204714164de a03d528e774d85a27675cc15ccbeb41c1eea45cb tree=d436aade32dea7ffd65a0ce7996ed1895a59e31a
tree d436aade32dea7ffd65a0ce7996ed1895a59e31a
parent 059b1b5d8654d60581ead9a4689b1204714164de
parent a03d528e774d85a27675cc15ccbeb41c1eea45cb
author Fixture <fixture@example.invalid> 946684800 +0000
committer Fixture <fixture@example.invalid> 946684800 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:75d26e30347050b39162335283b3c4b8d9bab29a
ref=refs/heads/side:a03d528e774d85a27675cc15ccbeb41c1eea45cb

CASE T12-merge-whitespace expected=fail rc=2
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 75d26e30347050b39162335283b3c4b8d9bab29a [U+0020 trailing space]
git: cat-file -e 059b1b5d8654d60581ead9a4689b1204714164de\^\{commit\} [U+0020 trailing space]
git: diff --check 059b1b5d8654d60581ead9a4689b1204714164de 75d26e30347050b39162335283b3c4b8d9bab29a [U+0020 trailing space]
stdout: side.txt:1: trailing whitespace.
stdout: +side [U+0020 trailing space]
[T14-before] HEAD=07d8897bcd5cebed317734c8a5c924186cd5ddec
error: Could not read 0123456789012345678901234567890123456789
fatal: unable to parse commit 0123456789012345678901234567890123456789
HEAD-metadata-display-exit=128
tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
parent 0123456789012345678901234567890123456789
author Fixture <fixture@example.invalid> 0 +0000
committer Fixture <fixture@example.invalid> 0 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:07d8897bcd5cebed317734c8a5c924186cd5ddec
[T14-after] HEAD=07d8897bcd5cebed317734c8a5c924186cd5ddec
error: Could not read 0123456789012345678901234567890123456789
fatal: unable to parse commit 0123456789012345678901234567890123456789
HEAD-metadata-display-exit=128
tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904
parent 0123456789012345678901234567890123456789
author Fixture <fixture@example.invalid> 0 +0000
committer Fixture <fixture@example.invalid> 0 +0000

shallow=false
shallow-bytes=absent
ref=refs/heads/main:07d8897bcd5cebed317734c8a5c924186cd5ddec

CASE T14 expected=stop rc=128
git: rev-parse --verify HEAD\^\{commit\} [U+0020 trailing space]
git: cat-file commit 07d8897bcd5cebed317734c8a5c924186cd5ddec [U+0020 trailing space]
git: cat-file -e 0123456789012345678901234567890123456789\^\{commit\} [U+0020 trailing space]
stderr: fatal: Not a valid object name 0123456789012345678901234567890123456789^{commit}
stderr: STOP: cannot establish Git parentage for whitespace check: first parent is unavailable or not a commit (exit 128)

RESULT=PASS T01-T14
