# Project Plan — corrective SDLC Lite v0.1

## 1. Product objective и contract boundary

Согласовать двухуровневый Agentic SDLC Lite и устранить R5 AUD/CRIT/PROC findings до пилотов. Пользователи: Owner и native-harness агенты. Результат release — непротиворечивые документы/шаблоны/роли и минимальный first-use CI guard, с проверяемым автономным исполнением bounded stages.

Specification: [corrective spec](docs/changes/lite-v01-corrective-project/spec.md). Baseline: `90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab`. Input: [WB-LITE-002 R5](docs/changes/WB-LITE-002/work-block.md), SHA-256 `d7dbd05c8ec71eafe41156d32a0b3824030380f3efc3256791de52b13bb90430`. Applicable accepted architecture: [ADR-0001](docs/decisions/0001-lite-foundation.md). Audit/Critic R1 revision `d28e4bb1fc52e2ee3eafee6afa015cd678c45c0a` — input evidence, не verdict на этот plan.

Это complete proposal для Owner, а не утверждение о внедрённом workflow. Owner Clarification R5 явно задаёт новый design requirement поверх старого optional-roadmap/Owner-before-WB-Critic порядка. Применимые текущие инструкции, реальные permissions и security boundaries действуют до их разрешённой синхронизации. Project-specific contract не создаёт второй root AGENTS, controller или authority tier.

План адаптирует Product objective / Roadmap / Milestones / Risks существующего [template](docs/templates/plan.md). Mutable roadmap status и Progress заменены отдельным [handoff](docs/changes/lite-v01-corrective-project/handoff.md), чтобы approval не требовал post-review mutation. План не содержит поздне-заполняемых SHA/verdict/approval/status полей.

## 2. Exact subjects, approval и frozen provenance

- **P** — Git commit полного project proposal; subject `plan.md` плюс linked specification и R5 input на той же revision. Project Critic report фиксирует exact P и Git blob IDs всех трёх artifacts. При REWORK новый committed P и повторный Critic, без Owner на каждом bounded planning cycle.
- **W** — отдельный committed stage Work Block; **S** — source candidate; **H** — итоговый delivery HEAD. Ни буква, ни доступный SHA не создают полномочий. R5 input на P не объявляется Stage Critic READY W.
- Prerequisites Project Critic: документированное принятие точной specification, complete committed P, scoped planning authority и фактическая независимость. Project READY означает готовность к Owner review. Owner принимает exact READY P отдельным record с reviewed plan/spec blobs, report reference, OD disposition и delegated bounds. При принятии те же bytes frozen без правки.
- После approval P Orchestrator подготавливает actionable W из R5: complete execution contract с verified parent P/spec, conformance, entry conditions, bound paths/outputs/AC/checks. Исторические draft-only поручения R5 остаются provenance, не переносятся в новый W как действующий запрет approved execution. Изменение ещё не frozen stage proposal допустимо; historical frozen contracts не переписываются.
- Independent Stage Critic на exact W → READY + conformance approved P/permissions → frozen тот же W blob → Coder. Owner не утверждает каждый соответствующий P W; Stage READY не предоставляет новые permissions.
- P/W, Critic и Owner evidence сохраняются предпочтительно через ancestry implementation branch. До Coder и на S проверяются ancestry и blob identity, ссылки на approved records доступны в durable Git history. Original reviewed refs не заменяются dangling objects.
- Alternate-base transfer требует verified applicability, unchanged blobs по исходным paths, retained original P/W/reports, old/new base и SHA/blob mapping, отдельного Owner provenance disposition или ранее явно покрывающего случай. Blob equality не доказывает совпадение project context. Material context/spec/P change — новый P, affected Critic и Owner approval; W-only change внутри P — новый W/Stage Critic, без Owner-per-WB.
- Owner decision, Critic reports, working phase, progress и evidence записываются отдельно. Approval/freeze/перенос/closeout не меняют P/W. Если approved specification существенно меняется, повторяется affected project review/approval до affected writes.

