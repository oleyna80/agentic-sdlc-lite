# ISSUE-009 — Owner decisions and acceptance evidence

## D1 — Stacked planning architecture (2026-10-20)

Provenance: explicit Owner message in this planning session, titled **Owner Architecture Disposition — ISSUE-009**, decision **APPROVE STACKED PLANNING STRATEGY, NOT IMPLEMENTATION**. This is a bounded summary of the actual instruction, not a raw transcript or an approval signature.

- Prepare a new significant ISSUE-009 project in a separate branch from exact `69246782c99423721fdb4a6adefc693ee6f57613`.
- In that isolated branch a new root `plan.md` may represent the new project revision. Preserve old P's exact SHA/blob and reachable ancestry; no historical approval substitution.
- PR #11, Source S12, WB-LITE-002 approved P and frozen W2 remain unchanged.
- ISSUE-009 depends on PR #11. Its initial PR targets `docs/wb-lite-002-implementation`; later main integration needs live base/ancestry/source/current CI evaluation.
- Follow exact specification acceptance → committed P → independent Project Critic READY → separate Owner exact-P approval → committed W → independent Stage Critic READY before implementation.
- Future implementation is limited to the existing whitespace step's run body. Other steps, checkout, hooks or permissions require further Owner disposition.
- Independent Reviewer/Verifier bind one source SHA. Real Actions and final merge are separate. No main/PR #11/GitHub-settings changes in this planning mission.

**Authority granted now:** prepare specification and minimal P in the new planning branch for later independent Critic. **Exact specification acceptance and exact P approval have not been supplied.** Do not treat D1, previous WB-LITE-002 approvals, R8 or R2 as those approvals. Do not start Coder.

Record subsequent actual Owner decisions here with exact commit/blob/hash and applicable report reference only when received; never backfill or infer them.

## D3 — Exact Project P approval (2026-10-20)

Provenance: explicit Owner message in this session, titled **Owner Project Approval — ISSUE-009**, decision **APPROVED**. This record preserves the actual chronology; it does not alter or backdate D1.

Exact accepted project artifacts:

- P commit: `90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74`
- P tree: `b100e709d9472a4e617e67dfa42fd46bbb734fc9`
- `plan.md` blob: `399b3bb96c6482d35fed93411104d04d3d191482`
- Specification blob: `688ab2744f19307dc8e15b85d0678930aa02ec92`
- Specification SHA-256: `1b4c9900b3e73501b7d201a8a785f7422452e83af1ad2592bab69100a021e4c4`
- Independent Project Critic report: [project-critic.md](project-critic.md), exact P above, verdict READY (Owner review), no blocking findings.

Owner delegated preparation/commit of one conforming W, independent Stage Critic and in-scope REWORK, then only the named workflow run body and W-authorized fixtures/evidence after Stage Critic READY; T01–T14; independent Reviewer/Verifier on the same source SHA; scoped task-branch commits, non-force push to ISSUE-009 branch, separate draft stacked PR, and actual current-head CI where permissions allow.

Not authorized: changes to PR #11, S12, prior P/W2, `main`; checkout configuration, other workflow steps, hooks, workflow permissions, security boundaries or scope expansion; retargeting to `main`, integration, merge or deployment. Those remain separate Owner decisions. Project P approval is not merge approval.
