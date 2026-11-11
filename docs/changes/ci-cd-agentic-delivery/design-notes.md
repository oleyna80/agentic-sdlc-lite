# Agentic CI/CD Delivery — Architecture Discussion and Local Validation Brief

**Status:** PROPOSAL / DISCOVERY — not an accepted specification, project plan, Work Block, ADR, or authorization to modify production.
**Recorded:** 2026-11-11
**Target:** SDLC Lite methodology and its application in existing projects (initially `oleyna80/hardwarelab` and `oleyna80/azursystech-site`).
**Scope of this record:** consolidate Owner discussion, preserve the desired operational model, and give a local agent a concrete read-only gap-analysis brief. This record does not change `AGENTS.md`, canonical lifecycle, hooks, CI, GitHub settings, release policy, or VPS state.

## 1. Objective and design posture

Create a dependable end-to-end development, review, continuous integration, image publication, and deployment process that accommodates multiple coding agents while preserving SDLC Lite's portable, documentation-first model.

**Retain SDLC Lite as the proposed methodology baseline.** Its existing canonical authority is `AGENTS.md` and `docs/workflow/development.md`; do not introduce Controller v1, a second lifecycle, a registry, a scheduler, an automatic merger, or a new authorization system without a demonstrated need. Use native harness subagents, Git worktrees/refs, GitHub Actions, GHCR, Docker Compose, and narrowly scoped hooks.

Existing project governance takes precedence over this discussion record. The previous AzurSysTech Controller-based implementation is a source of potentially reusable *invariants*, not presumptive authority for a Lite migration. Any adoption or retirement in that project needs separate analysis and Owner approval.

## 2. Conceptual clarification: local worktree versus GitHub branch

- A local **worktree** is a separate checkout/directory linked to the same local Git repository (shared Git objects and refs). It is not itself uploaded to GitHub.
- Each coding task may have a local worktree with a task branch. `git push` publishes *commits and a branch ref* to GitHub; it does not publish the worktree directory.
- A Pull Request compares a remote subject branch with its base (usually `main`); **the PR merges commits/content**, not the worktree.
- After an approved merge, GitHub `main` advances to a resulting integration commit `M`. Its SHA need not equal the pre-merge candidate SHA (notably for squash/rebase/merge).
- `git pull --ff-only` synchronizes a **local checkout** of `main`; it is not a required stage for a GHCR-based VPS deployment.
- The delivery pipeline should build from the verified post-merge `main` commit, push an image to GHCR, then let the VPS **pull and run the image**. No `git pull` or build-from-source is required on the VPS.

## 3. Agent roles and integration ownership

The following is an implementation interpretation of existing Lite roles, **not a second lifecycle**.

1. **Owner / Orchestrator:** Owner supplies goals, authority boundaries and material decisions; Orchestrator plans approved work, assigns bounded write-sets/worktrees, integrates results and owns the final source-candidate selection.
2. **Project Critic / Stage Critic:** Independent design/planning review at the existing mandatory points for *significant* work; risk-proportionate route for routine work remains unchanged.
3. **Coder(s):** Implement within approved write-set; may make **intermediate local commits** or hand off patches as required to integrate separate worktrees. A Coder's intermediate commit does not by itself become an assured delivery candidate.
4. **Orchestrator / Integration Coder:** Consolidate dependent results; use a single integration writer for overlapping paths and conflict resolution. Fixes introduced while integrating are **source changes** and must enter subsequent review/verification.
5. **Independent Reviewer:** Inspect exact committed source candidate `S`, full relevant diff and correctness/maintainability/risks; report actionable findings or READY. Do not write to the reviewed source.
6. **Independent Verifier:** Run acceptance criteria and independently reproducible checks on the **same `S`**; report PASS/FAIL/BLOCKED with actual commands/results. Do not change the reviewed source.
7. **Orchestrator:** On REWORK/FAIL, return to Coder, create a **new S** and repeat affected assurance; after complete assurance, prepare authorized delivery and PR.

Cross-harness and cross-provider review is a desirable option: e.g. Claude Code / another model for orchestration and coding, OpenAI Codex for independent review/verification. Separate model identity reduces some correlated-error risks but does **not** itself prove independence. Record model/runtime and context boundaries as evidence, use read-only permissions when possible, and treat same-context advisory review honestly. Do not require a second provider for every routine task.

For independent changes, prefer separate PRs if the changes can merge sequentially. A shared integration branch is justified when multiple task results must be validated and released together. Never conflate worktree isolation with OS/security isolation.

## 4. Candidate provenance and review loop (existing S/H, release M)

