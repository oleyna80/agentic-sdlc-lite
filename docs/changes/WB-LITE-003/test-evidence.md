# WB-LITE-003 — S1 Static Design Evidence

**2026-10-23 · S1 documentation only · native tests NOT_RUN.** This file records author-side parsing and consistency checks of GitHub-retrieved content, not an independent test verdict or OS-native execution.

**Approved W-S1:** `9096c6e3247ded41afd6db7489213a71a3a4d819` / blob `ca4deb5cabbef0ac6e620bba988fec017d99bed4`, [independent Stage Critic READY](https://github.com/oleyna80/agentic-sdlc-lite/blob/686d81de9680e0be4aa4e96a074f1e91d05c7534/docs/changes/WB-LITE-003/stage-critic.md), report blob `b73d14f47ff1e53f7be6309cc07e8146d4761bbb`. Approved Project P `70c3313a4bfe323869b8b9317cfc0c39deb00c16` / blob `f374a4a8c7e51955547885fb96241b45a3f9ad9d`; accepted Spec blob `0655245d5f00aafc6980d4a5e1232eacb0b7da53`.

## Source evidence

- First jointly committed corpus/oracle SHA: `0b56dbecc4894e776fbf26d0a4d8dc6629350167`.
- `eval-cases.jsonl` blob: `521f65a7e0223b144b90d2969184665305f056f3`.
- `eval-oracles.md` blob: `bded65da501ef899b0b5ba0a7ce9db5268a8e915`.

## Checks actually executed

| Check | Result |
| --- | --- |
| JSONL parsed one JSON object per nonblank line | PASS: 67 records |
| Unique case/oracle identities and matching registry | PASS: 67 case rows, 67 oracle rows, exact case-to-oracle links |
| Explicit/baseline comparability | PASS: 11 reciprocal pairs have identical task prompts and roles |
| Future scoring denominators | PASS: 11 explicit + 11 baseline + 22 implicit + 22 nonmatch + 10 fixed near + 2 extra near + 16 safety = 94 runs |
| Fixed near threshold | PASS: 8/10 retained without mixing the two extra near runs |
| Nearby competitor coverage | PASS: all 11 approved Skills represented |
| Nonmatching allowed selection sets | PASS: empty for each unrelated case |
| Fixture staging descriptors | PASS: read-only; no executable S1 fixtures |
| Initial corpus commit changed-file inventory | PASS: exactly the two authorized S1 documentation paths |

## Independent Critic observations incorporated

- OBS-S1-R1-01: `near-fixed-10` has an unchanged denominator, additional cases are separately assigned to `near-coverage-extra`.
- OBS-S1-R1-02: future JSONL order, repetitions, fixed sample IDs, invalid observation/contamination handling and no selective rerun policy are recorded before scoring.
- OBS-S1-R1-03: EXP/BASE cases share task prompt/role, and the future executor must verify identical applicable AGENTS/procedures and external Skill inventories.
- OBS-S1-R1-04: mandatory native positive and negative instrumentation capability must be demonstrated by non-scored smoke; trace silence alone cannot be scored as no activation.

## Evidence limits

**NOT_RUN / NOT_TESTED:** actual Codex catalog root/nested discovery, typed inputs, implicit selection or internal loading, all planned 94 scored runs, executable negative fixtures, OS sandbox policy, before/after state and native Reviewer/Verifier. A successful GitHub structural CI does not establish any of these. Actual CI on this or a subsequent handoff commit is recorded separately only after checking its exact run.

Future changes to case/oracle text after scoring would require a new pinned revision and affected retest; pre-existing SHA and original reports are not overwritten.
