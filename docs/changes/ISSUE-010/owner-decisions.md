# ISSUE-010 — Owner Decisions and Planning Gate

**Repository:** `oleyna80/agentic-sdlc-lite`
**Project identity:** `issue-010-documentation-model`
**Recorded:** 2026-10-22
**Status:** exact specification accepted for gated planning; Project P/implementation/merge approvals PENDING.

## OD-010-01 — Documentation architecture direction

The Owner approved the following model in the active conversation before Architecture R2:

- `PROJECT_BRIEF.md` — enduring product intent/identity.
- `ROADMAP.md` — dated human-readable journey: origin, current position, direction; overview only, not execution authority. Optional in derived repositories.
- Project-local `intent.md` — optional when authenticated Owner request/Issue suffices.
- Project-local `spec.md` — accepted requirements and design.
- Project-local `plan.md` — reviewed and separately Owner-approved frozen Project P.
- `docs/changes/<task-id>/work-block.md` — bounded stage W.
- Handoff/assurance/delivery evidence and integrated memory retain existing distinct roles.

No new controller/registry, mandatory intent approval or new routine-work gate. Existing exact Owner/Critic/Verifier/merge boundaries remain in force. This is an architecture decision, **not** a prior formal Project Critic/Stage Critic result.

## OD-010-02 — Exact specification acceptance and implementation-process authorization

