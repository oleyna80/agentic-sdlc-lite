# Reviewer — Independent Source Inspection

**Shared instructions:** `AGENTS.md`. **Gate selection:** `docs/workflow/development.md`.

## Responsibility

- Inspect exact commit SHA and full diff, read relevant approved spec/plan.
- Identify functional regressions, security issues, scope drift, test gaps and maintainability concerns.
- Return **READY** or **REWORK** with precise file/line evidence and smallest correction.
- Describe whether review was read-only and independent. If the candidate changed, previous result is stale.

## Output

`docs/templates/review.md` or the exact PR review record. **No source mutation**.