## 3. Scope и точный implementation write-set

| № | Source path | Минимальное назначение |
| --- | --- | --- |
| 1 | `AGENTS.md` | Root ссылки на двухуровневый lifecycle, краткое target-write правило, existing precedence. |
| 2 | `docs/workflow/development.md` | Единственный canonical project/stage lifecycle, exact assurance, coverage и autonomy/escalation. |
| 3 | `docs/workflow/memory.md` | Единственная checkpoint matrix, recovery, P/W vs progress, scratch boundaries. |
| 4 | `docs/workflow/initialization.md` | Limited first-use CI vs полный initialization checklist. |
| 5 | `docs/workflow/workspaces.md` | Git/non-Git target verification, explicit commands, read/copy, cadence/bootstrap, coverage. |
| 6 | `.agents/roles/coder.md` | Routine mission либо approved P + frozen READY W; bounded source execution. |
| 7 | `docs/templates/subagent-mission.md` | Role-specific inputs, scope/permissions, routine N/A и significant P/W. |
| 8 | `docs/templates/session-handoff.md` | Conditional checkpoint, exact observations, recovery и next-stage dependencies. |
| 9 | `docs/templates/closeout.md` | Actual result, source/delivery SHA, required gates, routine N/A. |
| 10 | `docs/changes/README.md` | Task artifacts/checkpoint routes и separate project/stage evidence. |
| 11 | `.github/workflows/lite-checks.yml` | Только существующий inline first-use guard step. |
| 12 | `.agents/roles/orchestrator.md` | Project proposal/Critic до Owner; autonomous stages, local choices и escalation. |
| 13 | `.agents/roles/critic.md` | Independent project/stage subjects, READY semantics, no invented authority. |
| 14 | `docs/templates/work-block.md` | Parent P/spec, conformance/entry/outputs/AC, no Owner-per-WB и late-fill. |
| 15 | `docs/templates/critic-review.md` | Exact P либо W/blob, separate report и truthful permission gaps. |
| 16 | `docs/architecture/overview.md` | Definition и autonomous stage loop, final merge отдельно. |
| 17 | `README.md` | Public route/navigation согласовать с canonical lifecycle. |
| 18 | `docs/workflow/agent-roles.md` | Navigation-only role responsibilities, без второго протокола. |
| 19 | `docs/templates/plan.md` | Complete immutable project contract вместо mutable optional roadmap. |
| 20 | `PROJECT_MAP.md` | Project-planning/recovery navigation, progress в task evidence. |
| 21 | `.agents/roles/architect.md` | Owner-assisted specification и local bounded engineering decisions. |

Ровно 21 существующий source path. Новая normative dependency вне списка — STOP/Owner scope decision. Не считать большой Markdown diff routine. Не менять другие CI steps, dependencies или hook behavior.

**Planning/evidence отдельно от source write-set:** root `plan.md`; project `docs/changes/lite-v01-corrective-project/{spec.md,owner-decisions.md,planning-checks.md,handoff.md,critic-r1.md}`; stage `docs/changes/WB-LITE-002/{work-block.md,critic-review.md,handoff.md,review.md,verification.md,closeout.md}`. Braces — конечное перечисление paths, не wildcard permission. При REWORK новые numbered Critic reports предварительно объявляются как evidence-only paths; unapproved новые source paths запрещены. Один writer на overlapping paths; independent roles возвращают исходный report, Orchestrator сохраняет его без подмены verdict.

Planning-only mission разрешает подготовку specification/plan/evidence и scoped planning commits/push только `docs/wb-lite-002-planning`. Оно не утверждает этот plan и не разрешает stage implementation. Фактические статусы/разрешённые текущие paths фиксирует handoff.

## 4. Owner Decisions — предлагаемый окончательный disposition

При approval exact P предлагается принять все пять решений как единый bounded project contract; это предложение, а не запись уже полученного approval.