**Owner's subsequent chat statement, following explicit presentation and recommendation to accept the exact candidate specification:**
> «Отлично. можем перейти к реализации прямо здесь через [$github](app://connector_76869538009648d5b282a4bb21c3d157) а в локальный Codex передать ревью»

The immediately preceding decision subject was [the exact ISSUE-010 candidate specification](https://github.com/oleyna80/agentic-sdlc-lite/blob/e391d09cc908e886d4e019d54987fc26d34bbb55/docs/projects/issue-010-documentation-model/spec.md), identified there by commit/blob. This affirmative response is recorded as **acceptance of that exact specification for subsequent formal planning**, not as acceptance of a not-yet-reviewed P. If the Owner disputes that interpretation, STOP and correct the evidence before any normative implementation.

Exact accepted specification:

- Repository: `oleyna80/agentic-sdlc-lite`
- Source commit: `e391d09cc908e886d4e019d54987fc26d34bbb55`
- Path: `docs/projects/issue-010-documentation-model/spec.md`
- Git blob: `a364ec0fbd21767a36820653bd851d552c8ab7a7`
- SHA-256 of UTF-8 content: `866a3cb1ba0958cb0e19fcc392cfb5cb960837b70042c772c0778a08dc1ffa14`
- Scope: AC-01…AC-12, proposed 17 normative source paths, ADR-0002, source `ROADMAP.md`, historical root-P preservation, optional downstream roadmap.
- Architecture Proposal R2: `docs/changes/ISSUE-010/proposal-r2.md` at same source commit, blob `5480ac967f597290138466c8ae38ac275a25be46`.
- Independent Architecture Critic R2: READY for Owner architecture review only, report at `docs/changes/ISSUE-010/architecture-critic-r2.md`, blob `2901f80ac5aec310526d4b414986e857c3714e74`; finding R2-L01 retained.

**Provenance limitation:** The Owner message originates in the current ChatGPT conversation. This file transcribes it through a connected GitHub assistant; it is not a cryptographic signature or a GitHub comment authored personally by the Owner. A future reviewer must distinguish the original chat decision from this documentary record; do not infer approval from a copied hash alone.

## OD-010-03 — Current authorization boundary

The Owner asked for GitHub-based authoring with an **independent local Codex review**. This authorizes the bounded planning phase: creation and ordinary publication of the candidate P and this decision evidence on the existing ISSUE-010 task branch, plus a Draft PR for review.

**Not yet authorized:**

- Claiming formal Project Critic READY; local Codex must actually review exact committed P/spec and report.
- Owner acceptance of exact P or delegated execution bounds.
- Committing stage W as executable/Stage Critic READY or changing the 17 normative source files.
- Claiming independent source Reviewer/Verifier results or executed T01–T22.
- Merge to `main`, deployment, branch-protection/CI/hooks/settings changes, history rewrite/force push.

Next gate: independent **formal Project Critic** for exact committed Project P. Its READY enables, but does not replace, a separate Owner exact-P approval. Only then a conforming W plus independent Stage Critic can authorize bounded normative editing, subject to real tool permissions.

Record later decisions in a separate attributable entry; **do not mutate the reviewed/approved P to append statuses or signatures**.

## OD-010-04 — Explicit exact-specification confirmation (2026-10-22)

The Owner directly confirmed in the active conversation:

> Подтверждаю принятие specification ISSUE-010 из commit e391d09cc908e886d4e019d54987fc26d34bbb55, файл docs/projects/issue-010-documentation-model/spec.md, blob a364ec0fbd21767a36820653bd851d552c8ab7a7, включая AC-01…AC-12 и scope из 17 paths. Это принятие specification, не approval Project P.

This is a new explicit Owner decision, transcribed from the current conversation. It resolves the exact-specification binding gap raised by formal Project Critic R1 without reconstructing or authenticating the earlier OD-010-02 exchange. No cryptographic identity or personally authored GitHub signature is claimed or required. The original R1 BLOCKED verdict remains historical evidence, not a retroactive READY.

The accepted spec commit/path/blob and SHA-256 remain exactly those recorded above. Project P approval, W/Stage Critic, normative implementation and merge remain PENDING. The Owner separately authorized ordinary in-scope planning corrections (trailing whitespace, current handoff and repeat independent review), without an additional Owner approval for each correction.

### Original planning authorization excerpt

Source: Owner mission “SDLC Lite — ISSUE-010 / Documentation Architecture Compatibility Review R2”, §7, in this conversation. The following is the exact bounded excerpt establishing the project-local planning exception and gate order; it is retained with the direct exact-spec confirmation above, not a claim of personally signed GitHub evidence.

> Owner разрешает развитие документации SDLC Lite в рамках утверждённой архитектурной модели.
>
> В этой миссии разрешено подготовить отдельную task branch и bounded planning/proposal artifacts для ISSUE-010, не затрагивая существующие frozen документы.
>
> **Однократное planning-path exception:** допускается создание candidate specification и candidate P по новому project-local пути `docs/projects/issue-010-documentation-model/`, чтобы проверить предложенную структуру. Это не утверждение их содержания и не отмена действующего Project Critic → Owner exact-P approval.
>
> Planning/evidence scope должен быть предварительно явно перечислен, проверен на коллизии и ограничен документами ISSUE-010.
>
> Порядок:
>
> 1. Выполнить compatibility audit и Architecture Critic R2.
> 2. При READY представить Owner уточнённую exact specification и предлагаемый scope.
> 3. Получить Owner acceptance exact spec.
> 4. Подготовить committed P и независимый formal Project Critic.
> 5. Получить отдельное Owner approval exact P.
> 6. Подготовить W и независимый Stage Critic.
> 7. Только затем выполнять нормативные source edits.
> 8. Independent Reviewer/Verifier, actual CI, отдельный Owner Merge GO.
>
> Не использовать утверждение архитектурного направления как безусловное разрешение менять canonical source.
>
> **Merge/deployment authorization: NOT GRANTED.**

## OD-010-05 — Owner exact Project P approval (2026-10-22)

The Owner directly confirmed in this conversation, after examining the independent Project Critic R2 READY and exact P identity:

> проверил. Утверждаю Project P ISSUE-010, commit `41530894af15ecdb9347b8f39e9ee6f939f0bc16`, blob `5b0dfb2654ed3072b655de73068b438dc4cb9b1a`, с указанными границами автономии

**Exact approved Project P:**

- Repository: `oleyna80/agentic-sdlc-lite`; stable project ID: `issue-010-documentation-model`.
- Review subject commit: `41530894af15ecdb9347b8f39e9ee6f939f0bc16`.
- Path: `docs/projects/issue-010-documentation-model/plan.md`.
- Git blob: `5b0dfb2654ed3072b655de73068b438dc4cb9b1a`.
- Content SHA-256: `aa94c2510d7d27a4d66c3bbd9c04ceb8a3770a7f7e1a8622f89e22cf20a18e75`.
- Accepted specification: `e391d09cc908e886d4e019d54987fc26d34bbb55:docs/projects/issue-010-documentation-model/spec.md`, Git blob `a364ec0fbd21767a36820653bd851d552c8ab7a7`, accepted by OD-010-04.
- Formal independent Project Critic: **R2 READY**, original response preserved inside `docs/changes/ISSUE-010/project-critic.md` at evidence commit `f27a5aca92a47e9355242685c4326047d3e97408`, report Git blob `0ddfe900d15ec8fd1905212b77fc5d27498e8a17`, with historical R1 BLOCKED retained; this report is not an Owner approval.
- Approved project scope: the exact 17 documentation-source paths defined in accepted Spec §4 and Project P §3; AC-01…AC-12 and proposal T01…T22; preservation of legacy P/W, ADR-0001 and source policy boundaries.

**Owner delegation and constraints:** Approves preparation/commit/publication of one bounded stage W on the existing ISSUE-010 branch, with independent Stage Critic review, followed by autonomous changes limited to the approved source/evidence write sets **only after actual Stage Critic READY** and applicable parent conformance/permission checks. The existing project P establishes normal branch commits, non-force push, PR/CI and independent same-source assurance. No new Owner-per-conforming-W approval is implied. The Owner's immediately preceding message separately authorized preparation of the Stage W design.

**Not authorized by this decision:** any normative source edit before committed W + independent Stage Critic READY; broad scope enlargement; changes to historical frozen contracts, CI/hooks/permissions/branch settings, Skills/runtime; direct `main` writes, merge, deployment, or claims that T01–T22 / future Reviewer/Verifier / delivery CI already passed. Final Owner Merge GO remains a distinct future decision.

**Provenance:** Original direct chat assent transcribed via the connected GitHub assistant, attributed as an Owner decision for this task. No cryptographic or personally signed GitHub identity assertion is made; the explicit exact P subject above is the authorization boundary. Any contradiction with later authentic Owner instructions requires STOP before affected writes.