### S — frozen source candidate

- Orchestrator identifies and commits final integrated source tree `S` (full Git SHA), with clean, known worktree status.
- Reviewer and Verifier must target **the same S and the intended PR-base diff**. Their source assurance is stale after changes affecting that candidate. Evidence is separate and traceable.
- On a source correction, form a new S and redo required checks; an old READY/PASS cannot authorize a changed source.

### H — delivery HEAD

- Existing Lite allows an evidence/coordination-only delivery commit `H` following `S` **only** after checking `S..H` for absence of substantive source, tests, requirements or gate changes.
- Required current-head CI must actually pass on `H`; statuses from `S` are not blindly inherited.
- Evidence may be stored in task-local reports or PR metadata according to the existing protocol; do not generate endless self-referential commits merely to record CI run IDs.

### M — post-merge main commit

- Owner (under the currently approved human-governed profile) reviews PR/assurance/CI and separately authorizes **merge**.
- Verify actual PR merge result and main commit `M`. The merge method may create a new SHA; ensure the integrated tree is the intended content. If base drift or merge resolution introduces substantive changes, repeat relevant verification.
- Run **required CI on M** and publish the production image from precisely `M` (or a manifest proving that exact source). Do not assume PR checks alone cover the final integrated tree.

**Traceability:** `review/verify(S) → delivery CI(H) → authorized merge(M) → main CI(M) → image(M) → deployed image digest`.

## 5. Proposed GitHub CI/CD workflow

```text
Approved scope / SDLC Lite project and stage gates
             |
Multiple local task worktrees + bounded Coders
             |
Orchestrator/integrator → committed candidate S
             |
Independent Reviewer READY(S) + Verifier PASS(S)
             |     (FAIL/REWORK loops back to Coders with new S)
             v
Delivery HEAD H + diff S..H + current-head checks
             |
git push task branch → GitHub Pull Request → PR CI
             |
Owner merge authorization (baseline, NOT automatic)
             |
Verified main integration commit M → CI on M
             |
Docker build of M → GHCR image (prefer digest + immutable SHA tag)
             |
CD: verify permitted source/image + deployment authorization
             |
VPS: docker compose pull + recreate intended service(s)
             |
Healthcheck / smoke check / monitoring; rollback if failure
```

- **CI:** Deterministic lint/types/tests/build/security and applicable integration/e2e tests. Select test depth according to application/risk. CI validates results; it is not a replacement for engineering review.
- **Assurance check:** Evaluate required independent role evidence for exact candidate, permitted `S..H` changes and current-head CI as appropriate. Prefer a small, testable validator of existing invariants over a new control plane. Do not invent READY/PASS when independent runtime evidence is unavailable.
- **GitHub merge gate:** Audit available branch protection / rulesets for *private repositories* and plan limitations. GitHub check runs are not an enforced merge prohibition unless a platform rule enforces them. Fail closed at release if required upstream evidence is absent.
- **Image publish:** Publish only authorized post-merge `main` commits after successful required CI. `packages: write` belongs only to the trusted image-publish workflow, not untrusted PR jobs. Avoid reusing a supposedly immutable `sha-* ` tag for different image contents; record digest.
- **CD:** Verify the exact approved image digest/SHA and required CI; isolate deploy credentials from PR/test workflows. Serialize deployments to avoid an older workflow overwriting a newer release. Use configured Compose project paths and persistent volumes; no destructive `down -v` or indiscriminate prune.
- **Production readiness:** VPS runtime health, external smoke endpoint(s), persistent state, backup and rollback path must be verified. Changes to database/schema, secrets or irreversible external state require separate authorization.

The owner expresses a preference for **automated deployment after a successful, authorized merge**. This may be an explicit per-repository **pre-authorized CD policy** if risk, rollback, credential scope and operational checks are proven. It **does not** imply autonomous merge or autonomous expansion of production authority. Until such a policy is separately approved, respect existing deployment hard stops.

## 6. Hooks and enforcement without a new Controller

- **Harness-native hooks/permissions:** Scope task workspace and writable paths, prevent unauthorized agent tool actions, restrict Reviewer/Verifier writes; test actual runtime behavior per harness.
- **Git hooks:** `pre-commit`, `commit-msg`, `pre-push` for deterministic local invariants, destination restrictions and secret/conformance checks.
- **GitHub Actions / platform controls:** Independent CI evidence and production release predicates. A local hook alone is bypassable/cooperative; native subagent labels do not supply OS isolation.
- Keep **one conceptual rule set** backed by small reusable validators; do not reimplement a full policy engine for each harness. Select portable checks first; create harness adapters only where they materially improve correctness.
- The canonical Lite `docs/workflow/development.md` remains the **sole lifecycle**. Hook installation/activation needs a separate scoped decision and positive/negative tests; no activation in this documentation-only branch.