| ID | Предлагаемое решение |
| --- | --- |
| OD-1 | ACCEPT: significant corrective release до пилотов, 21 source path §3 и перечисленные planning/evidence artifacts; PROC-001…005 и двухуровневая синхронизация включены. AUD-007, settings/CFG-001/CFG-002, PR #6 и прочий §9 non-goal scope исключены. |
| OD-2 | ACCEPT: canonical checkpoint matrix R5 §6.2; достаточный PR/issue только short uninterrupted routine без handoff/parallel; interrupted/long/blocked/handoff и significant/parallel требуют соответствующего durable task checkpoint. P/W immutable, progress отдельно. |
| OD-3 | ACCEPT: exact identity; derived INITIALIZED; пять bounded source-memory groups только context/progress; literal source exception; разрешённый provenance и documented gaps. Guard не полная semantic initialization acceptance. |
| OD-4 | ACCEPT: inline guard; без новых permanent scripts/tests/framework; actual step extraction и reproducible disposable/native fixtures. Bounded local synthetic staging/commits/bare-remote non-force push покрываются plan approval и actual permissions, без внешнего fixture publication. |
| OD-5 | ACCEPT: conditional routine N/A и existing precedence; Owner definition/specification/approval exact Critic-reviewed P; autonomous W/Stage Critic/Coder/assurance/REWORK/local choices/transition внутри P; escalation и final Owner merge, отдельные high-risk/deploy/security permissions. |

Owner может отклонить/изменить proposal; material change требует нового P и affected independent Critic до approval. Specification acceptance отдельно от этих OD/plan approval.

## 5. Roadmap, зависимости, outputs и checkpoints

Минимальный release имеет один связный corrective implementation WB: разделение normative lifecycle и first-use/operational corrections по разным release stages оставило бы временно противоречивые контракты. Новые production/pilot stages не добавляются ради количества. Автономный переход между двумя WBs проверяется disposable V-24; будущий реальный stage вне этого scope требует material plan decision.

| Этап / checkpoint | Вход и зависимости | Ожидаемый проверяемый выход | Completion / переход |
| --- | --- | --- | --- |
| Project definition / planning | Owner intent/R5, verified base; accepted exact spec до formal Project Critic | Complete committed P, independent Project Critic report, separate Owner decision | Только exact READY P + Owner approval/delegated bounds открывает stage planning/execution. |
| Stage 1 — WB-LITE-002 | Approved P/spec/OD; verified implementation worktree/base; committed W/conformance; own Stage Critic READY | Согласованные 21 sources, R5 AC-1…15 и V-01…26 evidence, exact S independent Reviewer READY/Verifier PASS, authorized delivery H/PR/current-head CI, durable handoff/closeout | Все mandatory AC/checks/gates и actual CI success; outputs/provenance доступны. Внутренние planning/Coder/assurance REWORK автономны внутри P. |
| Final project acceptance / integration checkpoint | Stage 1 completion, full source/evidence mapping и CI exact H, unchanged frozen contracts | Owner получает result/risks/open findings/PR и exact candidate для финальной приёмки | Actual Owner GO и platform permissions до merge. Не отдельный implementation WB и не автоматический merge. |

Stage 1 порядок работ внутри одного W: canonical lifecycle/root → roles/templates/navigation → checkpoint/workspace rules → inline guard → all focused/disposable/native fixtures → committed S → independent same-SHA assurance → evidence-only H / PR+CI → closeout. Это рабочий порядок одного bounded контракта, не отдельные Owner gates.

Stage W выбирает verified descendant base, сохраняющий approved P/provenance, и переводит draft R5 в complete stage mission. Если base изменился за пределами подтверждённой planning lineage, STOP и §2. Другая branch с непроверенной memory не источник authority.

## 6. Engineering autonomy и реальные permissions

При Owner approval exact READY P предлагается следующая делегация, ограниченная существующими OS/sandbox/platform controls; до approval это только proposal.

