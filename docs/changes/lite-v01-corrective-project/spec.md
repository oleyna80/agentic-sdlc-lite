# Specification — corrective SDLC Lite v0.1

## 1. Цель и пользователи

Согласовать документный Agentic SDLC Lite для Owner и native-harness агентов: Owner определяет продукт и границы проекта, Orchestrator автономно исполняет bounded stages с независимым assurance. Устранить подтверждённые AUD/CRIT/PROC противоречия до пилотов без собственного Controller.

Owner Architecture Clarification R5 — подтверждённое требование к дизайну. Эта specification конкретизирует требование; её принятие подтверждается отдельным Owner record, а не заголовком, наличием файла или ответом агента. Фактический approval status находится в [owner-decisions.md](owner-decisions.md).

## 2. Исходные факты

- Repository: `oleyna80/agentic-sdlc-lite`; confirmed base `90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab`.
- Input: [WB-LITE-002 R5](../WB-LITE-002/work-block.md), SHA-256 `d7dbd05c8ec71eafe41156d32a0b3824030380f3efc3256791de52b13bb90430`.
- Architecture Audit R1 и исходный Independent Architecture Critic R1 сохранены в Git revision `d28e4bb1fc52e2ee3eafee6afa015cd678c45c0a`; ссылки и finding IDs приведены в R5. Они не являются проверкой нового project plan.
- Действующие AGENTS/development ещё содержат Owner-before-WB-Critic и optional roadmap. Предлагаемая модель пока не внедрена. [ADR-0001](../../decisions/0001-lite-foundation.md) и исторические evidence не переписываются.

## 3. Требуемое поведение

### Project definition

Owner задаёт idea и ожидаемый результат. Агенты помогают разработать specification; Owner разрешает существенные вопросы и принимает её точную редакцию. Orchestrator/Architect готовит complete root project plan. Independent Project Critic проверяет exact committed candidate P до Owner approval плана. REWORK возвращается агентам; READY означает готовность к Owner review, не разрешение implementation. Owner принимает exact reviewed P отдельной записью. Тот же plan blob становится frozen без редактирования.

### Autonomous stage execution

Approved project plan задаёт scope, constraints, milestones, outputs, acceptance и delegated actions. Orchestrator создаёт stage W с entry conditions, dependencies, bounded write-set, expected outputs и проверками; подтверждает conformance approved P. Independent Stage Critic проверяет exact committed W до Coder. READY W вместе с approved P/conformance и реальными permissions допускает bounded execution без Owner approval каждого WB.

Coder выполняет mission и focused tests. Independent Reviewer READY и Verifier PASS относятся к одному exact source candidate S. REWORK и исправления внутри approved bounds ведутся автономно с новым S и affected assurance. Разрешённые commit/push, applicable CI exact delivery HEAD H и durable closeout предшествуют переходу к следующему WB. Если требуется merge как stage criterion, без Owner GO/фактического merge переход блокируется; сам по себе следующий WB merge не требует. Operational progress и verdicts находятся вне frozen P/W.

### Engineering autonomy и escalation

Orchestrator при необходимости привлекает Architect, выбирает и документирует локальный вариант внутри approved requirements/constraints. Существенное изменение specification, scope, architecture constraints или risk posture требует Owner disposition и affected project planning/Critic/approval. Также эскалируются неразрешимый requirement blocker, недоступный обязательный assurance, risk exception и недостаточные permissions. Финальная приёмка и merge требуют Owner GO. Deployment, production, sensitive external actions и platform security changes требуют отдельных разрешений.

### Corrective requirements