## 7. Facts to verify in the two deployment pilots

### HardwareLab (`oleyna80/hardwarelab`)

At audit time: existing PR CI, SDLC Lite checks, `workflow_run` image publication and automatic VPS deployment; Docker image tag `sha-<commit>` and a health-checked Compose service. Review `CI → Docker Publish → Deploy to VPS` provenance, manual-dispatch escape paths, concurrent releases, rollback, shared reverse proxy and exact live image. Do not assume successful workflow alone proves current VPS state.

### AzurSysTech (`oleyna80/azursystech-site`)

At audit time: app/web, showcase, optional admin builds, current-head CI, manual Docker Publish and manual Deploy to VPS with preflight, health checking and rollback. The older Controller-based contracts remain in that project's files; avoid changing them or assuming they are active locally without a separate migration decision. Review whether source `main`, GHCR image and live VPS image SHA match and whether the existing deployment safety can be reused.

These are *dated repository observations*, not installation, production, or compliance verification.

## 8. Local-agent discovery / proof-of-feasibility checklist

**Read-only first.** Run on an actual Linux checkout of `agentic-sdlc-lite` and on the target application worktrees; do not infer local worktrees from GitHub branch lists.

1. Identify `git rev-parse --show-toplevel`, `--git-common-dir`, `worktree list --porcelain`, branches, tracked/staged/untracked/ignored material and `core.hooksPath`; inspect any stale/prunable worktree before changing it.
2. Check which native harness hooks actually run and which are merely present in files; review users, writable paths, sandbox and secrets boundary. Test write-denial and permitted operation on **disposable fixtures**, not production or a dirty project worktree.
3. Reconcile current Lite source lifecycle, `S/H` evidence, review/verifier independence and availability of cross-harness Codex review. Show real commands/logs for positive and negative examples; do not represent a shared filesystem or process as independent OS isolation.
4. Trace PR checks, exact SHA, merge strategy and workflow event contexts; verify whether platform rules *enforce* merge restrictions. Distinguish available protections from assumed protections.
5. Trace both existing pipelines from pushed commit to GHCR digest and actual running container; check replay, stale deploy, manual dispatch, permissions, health/rollback and monitoring. Keep all checks read-only until explicitly authorized.
6. Produce a **gap table** with `ALREADY IMPLEMENTED / PRESENT BUT UNVERIFIED / BROKEN / MISSING / NOT REQUIRED`, severity, concrete evidence, minimal fix, owner decisions and cost. Include regressions, run-time overhead and CI reliability.
7. If implementation is later approved, propose the smallest scoped, testable Work Blocks; do not change accepted architecture/authority, merge branches, deploy, activate hooks or delete worktrees under this discovery mandate.

## 9. Acceptance criteria for this design discussion

- One traceable explanation of the complete Git worktree → branch → PR → main → GHCR → VPS flow, correcting the misconception of a worktree being pushed to GitHub.
- Explicit separation of Orchestrator candidate ownership from Coder intermediate commits, and independence of Reviewer/Verifier.
- Clear S/H/M source identity and rules for re-review after source changes.
- Separation of optional cross-model assurance, mandatory deterministic CI and actual platform/release enforcement.
- Concrete non-duplicative use of harness/Git hooks, with existing Lite lifecycle unchanged.
- An evidence-based comparison of Lite with legacy Controller mechanisms, favoring small reusable invariants over a second runtime.
- Automated CD **proposed**, but merge and production authority not silently changed.
- Next steps and unresolved decisions explicit; no claim that the full pipeline has been implemented or validated.

## 10. Decisions left for Owner / implementation phase

1. Which exact local worktree/repository and integration strategy should host the first pilot?
2. Which agent/harness combinations provide *demonstrably independent* assurance at acceptable cost?
3. Which GitHub private-repository protections are available, and which release guard is needed if they cannot enforce PR checks?
4. Which change classes, if any, receive pre-approved automatic production CD following Owner-authorized merge?
5. What rollback, healthcheck and retention criteria are mandatory for each application?
6. Which previous Controller invariants are reusable without importing its runtime or contradictory authority model?

**This branch records discussion only.** Subsequent local-agent feedback can update this proposal branch. Normative Lite lifecycle/policy edits require the existing significant-project approval path, not an implicit promotion of this file.