| Действие | Самостоятельность после approval P | Граница / STOP |
| --- | --- | --- |
| Stage planning, commit W, Stage Critic/REWORK, missions/handoffs | Orchestrator без Owner-per-WB, внутри §3/§5 | Missing parent P/conformance/Stage READY; material scope или permission gap. |
| Coder edits/tests/source/evidence commits | Только §3 sources и task artifacts; renewed affected assurance на corrected S | Не менять frozen P/W; не force/amend/bypass hooks, не main. |
| Technical choice / Architect consultation | Внутри approved requirements/constraints/risk posture, rationale в evidence | Material deviation → Owner; изменение W внутри P → new W/Stage Critic. |
| Reviewer/Verifier REWORK | Автономное исправление и повторные independent checks на exact S | Недоступное обязательное assurance → BLOCKED/Owner, не self-approval. |
| Task worktree/branch creation | Verified parent/destination, normal sandbox approval, descendant lineage; preserve existing worktrees | Shared refs не isolation; no concurrent overlapping writer; cleanup отдельно. |
| Local disposable fixtures | Explicit temp destinations, bounded local Git operations/bare remote; воспроизводимый driver в report | Только fixtures; не реальные main/task для negative mutations, не external publication. |
| Delivery | Non-force push `origin` в `docs/wb-lite-002-implementation`, PR в main, applicable GitHub CI/read checks | Нужны actual credentials/platform permissions. Не main push, не PR #6/settings, не merge/deploy. |
| Evidence-only H после S | Только не меняющие requirements/behavior/gates records вне frozen P/W; full S..H inspection | При сомнении или normative delta → новый S/affected assurance; CI всегда exact H. |
| Final acceptance/merge, deployment, production, sensitive external/platform security | Не делегируются этим plan | Отдельный Owner GO/реальные permissions; недоступность не обходить. |

Обычный covered commit/push/test/review/handoff не требует нового human GO. Sandbox approval остаётся реальным техническим механизмом, plan не отменяет его. Additional branch, новый source path или stage сверх §5 — Owner scope disposition. PR может оставаться Draft до готового assurance; сама PR не Owner approval и не stage completion.

## 7. Acceptance и verification strategy

Project acceptance требует всей [specification §5](docs/changes/lite-v01-corrective-project/spec.md) и R5 AC-1…AC-15/V-01…V-26. Stage W обязан сохранить coverage; не заменять реальные independent/runtime tests логическим чтением шаблонов.

| Coverage | Обязательные scenarios / evidence |
| --- | --- |
| V-01…V-08 | Full approved-path diff/links/whitespace + separate untracked/cached coverage; actual Lite Checks shell bodies; exact repo/INITIALIZED/source exception; пять реальных baseline marker lines с Markdown punctuation/value boundaries и изменением dates; negative identity/env/duplicates/memory и positive provenance. |
| V-09…V-12 | Native bounded routine/significant missions; checkpoint recovery short/interrupted/parallel/no-commit-authority; independent same-SHA source assurance; actual PR HEAD/CI при authorized publication, PENDING не PASS. |
| V-13…V-18 | Disposable A/B explicit-target Git/non-Git writes в обе стороны; permitted external read/copy; wrong root/branch/HEAD/dirty/untracked/destination/relative cwd negatives STOP до write; untracked content; resume/compaction vs synthetic replay; scratch не authority; short routine без новых mandatory gates. |
| V-19…V-22 | Все 21 normative entrypoints согласованы; unapproved committed P → real Critic REWORK → new P/re-Critic до Owner; exact P approval отдельно без blob mutation; autonomous W/own Critic; READY без approval/permissions, wrong P, mutated W и Owner material change блокируют affected execution. |
| V-23…V-26 | Autonomous Reviewer/Verifier REWORK и local bare pushes; no autonomous merge; two-stage output/dependency/CI progression fixture; Architect local choice vs material escalation; ancestry/alternate-base blob/provenance/same-SHA negatives. |

V-20/V-21 synthetic Owner approval и CI records явно synthetic: они не подтверждают реальное Owner approval или GitHub CI. Native role execution/независимость и фактически выполненные commands фиксируются отдельно; synthetic roleplay не независимый Critic. Recovery replay не доказывает наблюдённый native compaction.