| Группа | Обязательный результат |
| --- | --- |
| AUD-001 / CRIT-001 | Routine Coder mission без обязательного WB; significant требует approved P + Stage Critic READY W/conformance. Нельзя обходить classification ярлыком routine. |
| AUD-002 / CRIT-002 / NEW-003 | Единая canonical checkpoint matrix: достаточный PR/issue только короткой непрерывной routine без передачи/параллельности; interrupted/long/blocked/handoff — recoverable task checkpoint; significant/parallel — собственный committed handoff. Shared memory не singleton task state. |
| AUD-003 / CRIT-003 / NEW-001 | Ограниченный inline first-use guard: exact repository identity, derived INITIALIZED, пять source-memory marker groups в двух файлах, literal source exception и допустимый provenance. Это формальная частичная проверка, не полная initialization acceptance. |
| AUD-004 / AUD-006 / NEW-002 | Уточнить существующую precedence без нового authority tier; объяснимое NOT_APPLICABLE только для необязательных routine gates, без фиктивного PASS/READY. |
| AUD-005 | Сохранить текущие phase/final status meanings и historical evidence; новый state machine не вводить. |
| PROC-001 | Target verification Git/non-Git writes, explicit git -C, destination scope, one writer/cadence/bootstrap. Внешнее разрешённое read-only inspection и copy в approved destination остаются допустимыми. |
| PROC-002 | PASS только для реально проверенных tracked/untracked/staged contents; untracked проверяется до staging, cached diff после разрешённого staging; no-index exit 1 оценивается вместе с diagnostics. |
| PROC-003…005 | Recovery после resume/compaction до записи; objective/instructions/target/scope/dirty/checkpoint/next action устанавливаются заново. Scratch, agent MEMORY.md и compacted history не authority и не durable project state. |
| Progressive hooks | Documented rule → отдельный prototype/runtime tests → false positives/permissions/overhead/bypass/rollback → Owner rollout approval → controlled rollout. Новые hooks не prerequisite этого release. |

## 4. Интерфейсы, ограничения и scope

Единственный root AGENTS.md; canonical development/memory/workspace/initialization/security procedures. Native harness orchestration и портируемые briefs, без установки Skills/runtime. Один writer на overlapping paths. Реальные OS/sandbox/platform controls сохраняются: Git -C не isolation; prose и hooks не гарантируют предотвращение произвольных writes. Native hook events зависят от harness.

Точный proposed source write-set и permissions находятся в [root plan](../../../plan.md): 21 существующий source path, один inline CI step, task-local planning/evidence отдельно. Не добавлять постоянный test framework, scripts, adapters, hook installer/controller/dispatcher. R5 AC-1…AC-15 и V-01…V-26 составляют обязательную baseline coverage; нельзя ослаблять их при создании W.

## 5. Условия приёмки

1. Canonical procedures, root contract, roles, templates и navigation согласованно различают project definition и autonomous stage execution; Critic до Owner на P, отдельный Critic на W, без Owner-per-WB gate.
2. Все corrective requirements §3 отражены в разрешённых sources и проверены по R5 AC/V с реальными commands, mutations, exit codes, hashes и scope coverage. Synthetic и native execution различаются.
3. Frozen P/W provenance сохраняется; same-SHA Reviewer/Verifier на S; полный S..H evidence-only либо renewed affected assurance, applicable CI на exact H.
4. Untracked content и negative target/recovery/routine/guard scenarios действительно покрыты, а неподтверждённое отмечено NOT_RUN/BLOCKED. Required unavailable gate блокирует completion.
5. Main/history/ADRs/shared memory/PR #6/settings/hooks сохранены; итоговая приёмка и merge остаются отдельным Owner решением.

## 6. Non-goals и риски

AUD-007 integrated-memory reconciliation, CFG-001/CFG-002, PR #6, изменение PROJECT_BRIEF источника, исторических решений, новых hooks, production/deployment, OS enforcement и полное semantic parsing initialization — вне release. Не менять sources на project-planning этапе.

Риски: cross-file drift; false positives/обход bounded guard; недостаточная реальная независимость или runtime recovery coverage; concurrent writers/shared refs; ошибочное принятие READY за authority. Ограничения: negative fixtures, focused independent gates, actual permissions, explicit evidence и STOP при нарушении bounds.

## 7. Решения и границы принятия

Предложенные OD-1…OD-5 полностью сформулированы в root plan. Их final acceptance и делегирование implementation/publication принимает Owner на exact Critic-reviewed P после specification approval. Принятие этой specification само по себе не утверждает P, не разрешает Coder и не предоставляет merge/deploy/security permissions. Существенная правка этой specification требует новой reviewed project proposal до affected execution.