Fixtures извлекают **реальный** named CI step из exact S, не тестовую копию. Report содержит восстановимые mutations/driver/extraction/commands/cwd/env, expected/actual numeric exit codes, stdout/stderr, SHA/blob mappings, hashes workflow/body/driver/files/index и before/after inventories. Source marker fixtures берутся через git show указанной baseline с сохранением bold/backticks/punctuation/boundaries. No-index exit 1 не означает автоматически FAIL/PASS; сопоставлять diagnostics/content. Нет нового постоянного framework/script/test file.

Required fixture/independent gate unavailable означает NOT_RUN/BLOCKED и Owner escalation, не completion/N/A. Routine optional gate — обоснованный NOT_APPLICABLE; focused test outcome остаётся фактическим. Stage completion требует source AC и outputs, covered delivery и successful applicable CI на H; task COMPLETE само по себе не merge/acceptance.

## 8. MVP/release milestones и durable handoff

- Corrective-release ready: stage 1 completion §5/§7, independent gates и текущий exact H CI, durable evidence, unchanged P/W; нет unresolved blocking findings. Это предложение на Owner acceptance, не объявление release сейчас.
- Delivery: task branch/PR; main сохраняется до Owner GO. Между внутренними W revisions/assurance cycles merge не требуется.
- Deployment/production: вне release; не генерировать fictitious deployment/production GO. Post-release reconciliation AUD-007 — отдельная разрешённая задача.
- Progress, next action, observed predecessor SHA, PR/CI, decisions и verdicts — committed task records, не правка plan/WB. Root plan не содержит self SHA или будущий W SHA; mapping записывается после commit отдельно.
- При context resume/compaction перед записью заново установить objective/instructions/target/branch/HEAD/scope/dirty/checkpoint/next action. Scratch и agent MEMORY/context summaries — lookup hints, не authority/durable checkpoint.

## 9. Риски, non-goals, STOP и rollback

Риски: 21-file drift, частичный guard/false positives, unavailable native independent/recovery capability, shared refs/concurrent writers, READY-as-permission и evidence-only misclassification. Mitigations: V-01…26, one writer, exact reviewed P/W/S/H/blobs, target/cadence checks, truthful NOT_RUN, Owner escalation affected decisions.

**Вне scope:** AUD-007/shared memory; PROJECT_BRIEF источника; ADR/history/frozen evidence; CFG-001/CFG-002/GitHub settings/PR #6; new permanent scripts/tests/framework/adapters/runtime/Skills/Controller; создание/изменение/установка/активация hooks или existing .githooks edits; deployment/production/security exceptions; main writes/merge и unrelated worktree cleanup. Progressive hooks: documented rule → отдельный prototype → positive/negative real-runtime tests → false-positive/overhead/permissions/bypass/rollback analysis → Owner activation approval → controlled rollout; не скрытая зависимость release. Git hooks не предотвращают произвольную запись до Git; native event support не универсален.

**STOP до affected write/progression:** unexpected repo/base/branch/HEAD/dirty/untracked/destination; unrecovered context; absent specific permission; absent approved P/Stage READY W/conformance; unavailable mandatory gate или failed/missing required CI/output; material spec/scope/risk change; новый source path/component; secret exposure/instruction conflict; требование изменить historical/frozen artifacts/settings/PR #6. Внутренний bounded REWORK обрабатывается автономно; unresolved blocker, required exception и выход за authority эскалируются Owner. Никакого blanket запрета external read/copy.

Rollback до publication: сохранить факты и исправить только собственные scoped changes на task branch с affected review; без reset/clean/stash/force/amend или удаления unrelated work. После eventual merge — отдельно разрешённый согласованный revert PR с review/checks, не переписывание истории. Guard rollback согласуется с обещаниями документации. Cleanup fixtures/worktrees — отдельное разрешение на точно учтённые собственные paths.
