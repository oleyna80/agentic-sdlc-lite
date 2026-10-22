# ISSUE-010 — Independent formal Project Critic evidence

These are genuine separate native-agent reports, not author self-review. Historical verdicts remain unchanged. Architecture Critic READY is not formal Project Critic READY; neither grants Owner approval of P or permission to implement.

## Preservation format

The readable copies below retain the complete substantive text. Only end-of-line spaces/tabs are removed for repository whitespace validation, and section separators are added outside the report. Each exact original UTF-8 response is also retained losslessly in a base64 block, including original Markdown hardbreak spaces and end-of-file state. Decode the matching block and verify its SHA-256 before treating it as the byte-identical original. These are retained native response texts, not raw execution archives or cryptographically signed identity evidence.

## Historical formal Project Critic R1 — BLOCKED

- Native identity: `/root/issue010_formal_project_critic_r1`.
- Original subject: `f3937c17f9f0e76500541c49dfaf8ee9b6b97998`; P blob `7a9ced8f59654dfcf86b0e7e4a813d779f439051`.
- Preserved response includes a separately identified ADR-path erratum and the original historical report. No new review or retrospective PASS is asserted.
- Exact preserved response: 29159 UTF-8 bytes, SHA-256 `1d39001a241fef265e23e6e9149afe16a8446f5eb14cddeba11f71b1c1cc0c03`.

### R1 readable response

Ниже сохранён полный оригинальный отчёт R1 с историческим вердиктом **BLOCKED**. Новое Owner acceptance exact specification относится к последующему состоянию; в исторический отчёт оно не внесено. Новое review не выполнялось, файлы не изменялись.

## Отдельный erratum: имя файла ADR

В §7 оригинального отчёта ошибочно указан path17:

`docs/decisions/ADR-0002-project-local-documentation-model.md`

Правильный путь, повторно подтверждённый read-only GET exact review HEAD `f3937c17f9f0e76500541c49dfaf8ee9b6b97998`:

**`docs/decisions/0002-project-documentation-model.md`**

Точные строки:

**`docs/projects/issue-010-documentation-model/plan.md:75`**, blob `7a9ced8f59654dfcf86b0e7e4a813d779f439051`:

```text
17. `docs/decisions/0002-project-documentation-model.md` (new)
```

**`docs/projects/issue-010-documentation-model/spec.md:61`**, blob `a364ec0fbd21767a36820653bd851d552c8ab7a7`:

```text
- `docs/decisions/0002-project-documentation-model.md` (new)
```

Это ошибка переписывания пути в отчёте, не finding к P. Число paths, оценка scope и исторический вердикт R1 не изменяются.

Отдельное ограничение доступности: выводы оригинала о handoff основаны на ранее успешно полученном содержимом exact review HEAD, blob `61054b745c457e6a0e8e1a2746673a3e57488a3c`. Позднее Control Tower сообщил о HTTP 404 при повторном GET; причина не установлена. Текущая повторная доступность handoff этим отчётом не гарантируется.

---

# Independent Formal Project Critic R1 — ISSUE-010

**Дата:** 22 октября 2026 г.
**Репозиторий:** `oleyna80/agentic-sdlc-lite`
**Объект:** committed project plan P для изменения документационной модели SDLC Lite.
**Вердикт: BLOCKED.**

Для текущего кандидата не подтверждён обязательный предшествующий gate — Owner acceptance именно представленной exact specification. Доступна подробная committed запись решения, однако исходная пара сообщений «представление exact spec → ответ Owner» недоступна для независимого сопоставления. Это ограничение проверки, а не утверждение, что Owner не давал согласия.

Дополнительно необходим **REWORK**: actual CI текущего кандидата завершился с ошибкой из-за trailing whitespace; branch-local handoff не отражает текущую стадию, committed P и известное падение CI.

Архитектурная модель и предусмотренный P объём изменений в целом согласованы. Новых обязательных архитектурных изменений сверх перечисленных ниже не выявлено. Этот отчёт не выдаёт Project Critic READY, Owner approval P, Stage Critic READY или разрешение на нормативные source edits.

## 1. Точный предмет проверки

| Объект | Проверенное значение |
|---|---|
| PR | [#14](https://github.com/oleyna80/agentic-sdlc-lite/pull/14), OPEN, DRAFT |
| Ветка | `docs/issue-010-documentation-model-r2` |
| Baseline | `ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb` |
| Baseline tree | `d1812868ac576c36b732a51804a42a412b983b52` |
| Review HEAD | `f3937c17f9f0e76500541c49dfaf8ee9b6b97998` |
| Review tree | `6a641b7a1267d03cff762cbec95cc917507ce51c` |
| P | `docs/projects/issue-010-documentation-model/plan.md` |
| P blob | `7a9ced8f59654dfcf86b0e7e4a813d779f439051` |
| Exact specification | `docs/projects/issue-010-documentation-model/spec.md` |
| Сохранённый commit specification | `e391d09cc908e886d4e019d54987fc26d34bbb55` |
| Specification blob | `a364ec0fbd21767a36820653bd851d552c8ab7a7` |
| Specification SHA-256 | `866a3cb1ba0958cb0e19fcc392cfb5cb960837b70042c772c0778a08dc1ffa14` |

P и specification прочитаны из exact committed объектов. Git blob identifiers независимо пересчитаны из полученного содержимого; SHA-256 specification также пересчитан.

Последняя проверка API подтвердила неизменность base/head. PR допускает техническое слияние, но имеет `mergeable_state=unstable`. Это не свидетельство выполнения lifecycle gates и не Merge GO.

## 2. Независимость и выполненная проверка

Я не являюсь автором proposal, specification или P. Architecture Critic R2 READY рассмотрен как отдельный входной архитектурный отчёт; он не использован вместо собственного formal Project Critic verdict.

Проверка была read-only:

- Получены exact committed документы через GitHub API.
- Проверены PR metadata, commit ancestry, recursive trees, полный состав diff и actual CI.
- Не выполнялись clone, fetch, изменения файлов, Git/config mutations или GitHub mutations.
- Не запускались implementation tests T01–T22 и не создавались их fixtures.

Локальный cwd относится к историческому WB-LITE-002, а не к PR #14:

`/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/wb-lite-002-implementation`

Его HEAD — `f90160cb0067a3ff675aa977d3b517fdf652eac5`; итоговый `git status --porcelain=v1 --untracked-files=all --ignored` пуст. Этот checkout не подменял review candidate.

### Прочитанные источники

Проверены:

- Exact P и specification.
- `docs/changes/ISSUE-010/owner-decisions.md`, `proposal-r2.md`, `architecture-critic-r2.md`, `handoff.md`.
- `AGENTS.md`, `PROJECT_BRIEF.md`, `PROJECT_MAP.md`, last-integrated memory.
- Канонические `development.md`, `memory.md`, `initialization.md`, `workspaces.md`, `boundaries.md`.
- ADR-0001, architecture overview, навигационные документы.
- Применимые templates для intent, specification, P, W, mission, handoff, critic, review, verification, decision и closeout; применимые role briefs.
- Исторические P/W WB-LITE-002 и ISSUE-009, включая правила сохранения legacy provenance и исключения W2 §9.

Необходимые committed source inputs доступны. Недоступен первичный контекст exact-spec assent; его ограничение раскрыто отдельно ниже.

## 3. Полный diff и provenance

Сравнение recursive trees baseline → review HEAD подтвердило:

- Ровно **шесть добавленных файлов**.
- Все **70 baseline blob paths** сохранены с прежними blob identifiers.
- Нет изменений или удалений baseline paths.
- Root `plan.md`, исторические W/reports, ADR-0001, workflow, роли, hooks, CI и shared memory не изменены.

Добавлены только:

1. `docs/projects/issue-010-documentation-model/spec.md`
2. `docs/projects/issue-010-documentation-model/plan.md`
3. `docs/changes/ISSUE-010/proposal-r2.md`
4. `docs/changes/ISSUE-010/architecture-critic-r2.md`
5. `docs/changes/ISSUE-010/owner-decisions.md`
6. `docs/changes/ISSUE-010/handoff.md`

Ветка содержит два commits поверх baseline; merge base совпадает с baseline. Все 36 baseline blob references в Appendix A proposal независимо сопоставлены с Git tree.

### Исторические объекты

| Исторический контракт | Exact commit | Проверенный blob |
|---|---|---|
| WB-LITE-002 P, `plan.md` | `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df` | `fcfda1f6dfa011a5688c5f04111d918d6bbce707` |
| WB-LITE-002 W2 | `63ed889d8991a5d2187bb82709f4cbb5773db1cc` | `19beb072f321a7c9730ea86630112ce8c1b90dbb` |
| ISSUE-009 P, `plan.md` | `90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74` | `399b3bb96c6482d35fed93411104d04d3d191482` |
| ISSUE-009 W1 | `80fe489458a8b3cfd290ba8f2ca000b786a9ffe5` | `5f79747f1562eea839ec1a97ba09efbbb0248275` |

Все четыре commits являются предками baseline. Прочитанные ссылки на исторические approvals не означают повторную независимую аутентификацию всех прошлых Owner decisions или повторное выполнение исторических проверок.

## 4. Owner decisions и статус полномочий

| Решение | Результат проверки |
|---|---|
| Разрешение bounded planning/proposal work | Предоставлено Owner в текущей mission; соответствующая исходная формулировка передана Control Tower из текущего контекста. |
| Однократное planning-path exception | Предоставлено Owner для candidate spec/P в `docs/projects/issue-010-documentation-model/`. Его полное durable сохранение пока отсутствует. |
| Owner acceptance exact specification | **NOT_VERIFIED:** committed запись содержит exact identifiers и транскрипцию ответа, но исходное представление specification и связанный ответ недоступны. |
| Formal Project Critic READY | Не выдан. |
| Owner approval exact P | Pending; это ожидаемый следующий gate после Project Critic READY. |
| W и Stage Critic READY | Не представлены как пройденные. |
| Нормативные source edits | Не разрешены текущим состоянием gates. |
| Owner Merge GO | Не предоставлен. |

Само отсутствие криптографической подписи, подписанного commit или личного GitHub comment Owner **не является отдельным обязательным gate**. Проблема состоит в проверяемости связи фактического решения с exact subject и в невыполненном требовании durable preservation, установленном самим candidate specification.

## 5. Findings

### F1 — HIGH — Не подтверждена исходная привязка Owner acceptance к exact specification

**Места:**

- `docs/projects/issue-010-documentation-model/spec.md:7`
- `docs/projects/issue-010-documentation-model/plan.md:15`
- `docs/projects/issue-010-documentation-model/plan.md:95`
- `docs/changes/ISSUE-010/owner-decisions.md:24`
- `docs/changes/ISSUE-010/owner-decisions.md:27`
- `docs/changes/ISSUE-010/owner-decisions.md:40`
- `docs/changes/ISSUE-010/handoff.md:7`

**Наблюдение.** Owner record добросовестно раскрывает, что это транскрипция assistant, и перечисляет exact specification identifiers. Однако процитированный affirmative ответ сам по себе не содержит spec identity; связь с непосредственно предшествующим представлением specification утверждается записью. Исходная пара сообщений в доступном контексте отсутствует.

Дополнительно specification требует до formal planning сохранить точный Owner request. Durable record содержит пересказ исходной mission; текущая подлинная формулировка planning-path exception доступна через Control Tower, но ещё не сохранена в полном требуемом виде.

**Последствие.** Независимый Critic может подтвердить наличие записи об assent, но не может подтвердить сам exact-spec prerequisite с требуемой привязкой. Нельзя превращать эту неопределённость в установленное согласие или в установленный отказ Owner.

**Исправление.**

Сохранить минимальный необходимый decision excerpt с атрибуцией источника, датой/идентификатором и связью:

`repo → exact spec commit/path/blob → представленное решение → ответ Owner`.

Не нужен полный raw transcript. Если исходный контекст восстановить нельзя, допустимо новое явное подтверждение Owner этой exact specification и scope в текущем контексте с честной датой нового решения. Оно не должно выдаваться за восстановленное старое assent.

До устранения — **BLOCKED** на formal prerequisite.

### F2 — MEDIUM — Actual CI exact candidate падает на добавленном whitespace

**Места:**

- `docs/changes/ISSUE-010/owner-decisions.md:3`
- `docs/changes/ISSUE-010/owner-decisions.md:4`
- `docs/changes/ISSUE-010/owner-decisions.md:5`
- `docs/changes/ISSUE-010/owner-decisions.md:24`
- `docs/projects/issue-010-documentation-model/plan.md:3`
- `docs/projects/issue-010-documentation-model/plan.md:4`
- `docs/projects/issue-010-documentation-model/plan.md:5`
- `docs/projects/issue-010-documentation-model/plan.md:6`

**Свидетельство.** [Run 39798165319](https://github.com/oleyna80/agentic-sdlc-lite/actions/runs/39798165319), event head `f3937c17f9f0e76500541c49dfaf8ee9b6b97998`, завершён `failure`. Job `119890939524`; whitespace step вышел с кодом `2`. В логах перечислены trailing spaces именно на указанных строках.

Workflow выполнялся на synthetic PR merge commit `429ea23aea77a5a7a89d46c5b7005822a46f4ce3`; event head при этом совпадает с review HEAD. Это actual PR CI failure. Причина не относится к прежней history-inspection проблеме.

**Исправление.** Удалить введённый trailing whitespace в planning artifacts и получить actual CI нового candidate. Поскольку изменятся байты P, зафиксировать новый P blob и провести independent formal review нового exact P до Owner approval. Не замораживать текущий P с последующей «косметической» нормализацией.

Статус — **REWORK**.

### F3 — MEDIUM — Нет актуального task checkpoint после перехода к committed P

**Места:**

- `docs/changes/ISSUE-010/handoff.md:3`
- `docs/changes/ISSUE-010/handoff.md:12`
- `docs/changes/ISSUE-010/handoff.md:19`
- `docs/changes/ISSUE-010/handoff.md:47`
- `docs/changes/ISSUE-010/handoff.md:58`
- `docs/changes/ISSUE-010/handoff.md:62`

**Наблюдение.** Handoff описывает прежнюю архитектурную фазу: четыре planning paths, unpublished branch, ожидание spec acceptance и ещё не начатый P. Теперь существуют шесть файлов, committed P, PR #14, owner record и failed CI. Исторический checkpoint понятен в своём контексте, но текущий task checkpoint отсутствует.

Это расходится с recovery/checkpoint требованиями `docs/workflow/memory.md:51`, `:53`, `:69`, `:75`.

**Исправление.** Сохранить исторический checkpoint и добавить датированный актуальный checkpoint: observed refs, exact P/spec, PR, фактический CI failure, ограничение provenance, pending formal/Owner gates и следующий разрешённый шаг. Статусную информацию хранить вне frozen P.

Статус — **REWORK**.

## 6. Соответствие P критериям AC01–AC12

Здесь оценивается полнота **плана**, а не исполнение будущего изменения.

| AC | Отражение в P | Оценка |
|---|---|---|
| AC01 — project-local модель и entrypoints | P:27–49, :57–75; T01/T07/T17 | Покрыт; implementation не выполнена. |
| AC02 — разные назначения artifacts, без лишних routine gates | P:27–45, :107–115; T18 | Покрыт. |
| AC03 — exact W→P→spec→intent/Owner binding, STOP | P:47, :103; T03–T05/T21 | Покрыт конструктивно; фактический prerequisite ограничен F1. |
| AC04 — параллельные проекты и merge/base context | P:49–51; T01/T02/T07 | Покрыт; требуется реальный disposable Git сценарий. |
| AC05 — missing/stale/mutated approval и отдельные revision routes | P:47–49, :125; T05/T06/T08–T10/T21 | Покрыт. |
| AC06 — legacy provenance WB002/ISSUE009 | P:51, :89, :110; T08/T11/T19 | Покрыт; исходные объекты и ancestry доступны. |
| AC07 — downstream без активного inherited lifecycle | P:53; T13/T14/T21 | Покрыт. |
| AC08 — fresh native recovery, честный compaction coverage | P:107–117; T15/T16 | Покрыт; native execution ещё не доказан. |
| AC09 — routine route, optional intent/ROADMAP | P:27–45, :53; T12/T14/T18 | Покрыт. |
| AC10 — документация как продукт, один lifecycle | P:25, :57–75, :107–115; T17/T20 | Покрыт; runtime/controller не добавляется. |
| AC11 — scope, проверенное содержимое, same S, H/CI | P:87–99, :117–121, :135; T19/T20/T22 | Покрыт; текущий planning CI — FAIL. |
| AC12 — ADR-0002, ROADMAP, ADR-0001 сохранён | P:53, :57–75, :89, :97; T12/T19/T20 | Покрыт. |

Содержательной недостающей AC в P не обнаружено. Это не снимает F1–F3.

## 7. Scope, ADR, legacy и downstream

Нормативный implementation scope P и specification совпадает: **17 paths**.

| № | Path |
|---:|---|
| 1 | `AGENTS.md` |
| 2 | `README.md` |
| 3 | `PROJECT_BRIEF.md` |
| 4 | `PROJECT_MAP.md` |
| 5 | `ROADMAP.md` — новый |
| 6 | `docs/workflow/development.md` |
| 7 | `docs/workflow/memory.md` |
| 8 | `docs/workflow/initialization.md` |
| 9 | `docs/architecture/overview.md` |
| 10 | `docs/changes/README.md` |
| 11 | `docs/templates/intent.md` |
| 12 | `docs/templates/spec.md` |
| 13 | `docs/templates/plan.md` |
| 14 | `docs/templates/work-block.md` |
| 15 | `docs/templates/session-handoff.md` |
| 16 | `docs/templates/subagent-mission.md` |
| 17 | `docs/decisions/ADR-0002-project-local-documentation-model.md` |

Planning/evidence artifacts перечислены отдельно; они не подменяют эти 17 implementation paths.

**ADR-0001.** Байты сохранены. Планируемый ADR-0002 должен дополнять существующую модель, сохраняя один root contract, один lifecycle и отсутствие Controller. Статус принятия ADR нельзя выводить из этого Critic review.

**ROADMAP.** Новый документ может фиксировать датированные факты и proposed future stages. Он не предоставляет полномочий, не заменяет live Git evidence и не делает отсутствующие native capabilities реализованными. Заявление об отсутствии branch protection я независимо не подтвердил: соответствующий API GET вернул HTTP 403. Это ограничение проверки, а не установленный новый blocker.

**Legacy.** P сохраняет исходные пути, blobs, ancestry и approved-contract provenance. Важное исключение WB-LITE-002 W2 §9 учтено: совпадение blob не доказывает допустимость нового base/context; альтернативное основание требует соответствующего Owner disposition. Копирование исторического P/W не переносит approvals.

**Downstream.** Наследуемые source-template contracts не становятся активными контрактами производного проекта. Собственные identity, initialization и Owner decisions обязательны по применимому route; ROADMAP остаётся optional. Scope не требует новой runtime admission системы.

## 8. T01–T22: выполнимость и честный статус

**Все T01–T22: NOT_RUN в рамках данного review.**

| Тест | Проверяемое действие и оценка выполнимости |
|---|---|
| T01 | Два проекта в разных ветках с отдельными exact bindings — выполнимо в disposable Git fixture. |
| T02 | Merge A при незавершённом B, changed base/shared conflicts — выполнимо реальными Git операциями в fixture. |
| T03 | Wrong repo/project/P commit/path/blob — отдельные отрицательные случаи с наблюдаемым STOP. |
| T04 | Missing W/checkpoint при наличии соседнего/root документа — STOP без fallback. |
| T05 | Поочерёдно отсутствующие spec acceptance, Project Critic, Owner P, Stage Critic/conformance — каждый gate проверяется отдельно. |
| T06 | Mutated P/spec и stale verdict — STOP и новый соответствующий цикл. |
| T07 | Duplicate/reused/invalid/retired project IDs — выполнимо. |
| T08 | Следующий проект не наследует исторические approvals — выполнимо. |
| T09 | Material specification revision требует нового acceptance и affected gates — выполнимо. |
| T10 | Изменение только W требует нового Stage Critic без придуманного Owner approval каждого conforming W — выполнимо. |
| T11 | Recovery исходных legacy contracts; copied path не становится approved — исходные объекты доступны. |
| T12 | Stale ROADMAP/proposed future не дают authority и не перезаписывают shared memory — выполнимо. |
| T13 | Derived repository деактивирует inherited contracts — выполнимо в fixture. |
| T14 | Initialized derived project без ROADMAP проходит собственный significant/routine route — выполнимо. |
| T15 | Fresh независимая native session восстанавливает chain без истории чата — обязателен реальный запуск; сейчас не доказан. |
| T16 | Stale checkpoint → STOP; actual compaction — только при реально наблюдаемом событии. Synthetic replay маркируется отдельно. |
| T17 | Проверка всех entrypoints и оставшихся root-plan references — выполнимо полным source audit. |
| T18 | Routine task без обязательного создания intent/P/W/ROADMAP — выполнимо. |
| T19 | Invariant hashes, полный base→S diff и legacy ancestry — выполнимо. |
| T20 | Markdown links и ROADMAP facts сопоставляются с exact S/live evidence — выполнимо. |
| T21 | Одинаковый P blob в другом repo или copied approvals не дают authority — выполнимо отрицательными fixtures. |
| T22 | Реальные независимые Reviewer/Verifier на одном S, затем S→H и actual CI H — отдельный обязательный этап; не заменяется simulation. |

### Обязательная конкретизация R2-L01

P:103 требует дополнить отрицательные сценарии:

- Неверные specification commit/path/blob.
- Согласие на другую реальную revision.
- Отсутствующая или относящаяся к другой инициативе запись intent/Owner decision.
- В каждом случае — STOP до записи и проверяемый before/after inventory.

Это достаточное плановое исправление R2-L01. W должен превратить его в конкретные inputs, команды/действия, ожидаемые результаты и inventory evidence.

Synthetic fixtures способны проверить обработку неправильных данных, но не доказывают подлинность Owner assent. Native T15 нельзя засчитать по текстовому сценарию; этот Critic subagent также не является T15, поскольку работает с переданным контекстом review. Не наблюдавшийся compaction в T16 должен остаться `NOT_VERIFIED`, а не PASS.

В целом тестовый набор выполним без расширения нормативного scope и без постоянного нового harness. Доступность native sessions и независимых исполнителей должна проверяться перед соответствующим gate; отсутствие обязательной capability требует честного BLOCKED.

## 9. Следующее решение и допустимый порядок

1. Устранить неопределённость F1: восстановить необходимый исходный decision context либо получить новое явное exact-spec confirmation Owner; сохранить подлинную planning-path exception в durable evidence.
2. Исправить F2 и обновить checkpoint по F3 в разрешённых planning/evidence paths.
3. Зафиксировать новый exact candidate, P blob и actual CI result.
4. Провести independent formal Project Critic review нового exact P.
5. Только после **READY** получить отдельное **Owner approval exact P** и заморозить его байты.
6. Затем committed W, conformance и independent Stage Critic READY; только после этого — нормативные source edits.
7. Завершение потребует independent Reviewer/Verifier на одном S, checked S→H, actual CI H и отдельного Owner Merge GO.

**Итог:** P достаточно полно описывает согласованную архитектуру, 17-path scope, legacy preservation и требуемые проверки. Текущий exact candidate не готов к Project Critic READY: prerequisite evidence остаётся непроверенным, CI фактически падает, актуальный task checkpoint отсутствует. Owner approval P по-прежнему pending и не может быть заменён этим отчётом.

<oai-mem-citation>
<citation_entries>
MEMORY.md:49-50|note=[exact subject and checkout specific assurance guidance]
</citation_entries>
<rollout_ids>
</rollout_ids>
</oai-mem-citation>

### R1 exact original response — base64

```base64
0J3QuNC20LUg0YHQvtGF0YDQsNC90ZHQvSDQv9C+0LvQvdGL0Lkg0L7RgNC40LPQuNC90LDQu9GM
0L3Ri9C5INC+0YLRh9GR0YIgUjEg0YEg0LjRgdGC0L7RgNC40YfQtdGB0LrQuNC8INCy0LXRgNC0
0LjQutGC0L7QvCAqKkJMT0NLRUQqKi4g0J3QvtCy0L7QtSBPd25lciBhY2NlcHRhbmNlIGV4YWN0
IHNwZWNpZmljYXRpb24g0L7RgtC90L7RgdC40YLRgdGPINC6INC/0L7RgdC70LXQtNGD0Y7RidC1
0LzRgyDRgdC+0YHRgtC+0Y/QvdC40Y47INCyINC40YHRgtC+0YDQuNGH0LXRgdC60LjQuSDQvtGC
0YfRkdGCINC+0L3QviDQvdC1INCy0L3QtdGB0LXQvdC+LiDQndC+0LLQvtC1IHJldmlldyDQvdC1
INCy0YvQv9C+0LvQvdGP0LvQvtGB0YwsINGE0LDQudC70Ysg0L3QtSDQuNC30LzQtdC90Y/Qu9C4
0YHRjC4KCiMjINCe0YLQtNC10LvRjNC90YvQuSBlcnJhdHVtOiDQuNC80Y8g0YTQsNC50LvQsCBB
RFIKCtCSIMKnNyDQvtGA0LjQs9C40L3QsNC70YzQvdC+0LPQviDQvtGC0YfRkdGC0LAg0L7RiNC4
0LHQvtGH0L3QviDRg9C60LDQt9Cw0L0gcGF0aDE3OgoKYGRvY3MvZGVjaXNpb25zL0FEUi0wMDAy
LXByb2plY3QtbG9jYWwtZG9jdW1lbnRhdGlvbi1tb2RlbC5tZGAKCtCf0YDQsNCy0LjQu9GM0L3R
i9C5INC/0YPRgtGMLCDQv9C+0LLRgtC+0YDQvdC+INC/0L7QtNGC0LLQtdGA0LbQtNGR0L3QvdGL
0LkgcmVhZC1vbmx5IEdFVCBleGFjdCByZXZpZXcgSEVBRCBgZjM5MzdjMTdmOWYwZTc2NTAwNTQx
YzQ5ZGZhZjhlZTliNmI5Nzk5OGA6CgoqKmBkb2NzL2RlY2lzaW9ucy8wMDAyLXByb2plY3QtZG9j
dW1lbnRhdGlvbi1tb2RlbC5tZGAqKgoK0KLQvtGH0L3Ri9C1INGB0YLRgNC+0LrQuDoKCioqYGRv
Y3MvcHJvamVjdHMvaXNzdWUtMDEwLWRvY3VtZW50YXRpb24tbW9kZWwvcGxhbi5tZDo3NWAqKiwg
YmxvYiBgN2E5Y2VkOGY1OTY1NGRmY2Y4NmIwZTdlNGE4MTNkNzc5ZjQzOTA1MWA6CgpgYGB0ZXh0
CjE3LiBgZG9jcy9kZWNpc2lvbnMvMDAwMi1wcm9qZWN0LWRvY3VtZW50YXRpb24tbW9kZWwubWRg
IChuZXcpCmBgYAoKKipgZG9jcy9wcm9qZWN0cy9pc3N1ZS0wMTAtZG9jdW1lbnRhdGlvbi1tb2Rl
bC9zcGVjLm1kOjYxYCoqLCBibG9iIGBhMzY0ZWMwZmJkMjE3NjdhMzY4MjA2NTNiZDg1MWQ1NTJj
OGFiN2E3YDoKCmBgYHRleHQKLSBgZG9jcy9kZWNpc2lvbnMvMDAwMi1wcm9qZWN0LWRvY3VtZW50
YXRpb24tbW9kZWwubWRgIChuZXcpCmBgYAoK0K3RgtC+INC+0YjQuNCx0LrQsCDQv9C10YDQtdC/
0LjRgdGL0LLQsNC90LjRjyDQv9GD0YLQuCDQsiDQvtGC0YfRkdGC0LUsINC90LUgZmluZGluZyDQ
uiBQLiDQp9C40YHQu9C+IHBhdGhzLCDQvtGG0LXQvdC60LAgc2NvcGUg0Lgg0LjRgdGC0L7RgNC4
0YfQtdGB0LrQuNC5INCy0LXRgNC00LjQutGCIFIxINC90LUg0LjQt9C80LXQvdGP0Y7RgtGB0Y8u
CgrQntGC0LTQtdC70YzQvdC+0LUg0L7Qs9GA0LDQvdC40YfQtdC90LjQtSDQtNC+0YHRgtGD0L/Q
vdC+0YHRgtC4OiDQstGL0LLQvtC00Ysg0L7RgNC40LPQuNC90LDQu9CwINC+IGhhbmRvZmYg0L7R
gdC90L7QstCw0L3RiyDQvdCwINGA0LDQvdC10LUg0YPRgdC/0LXRiNC90L4g0L/QvtC70YPRh9C1
0L3QvdC+0Lwg0YHQvtC00LXRgNC20LjQvNC+0LwgZXhhY3QgcmV2aWV3IEhFQUQsIGJsb2IgYDYx
MDU0Yjc0NWM0NTdlNmEwZThlMWEyNzQ2NjczYTNlNTc0ODhhM2NgLiDQn9C+0LfQtNC90LXQtSBD
b250cm9sIFRvd2VyINGB0L7QvtCx0YnQuNC7INC+IEhUVFAgNDA0INC/0YDQuCDQv9C+0LLRgtC+
0YDQvdC+0LwgR0VUOyDQv9GA0LjRh9C40L3QsCDQvdC1INGD0YHRgtCw0L3QvtCy0LvQtdC90LAu
INCi0LXQutGD0YnQsNGPINC/0L7QstGC0L7RgNC90LDRjyDQtNC+0YHRgtGD0L/QvdC+0YHRgtGM
IGhhbmRvZmYg0Y3RgtC40Lwg0L7RgtGH0ZHRgtC+0Lwg0L3QtSDQs9Cw0YDQsNC90YLQuNGA0YPQ
tdGC0YHRjy4KCi0tLQoKIyBJbmRlcGVuZGVudCBGb3JtYWwgUHJvamVjdCBDcml0aWMgUjEg4oCU
IElTU1VFLTAxMAoKKirQlNCw0YLQsDoqKiAyMiDQvtC60YLRj9Cx0YDRjyAyMDI2INCzLiAgCioq
0KDQtdC/0L7Qt9C40YLQvtGA0LjQuToqKiBgb2xleW5hODAvYWdlbnRpYy1zZGxjLWxpdGVgICAK
KirQntCx0YrQtdC60YI6KiogY29tbWl0dGVkIHByb2plY3QgcGxhbiBQINC00LvRjyDQuNC30LzQ
tdC90LXQvdC40Y8g0LTQvtC60YPQvNC10L3RgtCw0YbQuNC+0L3QvdC+0Lkg0LzQvtC00LXQu9C4
IFNETEMgTGl0ZS4gIAoqKtCS0LXRgNC00LjQutGCOiBCTE9DS0VELioqCgrQlNC70Y8g0YLQtdC6
0YPRidC10LPQviDQutCw0L3QtNC40LTQsNGC0LAg0L3QtSDQv9C+0LTRgtCy0LXRgNC20LTRkdC9
INC+0LHRj9C30LDRgtC10LvRjNC90YvQuSDQv9GA0LXQtNGI0LXRgdGC0LLRg9GO0YnQuNC5IGdh
dGUg4oCUIE93bmVyIGFjY2VwdGFuY2Ug0LjQvNC10L3QvdC+INC/0YDQtdC00YHRgtCw0LLQu9C1
0L3QvdC+0LkgZXhhY3Qgc3BlY2lmaWNhdGlvbi4g0JTQvtGB0YLRg9C/0L3QsCDQv9C+0LTRgNC+
0LHQvdCw0Y8gY29tbWl0dGVkINC30LDQv9C40YHRjCDRgNC10YjQtdC90LjRjywg0L7QtNC90LDQ
utC+INC40YHRhdC+0LTQvdCw0Y8g0L/QsNGA0LAg0YHQvtC+0LHRidC10L3QuNC5IMKr0L/RgNC1
0LTRgdGC0LDQstC70LXQvdC40LUgZXhhY3Qgc3BlYyDihpIg0L7RgtCy0LXRgiBPd25lcsK7INC9
0LXQtNC+0YHRgtGD0L/QvdCwINC00LvRjyDQvdC10LfQsNCy0LjRgdC40LzQvtCz0L4g0YHQvtC/
0L7RgdGC0LDQstC70LXQvdC40Y8uINCt0YLQviDQvtCz0YDQsNC90LjRh9C10L3QuNC1INC/0YDQ
vtCy0LXRgNC60LgsINCwINC90LUg0YPRgtCy0LXRgNC20LTQtdC90LjQtSwg0YfRgtC+IE93bmVy
INC90LUg0LTQsNCy0LDQuyDRgdC+0LPQu9Cw0YHQuNGPLgoK0JTQvtC/0L7Qu9C90LjRgtC10LvR
jNC90L4g0L3QtdC+0LHRhdC+0LTQuNC8ICoqUkVXT1JLKio6IGFjdHVhbCBDSSDRgtC10LrRg9GJ
0LXQs9C+INC60LDQvdC00LjQtNCw0YLQsCDQt9Cw0LLQtdGA0YjQuNC70YHRjyDRgSDQvtGI0LjQ
sdC60L7QuSDQuNC3LdC30LAgdHJhaWxpbmcgd2hpdGVzcGFjZTsgYnJhbmNoLWxvY2FsIGhhbmRv
ZmYg0L3QtSDQvtGC0YDQsNC20LDQtdGCINGC0LXQutGD0YnRg9GOINGB0YLQsNC00LjRjiwgY29t
bWl0dGVkIFAg0Lgg0LjQt9Cy0LXRgdGC0L3QvtC1INC/0LDQtNC10L3QuNC1IENJLgoK0JDRgNGF
0LjRgtC10LrRgtGD0YDQvdCw0Y8g0LzQvtC00LXQu9GMINC4INC/0YDQtdC00YPRgdC80L7RgtGA
0LXQvdC90YvQuSBQINC+0LHRitGR0Lwg0LjQt9C80LXQvdC10L3QuNC5INCyINGG0LXQu9C+0Lwg
0YHQvtCz0LvQsNGB0L7QstCw0L3Riy4g0J3QvtCy0YvRhSDQvtCx0Y/Qt9Cw0YLQtdC70YzQvdGL
0YUg0LDRgNGF0LjRgtC10LrRgtGD0YDQvdGL0YUg0LjQt9C80LXQvdC10L3QuNC5INGB0LLQtdGA
0YUg0L/QtdGA0LXRh9C40YHQu9C10L3QvdGL0YUg0L3QuNC20LUg0L3QtSDQstGL0Y/QstC70LXQ
vdC+LiDQrdGC0L7RgiDQvtGC0YfRkdGCINC90LUg0LLRi9C00LDRkdGCIFByb2plY3QgQ3JpdGlj
IFJFQURZLCBPd25lciBhcHByb3ZhbCBQLCBTdGFnZSBDcml0aWMgUkVBRFkg0LjQu9C4INGA0LDQ
t9GA0LXRiNC10L3QuNC1INC90LAg0L3QvtGA0LzQsNGC0LjQstC90YvQtSBzb3VyY2UgZWRpdHMu
CgojIyAxLiDQotC+0YfQvdGL0Lkg0L/RgNC10LTQvNC10YIg0L/RgNC+0LLQtdGA0LrQuAoKfCDQ
ntCx0YrQtdC60YIgfCDQn9GA0L7QstC10YDQtdC90L3QvtC1INC30L3QsNGH0LXQvdC40LUgfAp8
LS0tfC0tLXwKfCBQUiB8IFsjMTRdKGh0dHBzOi8vZ2l0aHViLmNvbS9vbGV5bmE4MC9hZ2VudGlj
LXNkbGMtbGl0ZS9wdWxsLzE0KSwgT1BFTiwgRFJBRlQgfAp8INCS0LXRgtC60LAgfCBgZG9jcy9p
c3N1ZS0wMTAtZG9jdW1lbnRhdGlvbi1tb2RlbC1yMmAgfAp8IEJhc2VsaW5lIHwgYGVjNWQ4ZWZh
ZjRhMDQyMDJlMGZiMmVkNWYxZTZiNTM2ZDlhNzhkZGJgIHwKfCBCYXNlbGluZSB0cmVlIHwgYGQx
ODEyODY4YWM1NzZjMzZiNzMyYTUxODA0YTQyYTQxMmI5ODNiNTJgIHwKfCBSZXZpZXcgSEVBRCB8
IGBmMzkzN2MxN2Y5ZjBlNzY1MDA1NDFjNDlkZmFmOGVlOWI2Yjk3OTk4YCB8CnwgUmV2aWV3IHRy
ZWUgfCBgNmE2NDFiN2ExMjY3ZDAzY2ZmNzYyY2JlYzk1Y2M5MTc1MDdjZTUxY2AgfAp8IFAgfCBg
ZG9jcy9wcm9qZWN0cy9pc3N1ZS0wMTAtZG9jdW1lbnRhdGlvbi1tb2RlbC9wbGFuLm1kYCB8Cnwg
UCBibG9iIHwgYDdhOWNlZDhmNTk2NTRkZmNmODZiMGU3ZTRhODEzZDc3OWY0MzkwNTFgIHwKfCBF
eGFjdCBzcGVjaWZpY2F0aW9uIHwgYGRvY3MvcHJvamVjdHMvaXNzdWUtMDEwLWRvY3VtZW50YXRp
b24tbW9kZWwvc3BlYy5tZGAgfAp8INCh0L7RhdGA0LDQvdGR0L3QvdGL0LkgY29tbWl0IHNwZWNp
ZmljYXRpb24gfCBgZTM5MWQwOWNjOTA4ZTg4NmQ0ZTAxOWQ1NDk4N2ZjMjZkMzRiYmI1NWAgfAp8
IFNwZWNpZmljYXRpb24gYmxvYiB8IGBhMzY0ZWMwZmJkMjE3NjdhMzY4MjA2NTNiZDg1MWQ1NTJj
OGFiN2E3YCB8CnwgU3BlY2lmaWNhdGlvbiBTSEEtMjU2IHwgYDg2NmEzY2IxYmEwOTU4Y2IwZTE5
ZmNjMzkyY2ZiNWNiOTYwODM3YjcwMDQyYzc3MmMwNzc4YTA4ZGMxZmZhMTRgIHwKClAg0Lggc3Bl
Y2lmaWNhdGlvbiDQv9GA0L7Rh9C40YLQsNC90Ysg0LjQtyBleGFjdCBjb21taXR0ZWQg0L7QsdGK
0LXQutGC0L7Qsi4gR2l0IGJsb2IgaWRlbnRpZmllcnMg0L3QtdC30LDQstC40YHQuNC80L4g0L/Q
tdGA0LXRgdGH0LjRgtCw0L3RiyDQuNC3INC/0L7Qu9GD0YfQtdC90L3QvtCz0L4g0YHQvtC00LXR
gNC20LjQvNC+0LPQvjsgU0hBLTI1NiBzcGVjaWZpY2F0aW9uINGC0LDQutC20LUg0L/QtdGA0LXR
gdGH0LjRgtCw0L0uCgrQn9C+0YHQu9C10LTQvdGP0Y8g0L/RgNC+0LLQtdGA0LrQsCBBUEkg0L/Q
vtC00YLQstC10YDQtNC40LvQsCDQvdC10LjQt9C80LXQvdC90L7RgdGC0YwgYmFzZS9oZWFkLiBQ
UiDQtNC+0L/Rg9GB0LrQsNC10YIg0YLQtdGF0L3QuNGH0LXRgdC60L7QtSDRgdC70LjRj9C90LjQ
tSwg0L3QviDQuNC80LXQtdGCIGBtZXJnZWFibGVfc3RhdGU9dW5zdGFibGVgLiDQrdGC0L4g0L3Q
tSDRgdCy0LjQtNC10YLQtdC70YzRgdGC0LLQviDQstGL0L/QvtC70L3QtdC90LjRjyBsaWZlY3lj
bGUgZ2F0ZXMg0Lgg0L3QtSBNZXJnZSBHTy4KCiMjIDIuINCd0LXQt9Cw0LLQuNGB0LjQvNC+0YHR
gtGMINC4INCy0YvQv9C+0LvQvdC10L3QvdCw0Y8g0L/RgNC+0LLQtdGA0LrQsAoK0K8g0L3QtSDR
j9Cy0LvRj9GO0YHRjCDQsNCy0YLQvtGA0L7QvCBwcm9wb3NhbCwgc3BlY2lmaWNhdGlvbiDQuNC7
0LggUC4gQXJjaGl0ZWN0dXJlIENyaXRpYyBSMiBSRUFEWSDRgNCw0YHRgdC80L7RgtGA0LXQvSDQ
utCw0Log0L7RgtC00LXQu9GM0L3Ri9C5INCy0YXQvtC00L3QvtC5INCw0YDRhdC40YLQtdC60YLR
g9GA0L3Ri9C5INC+0YLRh9GR0YI7INC+0L0g0L3QtSDQuNGB0L/QvtC70YzQt9C+0LLQsNC9INCy
0LzQtdGB0YLQviDRgdC+0LHRgdGC0LLQtdC90L3QvtCz0L4gZm9ybWFsIFByb2plY3QgQ3JpdGlj
IHZlcmRpY3QuCgrQn9GA0L7QstC10YDQutCwINCx0YvQu9CwIHJlYWQtb25seToKCi0g0J/QvtC7
0YPRh9C10L3RiyBleGFjdCBjb21taXR0ZWQg0LTQvtC60YPQvNC10L3RgtGLINGH0LXRgNC10Lcg
R2l0SHViIEFQSS4KLSDQn9GA0L7QstC10YDQtdC90YsgUFIgbWV0YWRhdGEsIGNvbW1pdCBhbmNl
c3RyeSwgcmVjdXJzaXZlIHRyZWVzLCDQv9C+0LvQvdGL0Lkg0YHQvtGB0YLQsNCyIGRpZmYg0Lgg
YWN0dWFsIENJLgotINCd0LUg0LLRi9C/0L7Qu9C90Y/Qu9C40YHRjCBjbG9uZSwgZmV0Y2gsINC4
0LfQvNC10L3QtdC90LjRjyDRhNCw0LnQu9C+0LIsIEdpdC9jb25maWcgbXV0YXRpb25zINC40LvQ
uCBHaXRIdWIgbXV0YXRpb25zLgotINCd0LUg0LfQsNC/0YPRgdC60LDQu9C40YHRjCBpbXBsZW1l
bnRhdGlvbiB0ZXN0cyBUMDHigJNUMjIg0Lgg0L3QtSDRgdC+0LfQtNCw0LLQsNC70LjRgdGMINC4
0YUgZml4dHVyZXMuCgrQm9C+0LrQsNC70YzQvdGL0LkgY3dkINC+0YLQvdC+0YHQuNGC0YHRjyDQ
uiDQuNGB0YLQvtGA0LjRh9C10YHQutC+0LzRgyBXQi1MSVRFLTAwMiwg0LAg0L3QtSDQuiBQUiAj
MTQ6CgpgL2hvbWUvYXp1ci9Qcm9qZWN0cy9XU0wvYWdlbnRpYy1zZGxjLWxpdGUtd29ya3RyZWVz
L3diLWxpdGUtMDAyLWltcGxlbWVudGF0aW9uYAoK0JXQs9C+IEhFQUQg4oCUIGBmOTAxNjBjYjAw
NjdhM2ZmNjc1YWE5NzdkM2I1MTdmZGY2NTJlYWM1YDsg0LjRgtC+0LPQvtCy0YvQuSBgZ2l0IHN0
YXR1cyAtLXBvcmNlbGFpbj12MSAtLXVudHJhY2tlZC1maWxlcz1hbGwgLS1pZ25vcmVkYCDQv9GD
0YHRgi4g0K3RgtC+0YIgY2hlY2tvdXQg0L3QtSDQv9C+0LTQvNC10L3Rj9C7IHJldmlldyBjYW5k
aWRhdGUuCgojIyMg0J/RgNC+0YfQuNGC0LDQvdC90YvQtSDQuNGB0YLQvtGH0L3QuNC60LgKCtCf
0YDQvtCy0LXRgNC10L3RizoKCi0gRXhhY3QgUCDQuCBzcGVjaWZpY2F0aW9uLgotIGBkb2NzL2No
YW5nZXMvSVNTVUUtMDEwL293bmVyLWRlY2lzaW9ucy5tZGAsIGBwcm9wb3NhbC1yMi5tZGAsIGBh
cmNoaXRlY3R1cmUtY3JpdGljLXIyLm1kYCwgYGhhbmRvZmYubWRgLgotIGBBR0VOVFMubWRgLCBg
UFJPSkVDVF9CUklFRi5tZGAsIGBQUk9KRUNUX01BUC5tZGAsIGxhc3QtaW50ZWdyYXRlZCBtZW1v
cnkuCi0g0JrQsNC90L7QvdC40YfQtdGB0LrQuNC1IGBkZXZlbG9wbWVudC5tZGAsIGBtZW1vcnku
bWRgLCBgaW5pdGlhbGl6YXRpb24ubWRgLCBgd29ya3NwYWNlcy5tZGAsIGBib3VuZGFyaWVzLm1k
YC4KLSBBRFItMDAwMSwgYXJjaGl0ZWN0dXJlIG92ZXJ2aWV3LCDQvdCw0LLQuNCz0LDRhtC40L7Q
vdC90YvQtSDQtNC+0LrRg9C80LXQvdGC0YsuCi0g0J/RgNC40LzQtdC90LjQvNGL0LUgdGVtcGxh
dGVzINC00LvRjyBpbnRlbnQsIHNwZWNpZmljYXRpb24sIFAsIFcsIG1pc3Npb24sIGhhbmRvZmYs
IGNyaXRpYywgcmV2aWV3LCB2ZXJpZmljYXRpb24sIGRlY2lzaW9uINC4IGNsb3Nlb3V0OyDQv9GA
0LjQvNC10L3QuNC80YvQtSByb2xlIGJyaWVmcy4KLSDQmNGB0YLQvtGA0LjRh9C10YHQutC40LUg
UC9XIFdCLUxJVEUtMDAyINC4IElTU1VFLTAwOSwg0LLQutC70Y7Rh9Cw0Y8g0L/RgNCw0LLQuNC7
0LAg0YHQvtGF0YDQsNC90LXQvdC40Y8gbGVnYWN5IHByb3ZlbmFuY2Ug0Lgg0LjRgdC60LvRjtGH
0LXQvdC40Y8gVzIgwqc5LgoK0J3QtdC+0LHRhdC+0LTQuNC80YvQtSBjb21taXR0ZWQgc291cmNl
IGlucHV0cyDQtNC+0YHRgtGD0L/QvdGLLiDQndC10LTQvtGB0YLRg9C/0LXQvSDQv9C10YDQstC4
0YfQvdGL0Lkg0LrQvtC90YLQtdC60YHRgiBleGFjdC1zcGVjIGFzc2VudDsg0LXQs9C+INC+0LPR
gNCw0L3QuNGH0LXQvdC40LUg0YDQsNGB0LrRgNGL0YLQviDQvtGC0LTQtdC70YzQvdC+INC90LjQ
ttC1LgoKIyMgMy4g0J/QvtC70L3Ri9C5IGRpZmYg0LggcHJvdmVuYW5jZQoK0KHRgNCw0LLQvdC1
0L3QuNC1IHJlY3Vyc2l2ZSB0cmVlcyBiYXNlbGluZSDihpIgcmV2aWV3IEhFQUQg0L/QvtC00YLQ
stC10YDQtNC40LvQvjoKCi0g0KDQvtCy0L3QviAqKtGI0LXRgdGC0Ywg0LTQvtCx0LDQstC70LXQ
vdC90YvRhSDRhNCw0LnQu9C+0LIqKi4KLSDQktGB0LUgKio3MCBiYXNlbGluZSBibG9iIHBhdGhz
Kiog0YHQvtGF0YDQsNC90LXQvdGLINGBINC/0YDQtdC20L3QuNC80LggYmxvYiBpZGVudGlmaWVy
cy4KLSDQndC10YIg0LjQt9C80LXQvdC10L3QuNC5INC40LvQuCDRg9C00LDQu9C10L3QuNC5IGJh
c2VsaW5lIHBhdGhzLgotIFJvb3QgYHBsYW4ubWRgLCDQuNGB0YLQvtGA0LjRh9C10YHQutC40LUg
Vy9yZXBvcnRzLCBBRFItMDAwMSwgd29ya2Zsb3csINGA0L7Qu9C4LCBob29rcywgQ0kg0Lggc2hh
cmVkIG1lbW9yeSDQvdC1INC40LfQvNC10L3QtdC90YsuCgrQlNC+0LHQsNCy0LvQtdC90Ysg0YLQ
vtC70YzQutC+OgoKMS4gYGRvY3MvcHJvamVjdHMvaXNzdWUtMDEwLWRvY3VtZW50YXRpb24tbW9k
ZWwvc3BlYy5tZGAKMi4gYGRvY3MvcHJvamVjdHMvaXNzdWUtMDEwLWRvY3VtZW50YXRpb24tbW9k
ZWwvcGxhbi5tZGAKMy4gYGRvY3MvY2hhbmdlcy9JU1NVRS0wMTAvcHJvcG9zYWwtcjIubWRgCjQu
IGBkb2NzL2NoYW5nZXMvSVNTVUUtMDEwL2FyY2hpdGVjdHVyZS1jcml0aWMtcjIubWRgCjUuIGBk
b2NzL2NoYW5nZXMvSVNTVUUtMDEwL293bmVyLWRlY2lzaW9ucy5tZGAKNi4gYGRvY3MvY2hhbmdl
cy9JU1NVRS0wMTAvaGFuZG9mZi5tZGAKCtCS0LXRgtC60LAg0YHQvtC00LXRgNC20LjRgiDQtNCy
0LAgY29tbWl0cyDQv9C+0LLQtdGA0YUgYmFzZWxpbmU7IG1lcmdlIGJhc2Ug0YHQvtCy0L/QsNC0
0LDQtdGCINGBIGJhc2VsaW5lLiDQktGB0LUgMzYgYmFzZWxpbmUgYmxvYiByZWZlcmVuY2VzINCy
IEFwcGVuZGl4IEEgcHJvcG9zYWwg0L3QtdC30LDQstC40YHQuNC80L4g0YHQvtC/0L7RgdGC0LDQ
stC70LXQvdGLINGBIEdpdCB0cmVlLgoKIyMjINCY0YHRgtC+0YDQuNGH0LXRgdC60LjQtSDQvtCx
0YrQtdC60YLRiwoKfCDQmNGB0YLQvtGA0LjRh9C10YHQutC40Lkg0LrQvtC90YLRgNCw0LrRgiB8
IEV4YWN0IGNvbW1pdCB8INCf0YDQvtCy0LXRgNC10L3QvdGL0LkgYmxvYiB8CnwtLS18LS0tfC0t
LXwKfCBXQi1MSVRFLTAwMiBQLCBgcGxhbi5tZGAgfCBgYjRjYmMzN2U2YmMzMThhNWIyOGY0ZGI4
Y2JlYWFmZDM2NjNjNjBkZmAgfCBgZmNmZGExZjZkZmEwMTFhNTY4OGM1ZjA0MTExZDkxOGQ2YmJj
ZTcwN2AgfAp8IFdCLUxJVEUtMDAyIFcyIHwgYDYzZWQ4ODlkODk5MWE1ZDIxODdiYjgyNzA5ZjRj
YmI1NzczZGIxY2NgIHwgYDE5YmViMDcyZjMyMWE3Yzk3MzBlYTg2NjMwMTEyY2U4YzFiOTBkYmJg
IHwKfCBJU1NVRS0wMDkgUCwgYHBsYW4ubWRgIHwgYDkwZTRjMzE0YjI3ZWE5YjlhMjU3NWM2ZmRk
YzNhNGU4M2U3ZWVmNzRgIHwgYDM5OWIzYmI5NmM2NDgyZDM1ZmVkOTM0MTExMDRkMDRkM2QxOTE0
ODJgIHwKfCBJU1NVRS0wMDkgVzEgfCBgODBmZTQ4OTQ1OGE4YjNjZmQyOTBiYThmMmNhMDAwYjc4
NmE5ZmZlNWAgfCBgNWY3OTc0N2YxNTYyZWVhODM5ZWMxYTk3YmEwOWVmYmJiMDI0ODI3NWAgfAoK
0JLRgdC1INGH0LXRgtGL0YDQtSBjb21taXRzINGP0LLQu9GP0Y7RgtGB0Y8g0L/RgNC10LTQutCw
0LzQuCBiYXNlbGluZS4g0J/RgNC+0YfQuNGC0LDQvdC90YvQtSDRgdGB0YvQu9C60Lgg0L3QsCDQ
uNGB0YLQvtGA0LjRh9C10YHQutC40LUgYXBwcm92YWxzINC90LUg0L7Qt9C90LDRh9Cw0Y7RgiDQ
v9C+0LLRgtC+0YDQvdGD0Y4g0L3QtdC30LDQstC40YHQuNC80YPRjiDQsNGD0YLQtdC90YLQuNGE
0LjQutCw0YbQuNGOINCy0YHQtdGFINC/0YDQvtGI0LvRi9GFIE93bmVyIGRlY2lzaW9ucyDQuNC7
0Lgg0L/QvtCy0YLQvtGA0L3QvtC1INCy0YvQv9C+0LvQvdC10L3QuNC1INC40YHRgtC+0YDQuNGH
0LXRgdC60LjRhSDQv9GA0L7QstC10YDQvtC6LgoKIyMgNC4gT3duZXIgZGVjaXNpb25zINC4INGB
0YLQsNGC0YPRgSDQv9C+0LvQvdC+0LzQvtGH0LjQuQoKfCDQoNC10YjQtdC90LjQtSB8INCg0LXQ
t9GD0LvRjNGC0LDRgiDQv9GA0L7QstC10YDQutC4IHwKfC0tLXwtLS18Cnwg0KDQsNC30YDQtdGI
0LXQvdC40LUgYm91bmRlZCBwbGFubmluZy9wcm9wb3NhbCB3b3JrIHwg0J/RgNC10LTQvtGB0YLQ
sNCy0LvQtdC90L4gT3duZXIg0LIg0YLQtdC60YPRidC10LkgbWlzc2lvbjsg0YHQvtC+0YLQstC1
0YLRgdGC0LLRg9GO0YnQsNGPINC40YHRhdC+0LTQvdCw0Y8g0YTQvtGA0LzRg9C70LjRgNC+0LLQ
utCwINC/0LXRgNC10LTQsNC90LAgQ29udHJvbCBUb3dlciDQuNC3INGC0LXQutGD0YnQtdCz0L4g
0LrQvtC90YLQtdC60YHRgtCwLiB8Cnwg0J7QtNC90L7QutGA0LDRgtC90L7QtSBwbGFubmluZy1w
YXRoIGV4Y2VwdGlvbiB8INCf0YDQtdC00L7RgdGC0LDQstC70LXQvdC+IE93bmVyINC00LvRjyBj
YW5kaWRhdGUgc3BlYy9QINCyIGBkb2NzL3Byb2plY3RzL2lzc3VlLTAxMC1kb2N1bWVudGF0aW9u
LW1vZGVsL2AuINCV0LPQviDQv9C+0LvQvdC+0LUgZHVyYWJsZSDRgdC+0YXRgNCw0L3QtdC90LjQ
tSDQv9C+0LrQsCDQvtGC0YHRg9GC0YHRgtCy0YPQtdGCLiB8CnwgT3duZXIgYWNjZXB0YW5jZSBl
eGFjdCBzcGVjaWZpY2F0aW9uIHwgKipOT1RfVkVSSUZJRUQ6KiogY29tbWl0dGVkINC30LDQv9C4
0YHRjCDRgdC+0LTQtdGA0LbQuNGCIGV4YWN0IGlkZW50aWZpZXJzINC4INGC0YDQsNC90YHQutGA
0LjQv9GG0LjRjiDQvtGC0LLQtdGC0LAsINC90L4g0LjRgdGF0L7QtNC90L7QtSDQv9GA0LXQtNGB
0YLQsNCy0LvQtdC90LjQtSBzcGVjaWZpY2F0aW9uINC4INGB0LLRj9C30LDQvdC90YvQuSDQvtGC
0LLQtdGCINC90LXQtNC+0YHRgtGD0L/QvdGLLiB8CnwgRm9ybWFsIFByb2plY3QgQ3JpdGljIFJF
QURZIHwg0J3QtSDQstGL0LTQsNC9LiB8CnwgT3duZXIgYXBwcm92YWwgZXhhY3QgUCB8IFBlbmRp
bmc7INGN0YLQviDQvtC20LjQtNCw0LXQvNGL0Lkg0YHQu9C10LTRg9GO0YnQuNC5IGdhdGUg0L/Q
vtGB0LvQtSBQcm9qZWN0IENyaXRpYyBSRUFEWS4gfAp8IFcg0LggU3RhZ2UgQ3JpdGljIFJFQURZ
IHwg0J3QtSDQv9GA0LXQtNGB0YLQsNCy0LvQtdC90Ysg0LrQsNC6INC/0YDQvtC50LTQtdC90L3R
i9C1LiB8Cnwg0J3QvtGA0LzQsNGC0LjQstC90YvQtSBzb3VyY2UgZWRpdHMgfCDQndC1INGA0LDQ
t9GA0LXRiNC10L3RiyDRgtC10LrRg9GJ0LjQvCDRgdC+0YHRgtC+0Y/QvdC40LXQvCBnYXRlcy4g
fAp8IE93bmVyIE1lcmdlIEdPIHwg0J3QtSDQv9GA0LXQtNC+0YHRgtCw0LLQu9C10L0uIHwKCtCh
0LDQvNC+INC+0YLRgdGD0YLRgdGC0LLQuNC1INC60YDQuNC/0YLQvtCz0YDQsNGE0LjRh9C10YHQ
utC+0Lkg0L/QvtC00L/QuNGB0LgsINC/0L7QtNC/0LjRgdCw0L3QvdC+0LPQviBjb21taXQg0LjQ
u9C4INC70LjRh9C90L7Qs9C+IEdpdEh1YiBjb21tZW50IE93bmVyICoq0L3QtSDRj9Cy0LvRj9C1
0YLRgdGPINC+0YLQtNC10LvRjNC90YvQvCDQvtCx0Y/Qt9Cw0YLQtdC70YzQvdGL0LwgZ2F0ZSoq
LiDQn9GA0L7QsdC70LXQvNCwINGB0L7RgdGC0L7QuNGCINCyINC/0YDQvtCy0LXRgNGP0LXQvNC+
0YHRgtC4INGB0LLRj9C30Lgg0YTQsNC60YLQuNGH0LXRgdC60L7Qs9C+INGA0LXRiNC10L3QuNGP
INGBIGV4YWN0IHN1YmplY3Qg0Lgg0LIg0L3QtdCy0YvQv9C+0LvQvdC10L3QvdC+0Lwg0YLRgNC1
0LHQvtCy0LDQvdC40LggZHVyYWJsZSBwcmVzZXJ2YXRpb24sINGD0YHRgtCw0L3QvtCy0LvQtdC9
0L3QvtC8INGB0LDQvNC40LwgY2FuZGlkYXRlIHNwZWNpZmljYXRpb24uCgojIyA1LiBGaW5kaW5n
cwoKIyMjIEYxIOKAlCBISUdIIOKAlCDQndC1INC/0L7QtNGC0LLQtdGA0LbQtNC10L3QsCDQuNGB
0YXQvtC00L3QsNGPINC/0YDQuNCy0Y/Qt9C60LAgT3duZXIgYWNjZXB0YW5jZSDQuiBleGFjdCBz
cGVjaWZpY2F0aW9uCgoqKtCc0LXRgdGC0LA6KioKCi0gYGRvY3MvcHJvamVjdHMvaXNzdWUtMDEw
LWRvY3VtZW50YXRpb24tbW9kZWwvc3BlYy5tZDo3YAotIGBkb2NzL3Byb2plY3RzL2lzc3VlLTAx
MC1kb2N1bWVudGF0aW9uLW1vZGVsL3BsYW4ubWQ6MTVgCi0gYGRvY3MvcHJvamVjdHMvaXNzdWUt
MDEwLWRvY3VtZW50YXRpb24tbW9kZWwvcGxhbi5tZDo5NWAKLSBgZG9jcy9jaGFuZ2VzL0lTU1VF
LTAxMC9vd25lci1kZWNpc2lvbnMubWQ6MjRgCi0gYGRvY3MvY2hhbmdlcy9JU1NVRS0wMTAvb3du
ZXItZGVjaXNpb25zLm1kOjI3YAotIGBkb2NzL2NoYW5nZXMvSVNTVUUtMDEwL293bmVyLWRlY2lz
aW9ucy5tZDo0MGAKLSBgZG9jcy9jaGFuZ2VzL0lTU1VFLTAxMC9oYW5kb2ZmLm1kOjdgCgoqKtCd
0LDQsdC70Y7QtNC10L3QuNC1LioqIE93bmVyIHJlY29yZCDQtNC+0LHRgNC+0YHQvtCy0LXRgdGC
0L3QviDRgNCw0YHQutGA0YvQstCw0LXRgiwg0YfRgtC+INGN0YLQviDRgtGA0LDQvdGB0LrRgNC4
0L/RhtC40Y8gYXNzaXN0YW50LCDQuCDQv9C10YDQtdGH0LjRgdC70Y/QtdGCIGV4YWN0IHNwZWNp
ZmljYXRpb24gaWRlbnRpZmllcnMuINCe0LTQvdCw0LrQviDQv9GA0L7RhtC40YLQuNGA0L7QstCw
0L3QvdGL0LkgYWZmaXJtYXRpdmUg0L7RgtCy0LXRgiDRgdCw0Lwg0L/QviDRgdC10LHQtSDQvdC1
INGB0L7QtNC10YDQttC40YIgc3BlYyBpZGVudGl0eTsg0YHQstGP0LfRjCDRgSDQvdC10L/QvtGB
0YDQtdC00YHRgtCy0LXQvdC90L4g0L/RgNC10LTRiNC10YHRgtCy0YPRjtGJ0LjQvCDQv9GA0LXQ
tNGB0YLQsNCy0LvQtdC90LjQtdC8IHNwZWNpZmljYXRpb24g0YPRgtCy0LXRgNC20LTQsNC10YLR
gdGPINC30LDQv9C40YHRjNGOLiDQmNGB0YXQvtC00L3QsNGPINC/0LDRgNCwINGB0L7QvtCx0YnQ
tdC90LjQuSDQsiDQtNC+0YHRgtGD0L/QvdC+0Lwg0LrQvtC90YLQtdC60YHRgtC1INC+0YLRgdGD
0YLRgdGC0LLRg9C10YIuCgrQlNC+0L/QvtC70L3QuNGC0LXQu9GM0L3QviBzcGVjaWZpY2F0aW9u
INGC0YDQtdCx0YPQtdGCINC00L4gZm9ybWFsIHBsYW5uaW5nINGB0L7RhdGA0LDQvdC40YLRjCDR
gtC+0YfQvdGL0LkgT3duZXIgcmVxdWVzdC4gRHVyYWJsZSByZWNvcmQg0YHQvtC00LXRgNC20LjR
giDQv9C10YDQtdGB0LrQsNC3INC40YHRhdC+0LTQvdC+0LkgbWlzc2lvbjsg0YLQtdC60YPRidCw
0Y8g0L/QvtC00LvQuNC90L3QsNGPINGE0L7RgNC80YPQu9C40YDQvtCy0LrQsCBwbGFubmluZy1w
YXRoIGV4Y2VwdGlvbiDQtNC+0YHRgtGD0L/QvdCwINGH0LXRgNC10LcgQ29udHJvbCBUb3dlciwg
0L3QviDQtdGJ0ZEg0L3QtSDRgdC+0YXRgNCw0L3QtdC90LAg0LIg0L/QvtC70L3QvtC8INGC0YDQ
tdCx0YPQtdC80L7QvCDQstC40LTQtS4KCioq0J/QvtGB0LvQtdC00YHRgtCy0LjQtS4qKiDQndC1
0LfQsNCy0LjRgdC40LzRi9C5IENyaXRpYyDQvNC+0LbQtdGCINC/0L7QtNGC0LLQtdGA0LTQuNGC
0Ywg0L3QsNC70LjRh9C40LUg0LfQsNC/0LjRgdC4INC+0LEgYXNzZW50LCDQvdC+INC90LUg0LzQ
vtC20LXRgiDQv9C+0LTRgtCy0LXRgNC00LjRgtGMINGB0LDQvCBleGFjdC1zcGVjIHByZXJlcXVp
c2l0ZSDRgSDRgtGA0LXQsdGD0LXQvNC+0Lkg0L/RgNC40LLRj9C30LrQvtC5LiDQndC10LvRjNC3
0Y8g0L/RgNC10LLRgNCw0YnQsNGC0Ywg0Y3RgtGDINC90LXQvtC/0YDQtdC00LXQu9GR0L3QvdC+
0YHRgtGMINCyINGD0YHRgtCw0L3QvtCy0LvQtdC90L3QvtC1INGB0L7Qs9C70LDRgdC40LUg0LjQ
u9C4INCyINGD0YHRgtCw0L3QvtCy0LvQtdC90L3Ri9C5INC+0YLQutCw0LcgT3duZXIuCgoqKtCY
0YHQv9GA0LDQstC70LXQvdC40LUuKioKCtCh0L7RhdGA0LDQvdC40YLRjCDQvNC40L3QuNC80LDQ
u9GM0L3Ri9C5INC90LXQvtCx0YXQvtC00LjQvNGL0LkgZGVjaXNpb24gZXhjZXJwdCDRgSDQsNGC
0YDQuNCx0YPRhtC40LXQuSDQuNGB0YLQvtGH0L3QuNC60LAsINC00LDRgtC+0Lkv0LjQtNC10L3R
gtC40YTQuNC60LDRgtC+0YDQvtC8INC4INGB0LLRj9C30YzRjjoKCmByZXBvIOKGkiBleGFjdCBz
cGVjIGNvbW1pdC9wYXRoL2Jsb2Ig4oaSINC/0YDQtdC00YHRgtCw0LLQu9C10L3QvdC+0LUg0YDQ
tdGI0LXQvdC40LUg4oaSINC+0YLQstC10YIgT3duZXJgLgoK0J3QtSDQvdGD0LbQtdC9INC/0L7Q
u9C90YvQuSByYXcgdHJhbnNjcmlwdC4g0JXRgdC70Lgg0LjRgdGF0L7QtNC90YvQuSDQutC+0L3R
gtC10LrRgdGCINCy0L7RgdGB0YLQsNC90L7QstC40YLRjCDQvdC10LvRjNC30Y8sINC00L7Qv9GD
0YHRgtC40LzQviDQvdC+0LLQvtC1INGP0LLQvdC+0LUg0L/QvtC00YLQstC10YDQttC00LXQvdC4
0LUgT3duZXIg0Y3RgtC+0LkgZXhhY3Qgc3BlY2lmaWNhdGlvbiDQuCBzY29wZSDQsiDRgtC10LrR
g9GJ0LXQvCDQutC+0L3RgtC10LrRgdGC0LUg0YEg0YfQtdGB0YLQvdC+0Lkg0LTQsNGC0L7QuSDQ
vdC+0LLQvtCz0L4g0YDQtdGI0LXQvdC40Y8uINCe0L3QviDQvdC1INC00L7Qu9C20L3QviDQstGL
0LTQsNCy0LDRgtGM0YHRjyDQt9CwINCy0L7RgdGB0YLQsNC90L7QstC70LXQvdC90L7QtSDRgdGC
0LDRgNC+0LUgYXNzZW50LgoK0JTQviDRg9GB0YLRgNCw0L3QtdC90LjRjyDigJQgKipCTE9DS0VE
Kiog0L3QsCBmb3JtYWwgcHJlcmVxdWlzaXRlLgoKIyMjIEYyIOKAlCBNRURJVU0g4oCUIEFjdHVh
bCBDSSBleGFjdCBjYW5kaWRhdGUg0L/QsNC00LDQtdGCINC90LAg0LTQvtCx0LDQstC70LXQvdC9
0L7QvCB3aGl0ZXNwYWNlCgoqKtCc0LXRgdGC0LA6KioKCi0gYGRvY3MvY2hhbmdlcy9JU1NVRS0w
MTAvb3duZXItZGVjaXNpb25zLm1kOjNgCi0gYGRvY3MvY2hhbmdlcy9JU1NVRS0wMTAvb3duZXIt
ZGVjaXNpb25zLm1kOjRgCi0gYGRvY3MvY2hhbmdlcy9JU1NVRS0wMTAvb3duZXItZGVjaXNpb25z
Lm1kOjVgCi0gYGRvY3MvY2hhbmdlcy9JU1NVRS0wMTAvb3duZXItZGVjaXNpb25zLm1kOjI0YAot
IGBkb2NzL3Byb2plY3RzL2lzc3VlLTAxMC1kb2N1bWVudGF0aW9uLW1vZGVsL3BsYW4ubWQ6M2AK
LSBgZG9jcy9wcm9qZWN0cy9pc3N1ZS0wMTAtZG9jdW1lbnRhdGlvbi1tb2RlbC9wbGFuLm1kOjRg
Ci0gYGRvY3MvcHJvamVjdHMvaXNzdWUtMDEwLWRvY3VtZW50YXRpb24tbW9kZWwvcGxhbi5tZDo1
YAotIGBkb2NzL3Byb2plY3RzL2lzc3VlLTAxMC1kb2N1bWVudGF0aW9uLW1vZGVsL3BsYW4ubWQ6
NmAKCioq0KHQstC40LTQtdGC0LXQu9GM0YHRgtCy0L4uKiogW1J1biAzOTc5ODE2NTMxOV0oaHR0
cHM6Ly9naXRodWIuY29tL29sZXluYTgwL2FnZW50aWMtc2RsYy1saXRlL2FjdGlvbnMvcnVucy8z
OTc5ODE2NTMxOSksIGV2ZW50IGhlYWQgYGYzOTM3YzE3ZjlmMGU3NjUwMDU0MWM0OWRmYWY4ZWU5
YjZiOTc5OThgLCDQt9Cw0LLQtdGA0YjRkdC9IGBmYWlsdXJlYC4gSm9iIGAxMTk4OTA5Mzk1MjRg
OyB3aGl0ZXNwYWNlIHN0ZXAg0LLRi9GI0LXQuyDRgSDQutC+0LTQvtC8IGAyYC4g0JIg0LvQvtCz
0LDRhSDQv9C10YDQtdGH0LjRgdC70LXQvdGLIHRyYWlsaW5nIHNwYWNlcyDQuNC80LXQvdC90L4g
0L3QsCDRg9C60LDQt9Cw0L3QvdGL0YUg0YHRgtGA0L7QutCw0YUuCgpXb3JrZmxvdyDQstGL0L/Q
vtC70L3Rj9C70YHRjyDQvdCwIHN5bnRoZXRpYyBQUiBtZXJnZSBjb21taXQgYDQyOWVhMjNhZWE3
N2E1YTdhODlkNDZjNWI3MDA1ODIyYTQ2ZjRjZTNgOyBldmVudCBoZWFkINC/0YDQuCDRjdGC0L7Q
vCDRgdC+0LLQv9Cw0LTQsNC10YIg0YEgcmV2aWV3IEhFQUQuINCt0YLQviBhY3R1YWwgUFIgQ0kg
ZmFpbHVyZS4g0J/RgNC40YfQuNC90LAg0L3QtSDQvtGC0L3QvtGB0LjRgtGB0Y8g0Log0L/RgNC1
0LbQvdC10LkgaGlzdG9yeS1pbnNwZWN0aW9uINC/0YDQvtCx0LvQtdC80LUuCgoqKtCY0YHQv9GA
0LDQstC70LXQvdC40LUuKiog0KPQtNCw0LvQuNGC0Ywg0LLQstC10LTRkdC90L3Ri9C5IHRyYWls
aW5nIHdoaXRlc3BhY2Ug0LIgcGxhbm5pbmcgYXJ0aWZhY3RzINC4INC/0L7Qu9GD0YfQuNGC0Ywg
YWN0dWFsIENJINC90L7QstC+0LPQviBjYW5kaWRhdGUuINCf0L7RgdC60L7Qu9GM0LrRgyDQuNC3
0LzQtdC90Y/RgtGB0Y8g0LHQsNC50YLRiyBQLCDQt9Cw0YTQuNC60YHQuNGA0L7QstCw0YLRjCDQ
vdC+0LLRi9C5IFAgYmxvYiDQuCDQv9GA0L7QstC10YHRgtC4IGluZGVwZW5kZW50IGZvcm1hbCBy
ZXZpZXcg0L3QvtCy0L7Qs9C+IGV4YWN0IFAg0LTQviBPd25lciBhcHByb3ZhbC4g0J3QtSDQt9Cw
0LzQvtGA0LDQttC40LLQsNGC0Ywg0YLQtdC60YPRidC40LkgUCDRgSDQv9C+0YHQu9C10LTRg9GO
0YnQtdC5IMKr0LrQvtGB0LzQtdGC0LjRh9C10YHQutC+0LnCuyDQvdC+0YDQvNCw0LvQuNC30LDR
htC40LXQuS4KCtCh0YLQsNGC0YPRgSDigJQgKipSRVdPUksqKi4KCiMjIyBGMyDigJQgTUVESVVN
IOKAlCDQndC10YIg0LDQutGC0YPQsNC70YzQvdC+0LPQviB0YXNrIGNoZWNrcG9pbnQg0L/QvtGB
0LvQtSDQv9C10YDQtdGF0L7QtNCwINC6IGNvbW1pdHRlZCBQCgoqKtCc0LXRgdGC0LA6KioKCi0g
YGRvY3MvY2hhbmdlcy9JU1NVRS0wMTAvaGFuZG9mZi5tZDozYAotIGBkb2NzL2NoYW5nZXMvSVNT
VUUtMDEwL2hhbmRvZmYubWQ6MTJgCi0gYGRvY3MvY2hhbmdlcy9JU1NVRS0wMTAvaGFuZG9mZi5t
ZDoxOWAKLSBgZG9jcy9jaGFuZ2VzL0lTU1VFLTAxMC9oYW5kb2ZmLm1kOjQ3YAotIGBkb2NzL2No
YW5nZXMvSVNTVUUtMDEwL2hhbmRvZmYubWQ6NThgCi0gYGRvY3MvY2hhbmdlcy9JU1NVRS0wMTAv
aGFuZG9mZi5tZDo2MmAKCioq0J3QsNCx0LvRjtC00LXQvdC40LUuKiogSGFuZG9mZiDQvtC/0LjR
gdGL0LLQsNC10YIg0L/RgNC10LbQvdGO0Y4g0LDRgNGF0LjRgtC10LrRgtGD0YDQvdGD0Y4g0YTQ
sNC30YM6INGH0LXRgtGL0YDQtSBwbGFubmluZyBwYXRocywgdW5wdWJsaXNoZWQgYnJhbmNoLCDQ
vtC20LjQtNCw0L3QuNC1IHNwZWMgYWNjZXB0YW5jZSDQuCDQtdGJ0ZEg0L3QtSDQvdCw0YfQsNGC
0YvQuSBQLiDQotC10L/QtdGA0Ywg0YHRg9GJ0LXRgdGC0LLRg9GO0YIg0YjQtdGB0YLRjCDRhNCw
0LnQu9C+0LIsIGNvbW1pdHRlZCBQLCBQUiAjMTQsIG93bmVyIHJlY29yZCDQuCBmYWlsZWQgQ0ku
INCY0YHRgtC+0YDQuNGH0LXRgdC60LjQuSBjaGVja3BvaW50INC/0L7QvdGP0YLQtdC9INCyINGB
0LLQvtGR0Lwg0LrQvtC90YLQtdC60YHRgtC1LCDQvdC+INGC0LXQutGD0YnQuNC5IHRhc2sgY2hl
Y2twb2ludCDQvtGC0YHRg9GC0YHRgtCy0YPQtdGCLgoK0K3RgtC+INGA0LDRgdGF0L7QtNC40YLR
gdGPINGBIHJlY292ZXJ5L2NoZWNrcG9pbnQg0YLRgNC10LHQvtCy0LDQvdC40Y/QvNC4IGBkb2Nz
L3dvcmtmbG93L21lbW9yeS5tZDo1MWAsIGA6NTNgLCBgOjY5YCwgYDo3NWAuCgoqKtCY0YHQv9GA
0LDQstC70LXQvdC40LUuKiog0KHQvtGF0YDQsNC90LjRgtGMINC40YHRgtC+0YDQuNGH0LXRgdC6
0LjQuSBjaGVja3BvaW50INC4INC00L7QsdCw0LLQuNGC0Ywg0LTQsNGC0LjRgNC+0LLQsNC90L3R
i9C5INCw0LrRgtGD0LDQu9GM0L3Ri9C5IGNoZWNrcG9pbnQ6IG9ic2VydmVkIHJlZnMsIGV4YWN0
IFAvc3BlYywgUFIsINGE0LDQutGC0LjRh9C10YHQutC40LkgQ0kgZmFpbHVyZSwg0L7Qs9GA0LDQ
vdC40YfQtdC90LjQtSBwcm92ZW5hbmNlLCBwZW5kaW5nIGZvcm1hbC9Pd25lciBnYXRlcyDQuCDR
gdC70LXQtNGD0Y7RidC40Lkg0YDQsNC30YDQtdGI0ZHQvdC90YvQuSDRiNCw0LMuINCh0YLQsNGC
0YPRgdC90YPRjiDQuNC90YTQvtGA0LzQsNGG0LjRjiDRhdGA0LDQvdC40YLRjCDQstC90LUgZnJv
emVuIFAuCgrQodGC0LDRgtGD0YEg4oCUICoqUkVXT1JLKiouCgojIyA2LiDQodC+0L7RgtCy0LXR
gtGB0YLQstC40LUgUCDQutGA0LjRgtC10YDQuNGP0LwgQUMwMeKAk0FDMTIKCtCX0LTQtdGB0Ywg
0L7RhtC10L3QuNCy0LDQtdGC0YHRjyDQv9C+0LvQvdC+0YLQsCAqKtC/0LvQsNC90LAqKiwg0LAg
0L3QtSDQuNGB0L/QvtC70L3QtdC90LjQtSDQsdGD0LTRg9GJ0LXQs9C+INC40LfQvNC10L3QtdC9
0LjRjy4KCnwgQUMgfCDQntGC0YDQsNC20LXQvdC40LUg0LIgUCB8INCe0YbQtdC90LrQsCB8Cnwt
LS18LS0tfC0tLXwKfCBBQzAxIOKAlCBwcm9qZWN0LWxvY2FsINC80L7QtNC10LvRjCDQuCBlbnRy
eXBvaW50cyB8IFA6MjfigJM0OSwgOjU34oCTNzU7IFQwMS9UMDcvVDE3IHwg0J/QvtC60YDRi9GC
OyBpbXBsZW1lbnRhdGlvbiDQvdC1INCy0YvQv9C+0LvQvdC10L3QsC4gfAp8IEFDMDIg4oCUINGA
0LDQt9C90YvQtSDQvdCw0LfQvdCw0YfQtdC90LjRjyBhcnRpZmFjdHMsINCx0LXQtyDQu9C40YjQ
vdC40YUgcm91dGluZSBnYXRlcyB8IFA6MjfigJM0NSwgOjEwN+KAkzExNTsgVDE4IHwg0J/QvtC6
0YDRi9GCLiB8CnwgQUMwMyDigJQgZXhhY3QgV+KGklDihpJzcGVj4oaSaW50ZW50L093bmVyIGJp
bmRpbmcsIFNUT1AgfCBQOjQ3LCA6MTAzOyBUMDPigJNUMDUvVDIxIHwg0J/QvtC60YDRi9GCINC6
0L7QvdGB0YLRgNGD0LrRgtC40LLQvdC+OyDRhNCw0LrRgtC40YfQtdGB0LrQuNC5IHByZXJlcXVp
c2l0ZSDQvtCz0YDQsNC90LjRh9C10L0gRjEuIHwKfCBBQzA0IOKAlCDQv9Cw0YDQsNC70LvQtdC7
0YzQvdGL0LUg0L/RgNC+0LXQutGC0Ysg0LggbWVyZ2UvYmFzZSBjb250ZXh0IHwgUDo0OeKAkzUx
OyBUMDEvVDAyL1QwNyB8INCf0L7QutGA0YvRgjsg0YLRgNC10LHRg9C10YLRgdGPINGA0LXQsNC7
0YzQvdGL0LkgZGlzcG9zYWJsZSBHaXQg0YHRhtC10L3QsNGA0LjQuS4gfAp8IEFDMDUg4oCUIG1p
c3Npbmcvc3RhbGUvbXV0YXRlZCBhcHByb3ZhbCDQuCDQvtGC0LTQtdC70YzQvdGL0LUgcmV2aXNp
b24gcm91dGVzIHwgUDo0N+KAkzQ5LCA6MTI1OyBUMDUvVDA2L1QwOOKAk1QxMC9UMjEgfCDQn9C+
0LrRgNGL0YIuIHwKfCBBQzA2IOKAlCBsZWdhY3kgcHJvdmVuYW5jZSBXQjAwMi9JU1NVRTAwOSB8
IFA6NTEsIDo4OSwgOjExMDsgVDA4L1QxMS9UMTkgfCDQn9C+0LrRgNGL0YI7INC40YHRhdC+0LTQ
vdGL0LUg0L7QsdGK0LXQutGC0Ysg0LggYW5jZXN0cnkg0LTQvtGB0YLRg9C/0L3Riy4gfAp8IEFD
MDcg4oCUIGRvd25zdHJlYW0g0LHQtdC3INCw0LrRgtC40LLQvdC+0LPQviBpbmhlcml0ZWQgbGlm
ZWN5Y2xlIHwgUDo1MzsgVDEzL1QxNC9UMjEgfCDQn9C+0LrRgNGL0YIuIHwKfCBBQzA4IOKAlCBm
cmVzaCBuYXRpdmUgcmVjb3ZlcnksINGH0LXRgdGC0L3Ri9C5IGNvbXBhY3Rpb24gY292ZXJhZ2Ug
fCBQOjEwN+KAkzExNzsgVDE1L1QxNiB8INCf0L7QutGA0YvRgjsgbmF0aXZlIGV4ZWN1dGlvbiDQ
tdGJ0ZEg0L3QtSDQtNC+0LrQsNC30LDQvS4gfAp8IEFDMDkg4oCUIHJvdXRpbmUgcm91dGUsIG9w
dGlvbmFsIGludGVudC9ST0FETUFQIHwgUDoyN+KAkzQ1LCA6NTM7IFQxMi9UMTQvVDE4IHwg0J/Q
vtC60YDRi9GCLiB8CnwgQUMxMCDigJQg0LTQvtC60YPQvNC10L3RgtCw0YbQuNGPINC60LDQuiDQ
v9GA0L7QtNGD0LrRgiwg0L7QtNC40L0gbGlmZWN5Y2xlIHwgUDoyNSwgOjU34oCTNzUsIDoxMDfi
gJMxMTU7IFQxNy9UMjAgfCDQn9C+0LrRgNGL0YI7IHJ1bnRpbWUvY29udHJvbGxlciDQvdC1INC0
0L7QsdCw0LLQu9GP0LXRgtGB0Y8uIHwKfCBBQzExIOKAlCBzY29wZSwg0L/RgNC+0LLQtdGA0LXQ
vdC90L7QtSDRgdC+0LTQtdGA0LbQuNC80L7QtSwgc2FtZSBTLCBIL0NJIHwgUDo4N+KAkzk5LCA6
MTE34oCTMTIxLCA6MTM1OyBUMTkvVDIwL1QyMiB8INCf0L7QutGA0YvRgjsg0YLQtdC60YPRidC4
0LkgcGxhbm5pbmcgQ0kg4oCUIEZBSUwuIHwKfCBBQzEyIOKAlCBBRFItMDAwMiwgUk9BRE1BUCwg
QURSLTAwMDEg0YHQvtGF0YDQsNC90ZHQvSB8IFA6NTMsIDo1N+KAkzc1LCA6ODksIDo5NzsgVDEy
L1QxOS9UMjAgfCDQn9C+0LrRgNGL0YIuIHwKCtCh0L7QtNC10YDQttCw0YLQtdC70YzQvdC+0Lkg
0L3QtdC00L7RgdGC0LDRjtGJ0LXQuSBBQyDQsiBQINC90LUg0L7QsdC90LDRgNGD0LbQtdC90L4u
INCt0YLQviDQvdC1INGB0L3QuNC80LDQtdGCIEYx4oCTRjMuCgojIyA3LiBTY29wZSwgQURSLCBs
ZWdhY3kg0LggZG93bnN0cmVhbQoK0J3QvtGA0LzQsNGC0LjQstC90YvQuSBpbXBsZW1lbnRhdGlv
biBzY29wZSBQINC4IHNwZWNpZmljYXRpb24g0YHQvtCy0L/QsNC00LDQtdGCOiAqKjE3IHBhdGhz
KiouCgp8IOKEliB8IFBhdGggfAp8LS0tOnwtLS18CnwgMSB8IGBBR0VOVFMubWRgIHwKfCAyIHwg
YFJFQURNRS5tZGAgfAp8IDMgfCBgUFJPSkVDVF9CUklFRi5tZGAgfAp8IDQgfCBgUFJPSkVDVF9N
QVAubWRgIHwKfCA1IHwgYFJPQURNQVAubWRgIOKAlCDQvdC+0LLRi9C5IHwKfCA2IHwgYGRvY3Mv
d29ya2Zsb3cvZGV2ZWxvcG1lbnQubWRgIHwKfCA3IHwgYGRvY3Mvd29ya2Zsb3cvbWVtb3J5Lm1k
YCB8CnwgOCB8IGBkb2NzL3dvcmtmbG93L2luaXRpYWxpemF0aW9uLm1kYCB8CnwgOSB8IGBkb2Nz
L2FyY2hpdGVjdHVyZS9vdmVydmlldy5tZGAgfAp8IDEwIHwgYGRvY3MvY2hhbmdlcy9SRUFETUUu
bWRgIHwKfCAxMSB8IGBkb2NzL3RlbXBsYXRlcy9pbnRlbnQubWRgIHwKfCAxMiB8IGBkb2NzL3Rl
bXBsYXRlcy9zcGVjLm1kYCB8CnwgMTMgfCBgZG9jcy90ZW1wbGF0ZXMvcGxhbi5tZGAgfAp8IDE0
IHwgYGRvY3MvdGVtcGxhdGVzL3dvcmstYmxvY2subWRgIHwKfCAxNSB8IGBkb2NzL3RlbXBsYXRl
cy9zZXNzaW9uLWhhbmRvZmYubWRgIHwKfCAxNiB8IGBkb2NzL3RlbXBsYXRlcy9zdWJhZ2VudC1t
aXNzaW9uLm1kYCB8CnwgMTcgfCBgZG9jcy9kZWNpc2lvbnMvQURSLTAwMDItcHJvamVjdC1sb2Nh
bC1kb2N1bWVudGF0aW9uLW1vZGVsLm1kYCB8CgpQbGFubmluZy9ldmlkZW5jZSBhcnRpZmFjdHMg
0L/QtdGA0LXRh9C40YHQu9C10L3RiyDQvtGC0LTQtdC70YzQvdC+OyDQvtC90Lgg0L3QtSDQv9C+
0LTQvNC10L3Rj9GO0YIg0Y3RgtC4IDE3IGltcGxlbWVudGF0aW9uIHBhdGhzLgoKKipBRFItMDAw
MS4qKiDQkdCw0LnRgtGLINGB0L7RhdGA0LDQvdC10L3Riy4g0J/Qu9Cw0L3QuNGA0YPQtdC80YvQ
uSBBRFItMDAwMiDQtNC+0LvQttC10L0g0LTQvtC/0L7Qu9C90Y/RgtGMINGB0YPRidC10YHRgtCy
0YPRjtGJ0YPRjiDQvNC+0LTQtdC70YwsINGB0L7RhdGA0LDQvdGP0Y8g0L7QtNC40L0gcm9vdCBj
b250cmFjdCwg0L7QtNC40L0gbGlmZWN5Y2xlINC4INC+0YLRgdGD0YLRgdGC0LLQuNC1IENvbnRy
b2xsZXIuINCh0YLQsNGC0YPRgSDQv9GA0LjQvdGP0YLQuNGPIEFEUiDQvdC10LvRjNC30Y8g0LLR
i9Cy0L7QtNC40YLRjCDQuNC3INGN0YLQvtCz0L4gQ3JpdGljIHJldmlldy4KCioqUk9BRE1BUC4q
KiDQndC+0LLRi9C5INC00L7QutGD0LzQtdC90YIg0LzQvtC20LXRgiDRhNC40LrRgdC40YDQvtCy
0LDRgtGMINC00LDRgtC40YDQvtCy0LDQvdC90YvQtSDRhNCw0LrRgtGLINC4IHByb3Bvc2VkIGZ1
dHVyZSBzdGFnZXMuINCe0L0g0L3QtSDQv9GA0LXQtNC+0YHRgtCw0LLQu9GP0LXRgiDQv9C+0LvQ
vdC+0LzQvtGH0LjQuSwg0L3QtSDQt9Cw0LzQtdC90Y/QtdGCIGxpdmUgR2l0IGV2aWRlbmNlINC4
INC90LUg0LTQtdC70LDQtdGCINC+0YLRgdGD0YLRgdGC0LLRg9GO0YnQuNC1IG5hdGl2ZSBjYXBh
YmlsaXRpZXMg0YDQtdCw0LvQuNC30L7QstCw0L3QvdGL0LzQuC4g0JfQsNGP0LLQu9C10L3QuNC1
INC+0LEg0L7RgtGB0YPRgtGB0YLQstC40LggYnJhbmNoIHByb3RlY3Rpb24g0Y8g0L3QtdC30LDQ
stC40YHQuNC80L4g0L3QtSDQv9C+0LTRgtCy0LXRgNC00LjQuzog0YHQvtC+0YLQstC10YLRgdGC
0LLRg9GO0YnQuNC5IEFQSSBHRVQg0LLQtdGA0L3Rg9C7IEhUVFAgNDAzLiDQrdGC0L4g0L7Qs9GA
0LDQvdC40YfQtdC90LjQtSDQv9GA0L7QstC10YDQutC4LCDQsCDQvdC1INGD0YHRgtCw0L3QvtCy
0LvQtdC90L3Ri9C5INC90L7QstGL0LkgYmxvY2tlci4KCioqTGVnYWN5LioqIFAg0YHQvtGF0YDQ
sNC90Y/QtdGCINC40YHRhdC+0LTQvdGL0LUg0L/Rg9GC0LgsIGJsb2JzLCBhbmNlc3RyeSDQuCBh
cHByb3ZlZC1jb250cmFjdCBwcm92ZW5hbmNlLiDQktCw0LbQvdC+0LUg0LjRgdC60LvRjtGH0LXQ
vdC40LUgV0ItTElURS0wMDIgVzIgwqc5INGD0YfRgtC10L3Qvjog0YHQvtCy0L/QsNC00LXQvdC4
0LUgYmxvYiDQvdC1INC00L7QutCw0LfRi9Cy0LDQtdGCINC00L7Qv9GD0YHRgtC40LzQvtGB0YLR
jCDQvdC+0LLQvtCz0L4gYmFzZS9jb250ZXh0OyDQsNC70YzRgtC10YDQvdCw0YLQuNCy0L3QvtC1
INC+0YHQvdC+0LLQsNC90LjQtSDRgtGA0LXQsdGD0LXRgiDRgdC+0L7RgtCy0LXRgtGB0YLQstGD
0Y7RidC10LPQviBPd25lciBkaXNwb3NpdGlvbi4g0JrQvtC/0LjRgNC+0LLQsNC90LjQtSDQuNGB
0YLQvtGA0LjRh9C10YHQutC+0LPQviBQL1cg0L3QtSDQv9C10YDQtdC90L7RgdC40YIgYXBwcm92
YWxzLgoKKipEb3duc3RyZWFtLioqINCd0LDRgdC70LXQtNGD0LXQvNGL0LUgc291cmNlLXRlbXBs
YXRlIGNvbnRyYWN0cyDQvdC1INGB0YLQsNC90L7QstGP0YLRgdGPINCw0LrRgtC40LLQvdGL0LzQ
uCDQutC+0L3RgtGA0LDQutGC0LDQvNC4INC/0YDQvtC40LfQstC+0LTQvdC+0LPQviDQv9GA0L7Q
tdC60YLQsC4g0KHQvtCx0YHRgtCy0LXQvdC90YvQtSBpZGVudGl0eSwgaW5pdGlhbGl6YXRpb24g
0LggT3duZXIgZGVjaXNpb25zINC+0LHRj9C30LDRgtC10LvRjNC90Ysg0L/QviDQv9GA0LjQvNC1
0L3QuNC80L7QvNGDIHJvdXRlOyBST0FETUFQINC+0YHRgtCw0ZHRgtGB0Y8gb3B0aW9uYWwuIFNj
b3BlINC90LUg0YLRgNC10LHRg9C10YIg0L3QvtCy0L7QuSBydW50aW1lIGFkbWlzc2lvbiDRgdC4
0YHRgtC10LzRiy4KCiMjIDguIFQwMeKAk1QyMjog0LLRi9C/0L7Qu9C90LjQvNC+0YHRgtGMINC4
INGH0LXRgdGC0L3Ri9C5INGB0YLQsNGC0YPRgQoKKirQktGB0LUgVDAx4oCTVDIyOiBOT1RfUlVO
INCyINGA0LDQvNC60LDRhSDQtNCw0L3QvdC+0LPQviByZXZpZXcuKioKCnwg0KLQtdGB0YIgfCDQ
n9GA0L7QstC10YDRj9C10LzQvtC1INC00LXQudGB0YLQstC40LUg0Lgg0L7RhtC10L3QutCwINCy
0YvQv9C+0LvQvdC40LzQvtGB0YLQuCB8CnwtLS18LS0tfAp8IFQwMSB8INCU0LLQsCDQv9GA0L7Q
tdC60YLQsCDQsiDRgNCw0LfQvdGL0YUg0LLQtdGC0LrQsNGFINGBINC+0YLQtNC10LvRjNC90YvQ
vNC4IGV4YWN0IGJpbmRpbmdzIOKAlCDQstGL0L/QvtC70L3QuNC80L4g0LIgZGlzcG9zYWJsZSBH
aXQgZml4dHVyZS4gfAp8IFQwMiB8IE1lcmdlIEEg0L/RgNC4INC90LXQt9Cw0LLQtdGA0YjRkdC9
0L3QvtC8IEIsIGNoYW5nZWQgYmFzZS9zaGFyZWQgY29uZmxpY3RzIOKAlCDQstGL0L/QvtC70L3Q
uNC80L4g0YDQtdCw0LvRjNC90YvQvNC4IEdpdCDQvtC/0LXRgNCw0YbQuNGP0LzQuCDQsiBmaXh0
dXJlLiB8CnwgVDAzIHwgV3JvbmcgcmVwby9wcm9qZWN0L1AgY29tbWl0L3BhdGgvYmxvYiDigJQg
0L7RgtC00LXQu9GM0L3Ri9C1INC+0YLRgNC40YbQsNGC0LXQu9GM0L3Ri9C1INGB0LvRg9GH0LDQ
uCDRgSDQvdCw0LHQu9GO0LTQsNC10LzRi9C8IFNUT1AuIHwKfCBUMDQgfCBNaXNzaW5nIFcvY2hl
Y2twb2ludCDQv9GA0Lgg0L3QsNC70LjRh9C40Lgg0YHQvtGB0LXQtNC90LXQs9C+L3Jvb3Qg0LTQ
vtC60YPQvNC10L3RgtCwIOKAlCBTVE9QINCx0LXQtyBmYWxsYmFjay4gfAp8IFQwNSB8INCf0L7Q
vtGH0LXRgNGR0LTQvdC+INC+0YLRgdGD0YLRgdGC0LLRg9GO0YnQuNC1IHNwZWMgYWNjZXB0YW5j
ZSwgUHJvamVjdCBDcml0aWMsIE93bmVyIFAsIFN0YWdlIENyaXRpYy9jb25mb3JtYW5jZSDigJQg
0LrQsNC20LTRi9C5IGdhdGUg0L/RgNC+0LLQtdGA0Y/QtdGC0YHRjyDQvtGC0LTQtdC70YzQvdC+
LiB8CnwgVDA2IHwgTXV0YXRlZCBQL3NwZWMg0Lggc3RhbGUgdmVyZGljdCDigJQgU1RPUCDQuCDQ
vdC+0LLRi9C5INGB0L7QvtGC0LLQtdGC0YHRgtCy0YPRjtGJ0LjQuSDRhtC40LrQuy4gfAp8IFQw
NyB8IER1cGxpY2F0ZS9yZXVzZWQvaW52YWxpZC9yZXRpcmVkIHByb2plY3QgSURzIOKAlCDQstGL
0L/QvtC70L3QuNC80L4uIHwKfCBUMDggfCDQodC70LXQtNGD0Y7RidC40Lkg0L/RgNC+0LXQutGC
INC90LUg0L3QsNGB0LvQtdC00YPQtdGCINC40YHRgtC+0YDQuNGH0LXRgdC60LjQtSBhcHByb3Zh
bHMg4oCUINCy0YvQv9C+0LvQvdC40LzQvi4gfAp8IFQwOSB8IE1hdGVyaWFsIHNwZWNpZmljYXRp
b24gcmV2aXNpb24g0YLRgNC10LHRg9C10YIg0L3QvtCy0L7Qs9C+IGFjY2VwdGFuY2Ug0LggYWZm
ZWN0ZWQgZ2F0ZXMg4oCUINCy0YvQv9C+0LvQvdC40LzQvi4gfAp8IFQxMCB8INCY0LfQvNC10L3Q
tdC90LjQtSDRgtC+0LvRjNC60L4gVyDRgtGA0LXQsdGD0LXRgiDQvdC+0LLQvtCz0L4gU3RhZ2Ug
Q3JpdGljINCx0LXQtyDQv9GA0LjQtNGD0LzQsNC90L3QvtCz0L4gT3duZXIgYXBwcm92YWwg0LrQ
sNC20LTQvtCz0L4gY29uZm9ybWluZyBXIOKAlCDQstGL0L/QvtC70L3QuNC80L4uIHwKfCBUMTEg
fCBSZWNvdmVyeSDQuNGB0YXQvtC00L3Ri9GFIGxlZ2FjeSBjb250cmFjdHM7IGNvcGllZCBwYXRo
INC90LUg0YHRgtCw0L3QvtCy0LjRgtGB0Y8gYXBwcm92ZWQg4oCUINC40YHRhdC+0LTQvdGL0LUg
0L7QsdGK0LXQutGC0Ysg0LTQvtGB0YLRg9C/0L3Riy4gfAp8IFQxMiB8IFN0YWxlIFJPQURNQVAv
cHJvcG9zZWQgZnV0dXJlINC90LUg0LTQsNGO0YIgYXV0aG9yaXR5INC4INC90LUg0L/QtdGA0LXQ
t9Cw0L/QuNGB0YvQstCw0Y7RgiBzaGFyZWQgbWVtb3J5IOKAlCDQstGL0L/QvtC70L3QuNC80L4u
IHwKfCBUMTMgfCBEZXJpdmVkIHJlcG9zaXRvcnkg0LTQtdCw0LrRgtC40LLQuNGA0YPQtdGCIGlu
aGVyaXRlZCBjb250cmFjdHMg4oCUINCy0YvQv9C+0LvQvdC40LzQviDQsiBmaXh0dXJlLiB8Cnwg
VDE0IHwgSW5pdGlhbGl6ZWQgZGVyaXZlZCBwcm9qZWN0INCx0LXQtyBST0FETUFQINC/0YDQvtGF
0L7QtNC40YIg0YHQvtCx0YHRgtCy0LXQvdC90YvQuSBzaWduaWZpY2FudC9yb3V0aW5lIHJvdXRl
IOKAlCDQstGL0L/QvtC70L3QuNC80L4uIHwKfCBUMTUgfCBGcmVzaCDQvdC10LfQsNCy0LjRgdC4
0LzQsNGPIG5hdGl2ZSBzZXNzaW9uINCy0L7RgdGB0YLQsNC90LDQstC70LjQstCw0LXRgiBjaGFp
biDQsdC10Lcg0LjRgdGC0L7RgNC40Lgg0YfQsNGC0LAg4oCUINC+0LHRj9C30LDRgtC10LvQtdC9
INGA0LXQsNC70YzQvdGL0Lkg0LfQsNC/0YPRgdC6OyDRgdC10LnRh9Cw0YEg0L3QtSDQtNC+0LrQ
sNC30LDQvS4gfAp8IFQxNiB8IFN0YWxlIGNoZWNrcG9pbnQg4oaSIFNUT1A7IGFjdHVhbCBjb21w
YWN0aW9uIOKAlCDRgtC+0LvRjNC60L4g0L/RgNC4INGA0LXQsNC70YzQvdC+INC90LDQsdC70Y7Q
tNCw0LXQvNC+0Lwg0YHQvtCx0YvRgtC40LguIFN5bnRoZXRpYyByZXBsYXkg0LzQsNGA0LrQuNGA
0YPQtdGC0YHRjyDQvtGC0LTQtdC70YzQvdC+LiB8CnwgVDE3IHwg0J/RgNC+0LLQtdGA0LrQsCDQ
stGB0LXRhSBlbnRyeXBvaW50cyDQuCDQvtGB0YLQsNCy0YjQuNGF0YHRjyByb290LXBsYW4gcmVm
ZXJlbmNlcyDigJQg0LLRi9C/0L7Qu9C90LjQvNC+INC/0L7Qu9C90YvQvCBzb3VyY2UgYXVkaXQu
IHwKfCBUMTggfCBSb3V0aW5lIHRhc2sg0LHQtdC3INC+0LHRj9C30LDRgtC10LvRjNC90L7Qs9C+
INGB0L7Qt9C00LDQvdC40Y8gaW50ZW50L1AvVy9ST0FETUFQIOKAlCDQstGL0L/QvtC70L3QuNC8
0L4uIHwKfCBUMTkgfCBJbnZhcmlhbnQgaGFzaGVzLCDQv9C+0LvQvdGL0LkgYmFzZeKGklMgZGlm
ZiDQuCBsZWdhY3kgYW5jZXN0cnkg4oCUINCy0YvQv9C+0LvQvdC40LzQvi4gfAp8IFQyMCB8IE1h
cmtkb3duIGxpbmtzINC4IFJPQURNQVAgZmFjdHMg0YHQvtC/0L7RgdGC0LDQstC70Y/RjtGC0YHR
jyDRgSBleGFjdCBTL2xpdmUgZXZpZGVuY2Ug4oCUINCy0YvQv9C+0LvQvdC40LzQvi4gfAp8IFQy
MSB8INCe0LTQuNC90LDQutC+0LLRi9C5IFAgYmxvYiDQsiDQtNGA0YPQs9C+0LwgcmVwbyDQuNC7
0LggY29waWVkIGFwcHJvdmFscyDQvdC1INC00LDRjtGCIGF1dGhvcml0eSDigJQg0LLRi9C/0L7Q
u9C90LjQvNC+INC+0YLRgNC40YbQsNGC0LXQu9GM0L3Ri9C80LggZml4dHVyZXMuIHwKfCBUMjIg
fCDQoNC10LDQu9GM0L3Ri9C1INC90LXQt9Cw0LLQuNGB0LjQvNGL0LUgUmV2aWV3ZXIvVmVyaWZp
ZXIg0L3QsCDQvtC00L3QvtC8IFMsINC30LDRgtC10LwgU+KGkkgg0LggYWN0dWFsIENJIEgg4oCU
INC+0YLQtNC10LvRjNC90YvQuSDQvtCx0Y/Qt9Cw0YLQtdC70YzQvdGL0Lkg0Y3RgtCw0L87INC9
0LUg0LfQsNC80LXQvdGP0LXRgtGB0Y8gc2ltdWxhdGlvbi4gfAoKIyMjINCe0LHRj9C30LDRgtC1
0LvRjNC90LDRjyDQutC+0L3QutGA0LXRgtC40LfQsNGG0LjRjyBSMi1MMDEKClA6MTAzINGC0YDQ
tdCx0YPQtdGCINC00L7Qv9C+0LvQvdC40YLRjCDQvtGC0YDQuNGG0LDRgtC10LvRjNC90YvQtSDR
gdGG0LXQvdCw0YDQuNC4OgoKLSDQndC10LLQtdGA0L3Ri9C1IHNwZWNpZmljYXRpb24gY29tbWl0
L3BhdGgvYmxvYi4KLSDQodC+0LPQu9Cw0YHQuNC1INC90LAg0LTRgNGD0LPRg9GOINGA0LXQsNC7
0YzQvdGD0Y4gcmV2aXNpb24uCi0g0J7RgtGB0YPRgtGB0YLQstGD0Y7RidCw0Y8g0LjQu9C4INC+
0YLQvdC+0YHRj9GJ0LDRj9GB0Y8g0Log0LTRgNGD0LPQvtC5INC40L3QuNGG0LjQsNGC0LjQstC1
INC30LDQv9C40YHRjCBpbnRlbnQvT3duZXIgZGVjaXNpb24uCi0g0JIg0LrQsNC20LTQvtC8INGB
0LvRg9GH0LDQtSDigJQgU1RPUCDQtNC+INC30LDQv9C40YHQuCDQuCDQv9GA0L7QstC10YDRj9C1
0LzRi9C5IGJlZm9yZS9hZnRlciBpbnZlbnRvcnkuCgrQrdGC0L4g0LTQvtGB0YLQsNGC0L7Rh9C9
0L7QtSDQv9C70LDQvdC+0LLQvtC1INC40YHQv9GA0LDQstC70LXQvdC40LUgUjItTDAxLiBXINC0
0L7Qu9C20LXQvSDQv9GA0LXQstGA0LDRgtC40YLRjCDQtdCz0L4g0LIg0LrQvtC90LrRgNC10YLQ
vdGL0LUgaW5wdXRzLCDQutC+0LzQsNC90LTRiy/QtNC10LnRgdGC0LLQuNGPLCDQvtC20LjQtNCw
0LXQvNGL0LUg0YDQtdC30YPQu9GM0YLQsNGC0Ysg0LggaW52ZW50b3J5IGV2aWRlbmNlLgoKU3lu
dGhldGljIGZpeHR1cmVzINGB0L/QvtGB0L7QsdC90Ysg0L/RgNC+0LLQtdGA0LjRgtGMINC+0LHR
gNCw0LHQvtGC0LrRgyDQvdC10L/RgNCw0LLQuNC70YzQvdGL0YUg0LTQsNC90L3Ri9GFLCDQvdC+
INC90LUg0LTQvtC60LDQt9GL0LLQsNGO0YIg0L/QvtC00LvQuNC90L3QvtGB0YLRjCBPd25lciBh
c3NlbnQuIE5hdGl2ZSBUMTUg0L3QtdC70YzQt9GPINC30LDRgdGH0LjRgtCw0YLRjCDQv9C+INGC
0LXQutGB0YLQvtCy0L7QvNGDINGB0YbQtdC90LDRgNC40Y47INGN0YLQvtGCIENyaXRpYyBzdWJh
Z2VudCDRgtCw0LrQttC1INC90LUg0Y/QstC70Y/QtdGC0YHRjyBUMTUsINC/0L7RgdC60L7Qu9GM
0LrRgyDRgNCw0LHQvtGC0LDQtdGCINGBINC/0LXRgNC10LTQsNC90L3Ri9C8INC60L7QvdGC0LXQ
utGB0YLQvtC8IHJldmlldy4g0J3QtSDQvdCw0LHQu9GO0LTQsNCy0YjQuNC50YHRjyBjb21wYWN0
aW9uINCyIFQxNiDQtNC+0LvQttC10L0g0L7RgdGC0LDRgtGM0YHRjyBgTk9UX1ZFUklGSUVEYCwg
0LAg0L3QtSBQQVNTLgoK0JIg0YbQtdC70L7QvCDRgtC10YHRgtC+0LLRi9C5INC90LDQsdC+0YAg
0LLRi9C/0L7Qu9C90LjQvCDQsdC10Lcg0YDQsNGB0YjQuNGA0LXQvdC40Y8g0L3QvtGA0LzQsNGC
0LjQstC90L7Qs9C+IHNjb3BlINC4INCx0LXQtyDQv9C+0YHRgtC+0Y/QvdC90L7Qs9C+INC90L7Q
stC+0LPQviBoYXJuZXNzLiDQlNC+0YHRgtGD0L/QvdC+0YHRgtGMIG5hdGl2ZSBzZXNzaW9ucyDQ
uCDQvdC10LfQsNCy0LjRgdC40LzRi9GFINC40YHQv9C+0LvQvdC40YLQtdC70LXQuSDQtNC+0LvQ
ttC90LAg0L/RgNC+0LLQtdGA0Y/RgtGM0YHRjyDQv9C10YDQtdC0INGB0L7QvtGC0LLQtdGC0YHR
gtCy0YPRjtGJ0LjQvCBnYXRlOyDQvtGC0YHRg9GC0YHRgtCy0LjQtSDQvtCx0Y/Qt9Cw0YLQtdC7
0YzQvdC+0LkgY2FwYWJpbGl0eSDRgtGA0LXQsdGD0LXRgiDRh9C10YHRgtC90L7Qs9C+IEJMT0NL
RUQuCgojIyA5LiDQodC70LXQtNGD0Y7RidC10LUg0YDQtdGI0LXQvdC40LUg0Lgg0LTQvtC/0YPR
gdGC0LjQvNGL0Lkg0L/QvtGA0Y/QtNC+0LoKCjEuINCj0YHRgtGA0LDQvdC40YLRjCDQvdC10L7Q
v9GA0LXQtNC10LvRkdC90L3QvtGB0YLRjCBGMTog0LLQvtGB0YHRgtCw0L3QvtCy0LjRgtGMINC9
0LXQvtCx0YXQvtC00LjQvNGL0Lkg0LjRgdGF0L7QtNC90YvQuSBkZWNpc2lvbiBjb250ZXh0INC7
0LjQsdC+INC/0L7Qu9GD0YfQuNGC0Ywg0L3QvtCy0L7QtSDRj9Cy0L3QvtC1IGV4YWN0LXNwZWMg
Y29uZmlybWF0aW9uIE93bmVyOyDRgdC+0YXRgNCw0L3QuNGC0Ywg0L/QvtC00LvQuNC90L3Rg9GO
IHBsYW5uaW5nLXBhdGggZXhjZXB0aW9uINCyIGR1cmFibGUgZXZpZGVuY2UuCjIuINCY0YHQv9GA
0LDQstC40YLRjCBGMiDQuCDQvtCx0L3QvtCy0LjRgtGMIGNoZWNrcG9pbnQg0L/QviBGMyDQsiDR
gNCw0LfRgNC10YjRkdC90L3Ri9GFIHBsYW5uaW5nL2V2aWRlbmNlIHBhdGhzLgozLiDQl9Cw0YTQ
uNC60YHQuNGA0L7QstCw0YLRjCDQvdC+0LLRi9C5IGV4YWN0IGNhbmRpZGF0ZSwgUCBibG9iINC4
IGFjdHVhbCBDSSByZXN1bHQuCjQuINCf0YDQvtCy0LXRgdGC0LggaW5kZXBlbmRlbnQgZm9ybWFs
IFByb2plY3QgQ3JpdGljIHJldmlldyDQvdC+0LLQvtCz0L4gZXhhY3QgUC4KNS4g0KLQvtC70YzQ
utC+INC/0L7RgdC70LUgKipSRUFEWSoqINC/0L7Qu9GD0YfQuNGC0Ywg0L7RgtC00LXQu9GM0L3Q
vtC1ICoqT3duZXIgYXBwcm92YWwgZXhhY3QgUCoqINC4INC30LDQvNC+0YDQvtC30LjRgtGMINC1
0LPQviDQsdCw0LnRgtGLLgo2LiDQl9Cw0YLQtdC8IGNvbW1pdHRlZCBXLCBjb25mb3JtYW5jZSDQ
uCBpbmRlcGVuZGVudCBTdGFnZSBDcml0aWMgUkVBRFk7INGC0L7Qu9GM0LrQviDQv9C+0YHQu9C1
INGN0YLQvtCz0L4g4oCUINC90L7RgNC80LDRgtC40LLQvdGL0LUgc291cmNlIGVkaXRzLgo3LiDQ
l9Cw0LLQtdGA0YjQtdC90LjQtSDQv9C+0YLRgNC10LHRg9C10YIgaW5kZXBlbmRlbnQgUmV2aWV3
ZXIvVmVyaWZpZXIg0L3QsCDQvtC00L3QvtC8IFMsIGNoZWNrZWQgU+KGkkgsIGFjdHVhbCBDSSBI
INC4INC+0YLQtNC10LvRjNC90L7Qs9C+IE93bmVyIE1lcmdlIEdPLgoKKirQmNGC0L7QszoqKiBQ
INC00L7RgdGC0LDRgtC+0YfQvdC+INC/0L7Qu9C90L4g0L7Qv9C40YHRi9Cy0LDQtdGCINGB0L7Q
s9C70LDRgdC+0LLQsNC90L3Rg9GOINCw0YDRhdC40YLQtdC60YLRg9GA0YMsIDE3LXBhdGggc2Nv
cGUsIGxlZ2FjeSBwcmVzZXJ2YXRpb24g0Lgg0YLRgNC10LHRg9C10LzRi9C1INC/0YDQvtCy0LXR
gNC60LguINCi0LXQutGD0YnQuNC5IGV4YWN0IGNhbmRpZGF0ZSDQvdC1INCz0L7RgtC+0LIg0Log
UHJvamVjdCBDcml0aWMgUkVBRFk6IHByZXJlcXVpc2l0ZSBldmlkZW5jZSDQvtGB0YLQsNGR0YLR
gdGPINC90LXQv9GA0L7QstC10YDQtdC90L3Ri9C8LCBDSSDRhNCw0LrRgtC40YfQtdGB0LrQuCDQ
v9Cw0LTQsNC10YIsINCw0LrRgtGD0LDQu9GM0L3Ri9C5IHRhc2sgY2hlY2twb2ludCDQvtGC0YHR
g9GC0YHRgtCy0YPQtdGCLiBPd25lciBhcHByb3ZhbCBQINC/0L4t0L/RgNC10LbQvdC10LzRgyBw
ZW5kaW5nINC4INC90LUg0LzQvtC20LXRgiDQsdGL0YLRjCDQt9Cw0LzQtdC90ZHQvSDRjdGC0LjQ
vCDQvtGC0YfRkdGC0L7QvC4KCjxvYWktbWVtLWNpdGF0aW9uPgo8Y2l0YXRpb25fZW50cmllcz4K
TUVNT1JZLm1kOjQ5LTUwfG5vdGU9W2V4YWN0IHN1YmplY3QgYW5kIGNoZWNrb3V0IHNwZWNpZmlj
IGFzc3VyYW5jZSBndWlkYW5jZV0KPC9jaXRhdGlvbl9lbnRyaWVzPgo8cm9sbG91dF9pZHM+Cjwv
cm9sbG91dF9pZHM+Cjwvb2FpLW1lbS1jaXRhdGlvbj4=
```

## Formal Project Critic R2 — READY

- Native identity: `/root/issue010_formal_project_critic_r2`, independently reviewing the final committed candidate.
- Exact reviewed P: `41530894af15ecdb9347b8f39e9ee6f939f0bc16`, tree `e95d7c8ff32d5c2f2aba4afaa369f14379e4b733`.
- P blob: `5b0dfb2654ed3072b655de73068b438dc4cb9b1a`; accepted spec blob: `a364ec0fbd21767a36820653bd851d552c8ab7a7`.
- Exact original response: 17831 UTF-8 bytes, SHA-256 `c37d40fa1f7467807266d64eff90995494932adfa41dd4d079ac0cee08f14ccc`.
- READY is suitability for separate Owner exact-P approval. It is not Owner approval or implementation authority. Original R1 remains BLOCKED on its historical subject.

### R2 readable response

# Independent Formal Project Critic R2 — ISSUE-010

**Verdict: READY — suitable for separate Owner exact-P approval.**

**Date:** 2026-10-22. **Independent native agent:** `/root/issue010_formal_project_critic_r2`. **Role:** formal Project Critic, independent of Author, Coder and Owner. This is a new review of the corrected committed candidate, not a reassignment of Architecture Critic R2 READY or a reinterpretation of historical Project Critic R1 BLOCKED.

Repository and GitHub inspections were read-only. No repository files, refs, reports, settings or PR state were changed by this Critic. The Author advanced its candidate during review; the final subject below was explicitly supplied and its evidence delta was independently inspected. Review used exact Git objects, not an assumed branch name. A separate clone provides its own Git directory, but no OS-level security isolation is claimed. This original report is additionally preserved in an explicitly requested `/tmp` output file; that is not a repository mutation or durable Git checkpoint.

## 1. Exact subject and provenance

| Object | Verified identity |
|---|---|
| Repository / origin | `oleyna80/agentic-sdlc-lite` / `https://github.com/oleyna80/agentic-sdlc-lite.git` |
| Inspection clone | `/tmp/sdlc-issue010-r2-16sdb8xe/worktree` |
| Branch | `docs/issue-010-documentation-model-r2` |
| Final reviewed P commit | `41530894af15ecdb9347b8f39e9ee6f939f0bc16` |
| Final reviewed tree | `e95d7c8ff32d5c2f2aba4afaa369f14379e4b733` |
| Parent | `37576ee03742bf821474201501317d08bba2064a` |
| P path | `docs/projects/issue-010-documentation-model/plan.md` |
| P blob | `5b0dfb2654ed3072b655de73068b438dc4cb9b1a` |
| P content SHA-256 | `aa94c2510d7d27a4d66c3bbd9c04ceb8a3770a7f7e1a8622f89e22cf20a18e75` |
| Accepted spec source commit | `e391d09cc908e886d4e019d54987fc26d34bbb55` |
| Spec path | `docs/projects/issue-010-documentation-model/spec.md` |
| Accepted and reviewed spec blob | `a364ec0fbd21767a36820653bd851d552c8ab7a7` |
| Spec content SHA-256 | `866a3cb1ba0958cb0e19fcc392cfb5cb960837b70042c772c0778a08dc1ffa14` |
| Owner-decisions blob | `7bbdc3df819d522629dbb7d15b5195e2d246fa81` |
| Handoff blob | `8d7c0e3ecdd19d05c36acb5a01ddd40bc820d9d8` |
| Proposal R2 blob | `5480ac967f597290138466c8ae38ac275a25be46` |
| Architecture Critic R2 blob | `2901f80ac5aec310526d4b414986e857c3714e74` |
| Baseline / live main | `ec5d8efaf4a04202e0fb2ed5f1e6b536d9a78ddb` |
| Baseline tree | `d1812868ac576c36b732a51804a42a412b983b52` |

The complete baseline-to-subject diff adds exactly six planning/evidence files: `architecture-critic-r2.md`, `handoff.md`, `owner-decisions.md`, `proposal-r2.md` under `docs/changes/ISSUE-010/`, and `plan.md`, `spec.md` under `docs/projects/issue-010-documentation-model/`. No normative source file is modified. The final child `37576ee… → 41530894…` adds only 27 lines to `owner-decisions.md`: the bounded original Owner planning authorization excerpt. P and spec blobs are identical in these two commits.

The clone was clean, including staged, tracked, untracked and ignored inventory, at the final preflight. Baseline and all four historical contract commits below are ancestors of the reviewed subject.

| Historical contract | Original commit | Original blob |
|---|---|---|
| WB-LITE-002 P, `plan.md` | `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df` | `fcfda1f6dfa011a5688c5f04111d918d6bbce707` |
| WB-LITE-002 W2, `docs/changes/WB-LITE-002/work-block.md` | `63ed889d8991a5d2187bb82709f4cbb5773db1cc` | `19beb072f321a7c9730ea86630112ce8c1b90dbb` |
| ISSUE-009 P, `plan.md` | `90e4c314b27ea9b9a2575c6fddc3a4e83e7eef74` | `399b3bb96c6482d35fed93411104d04d3d191482` |
| ISSUE-009 W1, `docs/changes/ISSUE-009/work-block.md` | `80fe489458a8b3cfd290ba8f2ca000b786a9ffe5` | `5f79747f1562eea839ec1a97ba09efbbb0248275` |

## 2. Sources and approval evidence inspected

Inspected the committed P, spec, owner decisions, proposal R2, Architecture Critic R2 and handoff; applicable `AGENTS.md`, `PROJECT_BRIEF.md`, `PROJECT_MAP.md`; canonical development, memory, initialization, workspaces and security boundaries; ADR-0001 and decision guidance; intent/spec/plan/work-block/session-handoff/subagent-mission/critic-review templates; role briefs and the actual workflow. Historical P/W provisions were inspected at their original commits, particularly WB-LITE-002 W2 §9 and its finite historical formatting exception. Live Issue #10 was read through GitHub CLI.

**Exact specification acceptance is established.** The authentic Owner message supplied in this review context explicitly accepts commit `e391d09…`, the exact spec path and blob `a364ec0…`, AC-01…AC-12 and the 17-path scope, while explicitly withholding Project P approval. `owner-decisions.md`, OD-010-04, faithfully records that decision. This new direct assent closes the previous ambiguity; it does not retroactively prove the earlier OD-010-02 exchange.

Spec §1 also requires durable preservation of the original request before formal planning. The final candidate preserves the exact bounded original mission §7 excerpt alongside the exact-spec acceptance. That excerpt establishes the one-time project-local planning exception and the ordered formal gates. Its provenance is disclosed as a transcription from the authentic Owner conversation. This is sufficient for the actual requirement; signatures, identity verification and a full raw chat archive are not required.

The spec's original candidate/pending wording remains frozen historical document text. The later exact Owner decision supplies its accepted state externally; editing the accepted bytes to insert an approval would be inappropriate.

**Project P approval remains PENDING.** Architecture direction, specification acceptance, planning publication permission and this formal READY are distinct from Owner approval of exact P. The current project-local path is valid under the explicit one-time exception, despite the unmodified canonical root-plan requirement. That exception does not authorize other projects to bypass the current canonical route.

## 3. Spec-to-P conformance

| AC | Assessment of P and linked executable design |
|---|---|
| AC-01 | Covered: project-local addressing for new significant initiatives, unchanged historical root plan, coordinated 17-path migration, explicit legacy recovery. |
| AC-02 | Covered: distinct Product Brief, optional initiative intent, accepted spec, frozen P/W, mutable ROADMAP, handoff and integrated memory; ownership and update rules in proposal C3/C6 and P §§2–3. |
| AC-03 | Covered: exact repository/project/P/spec addressing, actual Owner and Critic evidence, W conformance and no latest/root/folder-scan fallback. P §5 adds the concrete R2-L01 negative obligations. |
| AC-04 | Covered: distinct IDs and paths, concurrent branches, merge-A/recover-B tests, explicit shared-file conflict and changed-base evaluation. Paths are not presented as Git or OS isolation. |
| AC-05 | Covered: immutable approved revisions, material spec/P changes repeat affected gates; W-level change within P uses new W/Stage Critic without Owner-per-W. |
| AC-06 | Covered: both historical P/W pairs, original paths/approvals/reports and original transfer exceptions retained; equal bytes or copied files do not transfer approval. |
| AC-07 | Covered: downstream semantic initialization deactivates source-project active authority/status, own repository identity/contracts required, ROADMAP optional. Existing limited CI remains limited. |
| AC-08 | Covered: mandatory independent native fresh recovery without chat, exact operational records and truthful capability STOP; actual compaction is separately conditional and cannot be inferred from replay. |
| AC-09 | Covered: routine route remains proportional, intent file not mandatory, ROADMAP cannot authorize implementation or become a routine gate. |
| AC-10 | Covered: process-as-product, harness-native execution, artifact continuity and logical-role/runtime distinction, one canonical lifecycle and no Controller/registry. |
| AC-11 | Covered: finite source/evidence paths, Markdown/links/full-diff/invariant checks, same-S independent Reviewer/Verifier and S..H mapping/current-H CI. |
| AC-12 | Covered: ADR-0002 complements unchanged ADR-0001; ROADMAP facts reverified against live integration evidence, proposed work and limits labelled honestly. |

This is conformance of the **planning contract**. It is not a claim that future implementation acceptance tests have passed.

P §3 lists exactly the accepted 17 normative paths: `AGENTS.md`, `README.md`, `PROJECT_BRIEF.md`, `PROJECT_MAP.md`, `ROADMAP.md`; development/memory/initialization canonical procedures; architecture overview; changes README; six templates (intent, spec, plan, work-block, session-handoff, subagent-mission); and `docs/decisions/0002-project-documentation-model.md`. The list agrees with the accepted spec. The separate finite evidence envelope does not grant implementation permission before W/Stage Critic. Unchanged role briefs, workspaces/security and CI are valid cross-file verification inputs rather than silently added write targets. A discovered normative dependency outside the list requires scope escalation.

## 4. Feasibility and adversarial assessment

S0/S1/S2 are implementable with current Git, GitHub Actions and native independent-agent capabilities. S0 is the exact-spec/P review and Owner gate; S1 is the coherent bounded documentation change and source assurance; S2 is evidence/delivery verification. Allowing one conforming W to cover S1/S2 does not remove their dependencies or independent checks.

The 22-test design meaningfully separates:

- Disposable Git mechanics and retained object/ancestry checks: T01/T02/T07/T08/T11/T19.
- Deliberately malformed bindings, missing gates and revision changes: T03–T06/T09/T10/T21, including wrong spec commit/path/blob, genuine acceptance of different bytes and absent/wrong initiative intent required by R2-L01.
- ROADMAP, routine and downstream semantics: T12–T14/T18/T20.
- Actual native recovery: mandatory T15 and the missing/stale checkpoint portion of T16. Unobserved real compaction remains NOT_RUN; synthetic replay cannot establish it.
- Cross-file consistency and actual source/delivery assurance: T17/T22.

Because Lite has no runtime enforcement component, a structural script cannot prove an agent obeyed a STOP. P and proposal require an actual native agent STOP or the specifically intended structural detection, before any unauthorized write, with unchanged inventories. Stage W must instantiate those exact operational records and retain source binding. This is an appropriate stage obligation, not an impossible promise or a hidden new runtime dependency.

Reviewer/Verifier independence is available through native agents in the current harness; this review itself is an independent native invocation. Future independence, permissions and fresh recovery must still be checked at W entry. This report does not assert future tool availability or that a synthetic Owner fixture is authentic approval. Stage Critic cannot replace parent approval or grant sandbox/platform rights.

Adversarial review found no second source of authority, circular approval, automatic historical migration, unnecessary mandatory intent file, roadmap approval gate, Owner-per-W gate, or implicit permission expansion. The design preserves existing changed-base, shared-writer and same-source assurance rules. It explicitly preserves WB-LITE-002's narrower historical transfer/formatting constraints instead of replacing them with general new-project rules. Material context changes cannot be justified by blob equality alone.

CFG-001 remains a known platform risk: live `main` is not protected. This planning proposal neither fixes it nor manufactures a merge waiver. Final integration remains a separate Owner decision and live preflight.

## 5. Findings and disposition

**New blocking findings: none. New mandatory rework: none.**

| Historical R1 finding | Current evidence and disposition |
|---|---|
| F1 — exact Owner assent gap | Resolved for this new candidate by direct exact-spec Owner confirmation, OD-010-04 and bounded original planning-authorization excerpt. R1 remains BLOCKED on its own original subject. |
| F2 — trailing spaces | Resolved locally: complete baseline-to-final-candidate `git diff --check` exits 0. Actual subsequent GitHub CI also succeeds. |
| F3 — stale handoff | Resolved by an explicit appended checkpoint that supersedes current-state fields, records original R1/failed CI, exact accepted spec, pending P/W gates and the next action. A checkpoint may name an observed predecessor; it need not contain its own future commit SHA. |

No claim is made that a missing historical original report was recovered by this review. The original R1 preservation remains the Orchestrator's evidence-custody action; its verdict must not be overwritten. Any formatting presentation copy must be distinguished from the retained original bytes. Architecture Critic R2 READY remains architecture evidence only.

## 6. Executed checks and numeric results

The verified absolute clone above was used for Git commands; full object contents were read with `git -C <clone> show <exact-commit>:<path>`.

| Executed inspection | Result |
|---|---|
| `rev-parse HEAD`; `remote get-url origin`; `show -s --format=%H%n%T%n%P <subject>`; `worktree list --porcelain` | Each exit 0; identities in §1. |
| `status --porcelain=v1 --untracked-files=all --ignored` | Exit 0, empty at final preflight. |
| `rev-parse <commit>:<path>` and Python SHA-256 over exact `git show` bytes | Exit 0; identities and hashes in §1. |
| `merge-base --is-ancestor <baseline> <subject>` and each of four historical P/W commits against subject | Each exit 0. |
| `diff --name-status <baseline> <subject>` | Exit 0; six added planning/evidence paths only. |
| `diff --name-status f3937c17… <subject>` | Exit 0; only P, owner-decisions and handoff changed during correction. |
| `diff 37576ee… 41530894…` | Exit 0; owner-decisions-only 27-line authorization excerpt. |
| `diff --check <baseline> <subject>` | Exit 0, no diagnostics. |
| `diff --exit-code <baseline> <subject> -- AGENTS.md plan.md memory_bank .github/workflows .githooks docs/workflow .agents/roles docs/security docs/decisions` | Exit 0, empty; protected normative paths unchanged. |
| `gh api repos/oleyna80/agentic-sdlc-lite/branches/main` | Exit 0; main `ec5d8ef…`, protection false. |
| `gh api repos/oleyna80/agentic-sdlc-lite/pulls/14` | Exit 0; OPEN/Draft, base main `ec5d8ef…`, head `41530894…`, mergeable true / clean. |
| `gh issue view 10 --repo oleyna80/agentic-sdlc-lite --json number,state,title,body,url` | Exit 0; OPEN, current issue remains contextual intent rather than approval. |
| `gh run view 39798165319 …` | Exit 0; historical FAILURE on `f3937c17…`, whitespace step failed; preceding validation steps succeeded. |
| `gh run view 39802408826 …` | Exit 0; completed SUCCESS, event pull_request, headSha `41530894…`; all job steps succeeded. |

A first `gh pr view --json …baseRefOid…` attempt exited 1 because the installed CLI does not support that field. It performed no mutation. The required exact base/head data was then obtained successfully through the read-only REST API. An earlier `gh run list --commit 41530894…` returned an empty array; this was not treated as a failure or PASS. The later exact run inspection above supplies the actual completed result.

Actual current-candidate run: [Lite Checks 39802408826](https://github.com/oleyna80/agentic-sdlc-lite/actions/runs/39802408826), completed 2026-10-22 15:11:16 UTC. This is successful planning-candidate CI, not future implementation verification or merge authorization.

## 7. NOT_RUN and limits

T01–T22 for the future normative implementation are NOT_RUN in this Project Critic mission. No native downstream initialization, intentional compaction, source Coder work, Stage Critic, implementation Reviewer/Verifier, merge or deployment was executed. Historical release assurance was inspected as provenance, not rerun or inherited as acceptance for ISSUE-010. External engineering-reference implementations were not independently tested. No write-permission probe, hook bypass or security-setting modification was performed; future actual permissions remain entry conditions.

GitHub mergeability and refs are time-sensitive observations. Current planning CI does not prove any future S/H. This READY does not imply DELIVERY_READY.

## 8. Verdict and precise next Owner gate

**READY on exact Project P commit `41530894af15ecdb9347b8f39e9ee6f939f0bc16`, plan blob `5b0dfb2654ed3072b655de73068b438dc4cb9b1a`, accepted spec blob `a364ec0fbd21767a36820653bd851d552c8ab7a7`.**

The Author may preserve this genuine independent report outside frozen P/spec, with exact subject/blob mapping and any later evidence-only HEAD mapping. Such preservation does not turn an evidence descendant into a newly reviewed P or an Owner approval.

The next human decision is **separate Owner approval or rejection of this exact Critic-READY P**, including its 17-path source scope and proposed finite delegated planning/implementation/evidence permissions. No further identity confirmation or repeat specification acceptance is required for the unchanged accepted spec. Ordinary already-authorized planning corrections and evidence preservation do not need per-edit Owner approval.

Only after actual exact-P approval may the Orchestrator prepare committed conforming W, obtain independent Stage Critic READY, verify actual permissions and launch a bounded Coder. Normative implementation, final acceptance/merge, deployment and changes outside scope remain unauthorized now.

### R2 exact original response — base64

```base64
IyBJbmRlcGVuZGVudCBGb3JtYWwgUHJvamVjdCBDcml0aWMgUjIg4oCUIElTU1VFLTAxMAoKKipW
ZXJkaWN0OiBSRUFEWSDigJQgc3VpdGFibGUgZm9yIHNlcGFyYXRlIE93bmVyIGV4YWN0LVAgYXBw
cm92YWwuKioKCioqRGF0ZToqKiAyMDI2LTEwLTIyLiAqKkluZGVwZW5kZW50IG5hdGl2ZSBhZ2Vu
dDoqKiBgL3Jvb3QvaXNzdWUwMTBfZm9ybWFsX3Byb2plY3RfY3JpdGljX3IyYC4gKipSb2xlOioq
IGZvcm1hbCBQcm9qZWN0IENyaXRpYywgaW5kZXBlbmRlbnQgb2YgQXV0aG9yLCBDb2RlciBhbmQg
T3duZXIuIFRoaXMgaXMgYSBuZXcgcmV2aWV3IG9mIHRoZSBjb3JyZWN0ZWQgY29tbWl0dGVkIGNh
bmRpZGF0ZSwgbm90IGEgcmVhc3NpZ25tZW50IG9mIEFyY2hpdGVjdHVyZSBDcml0aWMgUjIgUkVB
RFkgb3IgYSByZWludGVycHJldGF0aW9uIG9mIGhpc3RvcmljYWwgUHJvamVjdCBDcml0aWMgUjEg
QkxPQ0tFRC4KClJlcG9zaXRvcnkgYW5kIEdpdEh1YiBpbnNwZWN0aW9ucyB3ZXJlIHJlYWQtb25s
eS4gTm8gcmVwb3NpdG9yeSBmaWxlcywgcmVmcywgcmVwb3J0cywgc2V0dGluZ3Mgb3IgUFIgc3Rh
dGUgd2VyZSBjaGFuZ2VkIGJ5IHRoaXMgQ3JpdGljLiBUaGUgQXV0aG9yIGFkdmFuY2VkIGl0cyBj
YW5kaWRhdGUgZHVyaW5nIHJldmlldzsgdGhlIGZpbmFsIHN1YmplY3QgYmVsb3cgd2FzIGV4cGxp
Y2l0bHkgc3VwcGxpZWQgYW5kIGl0cyBldmlkZW5jZSBkZWx0YSB3YXMgaW5kZXBlbmRlbnRseSBp
bnNwZWN0ZWQuIFJldmlldyB1c2VkIGV4YWN0IEdpdCBvYmplY3RzLCBub3QgYW4gYXNzdW1lZCBi
cmFuY2ggbmFtZS4gQSBzZXBhcmF0ZSBjbG9uZSBwcm92aWRlcyBpdHMgb3duIEdpdCBkaXJlY3Rv
cnksIGJ1dCBubyBPUy1sZXZlbCBzZWN1cml0eSBpc29sYXRpb24gaXMgY2xhaW1lZC4gVGhpcyBv
cmlnaW5hbCByZXBvcnQgaXMgYWRkaXRpb25hbGx5IHByZXNlcnZlZCBpbiBhbiBleHBsaWNpdGx5
IHJlcXVlc3RlZCBgL3RtcGAgb3V0cHV0IGZpbGU7IHRoYXQgaXMgbm90IGEgcmVwb3NpdG9yeSBt
dXRhdGlvbiBvciBkdXJhYmxlIEdpdCBjaGVja3BvaW50LgoKIyMgMS4gRXhhY3Qgc3ViamVjdCBh
bmQgcHJvdmVuYW5jZQoKfCBPYmplY3QgfCBWZXJpZmllZCBpZGVudGl0eSB8CnwtLS18LS0tfAp8
IFJlcG9zaXRvcnkgLyBvcmlnaW4gfCBgb2xleW5hODAvYWdlbnRpYy1zZGxjLWxpdGVgIC8gYGh0
dHBzOi8vZ2l0aHViLmNvbS9vbGV5bmE4MC9hZ2VudGljLXNkbGMtbGl0ZS5naXRgIHwKfCBJbnNw
ZWN0aW9uIGNsb25lIHwgYC90bXAvc2RsYy1pc3N1ZTAxMC1yMi0xNnNkYjh4ZS93b3JrdHJlZWAg
fAp8IEJyYW5jaCB8IGBkb2NzL2lzc3VlLTAxMC1kb2N1bWVudGF0aW9uLW1vZGVsLXIyYCB8Cnwg
RmluYWwgcmV2aWV3ZWQgUCBjb21taXQgfCBgNDE1MzA4OTRhZjE1ZWNkYjkzNDdiOGYzOWU5ZWU2
ZjkzOWYwYmMxNmAgfAp8IEZpbmFsIHJldmlld2VkIHRyZWUgfCBgZTk1ZDdjOGZmMzJkNWMyZjJh
YmE0YWZhYTM2OWYxNDM3OWU0YjczM2AgfAp8IFBhcmVudCB8IGAzNzU3NmVlMDM3NDJiZjgyMTQ3
NDIwMTUwMTMxN2QwOGJiYTIwNjRhYCB8CnwgUCBwYXRoIHwgYGRvY3MvcHJvamVjdHMvaXNzdWUt
MDEwLWRvY3VtZW50YXRpb24tbW9kZWwvcGxhbi5tZGAgfAp8IFAgYmxvYiB8IGA1YjBkZmIyNjU0
ZWQzMDcyYjY1NWRlNzMwNjhiNDM4ZGM0Y2I5YjFhYCB8CnwgUCBjb250ZW50IFNIQS0yNTYgfCBg
YWE5NGMyNTEwZDdkMjdhNGQ2NmMzYmJkOWMwNGNlYjhhMzc3MGE3ZjdlMWE4NjIyZjg5ZTIyY2Yy
MGExOGU3NWAgfAp8IEFjY2VwdGVkIHNwZWMgc291cmNlIGNvbW1pdCB8IGBlMzkxZDA5Y2M5MDhl
ODg2ZDRlMDE5ZDU0OTg3ZmMyNmQzNGJiYjU1YCB8CnwgU3BlYyBwYXRoIHwgYGRvY3MvcHJvamVj
dHMvaXNzdWUtMDEwLWRvY3VtZW50YXRpb24tbW9kZWwvc3BlYy5tZGAgfAp8IEFjY2VwdGVkIGFu
ZCByZXZpZXdlZCBzcGVjIGJsb2IgfCBgYTM2NGVjMGZiZDIxNzY3YTM2ODIwNjUzYmQ4NTFkNTUy
YzhhYjdhN2AgfAp8IFNwZWMgY29udGVudCBTSEEtMjU2IHwgYDg2NmEzY2IxYmEwOTU4Y2IwZTE5
ZmNjMzkyY2ZiNWNiOTYwODM3YjcwMDQyYzc3MmMwNzc4YTA4ZGMxZmZhMTRgIHwKfCBPd25lci1k
ZWNpc2lvbnMgYmxvYiB8IGA3YmJkYzNkZjgxOWQ1MjI2MjlkYmI3ZDE1YjUxOTVlMmQyNDZmYTgx
YCB8CnwgSGFuZG9mZiBibG9iIHwgYDhkN2MwZTNlY2RkMTlkMDVjMzZhY2I1YTAxZGRkNDBiYzgy
MGQ5ZDhgIHwKfCBQcm9wb3NhbCBSMiBibG9iIHwgYDU0ODBhYzk2N2Y1OTcyOTAxMzg0NjZjOGFl
MzhhYzI3NWEyNWJlNDZgIHwKfCBBcmNoaXRlY3R1cmUgQ3JpdGljIFIyIGJsb2IgfCBgMjkwMWY4
MGFjNWFlYzMxMDUyNmQ0YjQxNDk4NmU4NTdjMzcxNGU3NGAgfAp8IEJhc2VsaW5lIC8gbGl2ZSBt
YWluIHwgYGVjNWQ4ZWZhZjRhMDQyMDJlMGZiMmVkNWYxZTZiNTM2ZDlhNzhkZGJgIHwKfCBCYXNl
bGluZSB0cmVlIHwgYGQxODEyODY4YWM1NzZjMzZiNzMyYTUxODA0YTQyYTQxMmI5ODNiNTJgIHwK
ClRoZSBjb21wbGV0ZSBiYXNlbGluZS10by1zdWJqZWN0IGRpZmYgYWRkcyBleGFjdGx5IHNpeCBw
bGFubmluZy9ldmlkZW5jZSBmaWxlczogYGFyY2hpdGVjdHVyZS1jcml0aWMtcjIubWRgLCBgaGFu
ZG9mZi5tZGAsIGBvd25lci1kZWNpc2lvbnMubWRgLCBgcHJvcG9zYWwtcjIubWRgIHVuZGVyIGBk
b2NzL2NoYW5nZXMvSVNTVUUtMDEwL2AsIGFuZCBgcGxhbi5tZGAsIGBzcGVjLm1kYCB1bmRlciBg
ZG9jcy9wcm9qZWN0cy9pc3N1ZS0wMTAtZG9jdW1lbnRhdGlvbi1tb2RlbC9gLiBObyBub3JtYXRp
dmUgc291cmNlIGZpbGUgaXMgbW9kaWZpZWQuIFRoZSBmaW5hbCBjaGlsZCBgMzc1NzZlZeKApiDi
hpIgNDE1MzA4OTTigKZgIGFkZHMgb25seSAyNyBsaW5lcyB0byBgb3duZXItZGVjaXNpb25zLm1k
YDogdGhlIGJvdW5kZWQgb3JpZ2luYWwgT3duZXIgcGxhbm5pbmcgYXV0aG9yaXphdGlvbiBleGNl
cnB0LiBQIGFuZCBzcGVjIGJsb2JzIGFyZSBpZGVudGljYWwgaW4gdGhlc2UgdHdvIGNvbW1pdHMu
CgpUaGUgY2xvbmUgd2FzIGNsZWFuLCBpbmNsdWRpbmcgc3RhZ2VkLCB0cmFja2VkLCB1bnRyYWNr
ZWQgYW5kIGlnbm9yZWQgaW52ZW50b3J5LCBhdCB0aGUgZmluYWwgcHJlZmxpZ2h0LiBCYXNlbGlu
ZSBhbmQgYWxsIGZvdXIgaGlzdG9yaWNhbCBjb250cmFjdCBjb21taXRzIGJlbG93IGFyZSBhbmNl
c3RvcnMgb2YgdGhlIHJldmlld2VkIHN1YmplY3QuCgp8IEhpc3RvcmljYWwgY29udHJhY3QgfCBP
cmlnaW5hbCBjb21taXQgfCBPcmlnaW5hbCBibG9iIHwKfC0tLXwtLS18LS0tfAp8IFdCLUxJVEUt
MDAyIFAsIGBwbGFuLm1kYCB8IGBiNGNiYzM3ZTZiYzMxOGE1YjI4ZjRkYjhjYmVhYWZkMzY2M2M2
MGRmYCB8IGBmY2ZkYTFmNmRmYTAxMWE1Njg4YzVmMDQxMTFkOTE4ZDZiYmNlNzA3YCB8CnwgV0It
TElURS0wMDIgVzIsIGBkb2NzL2NoYW5nZXMvV0ItTElURS0wMDIvd29yay1ibG9jay5tZGAgfCBg
NjNlZDg4OWQ4OTkxYTVkMjE4N2JiODI3MDlmNGNiYjU3NzNkYjFjY2AgfCBgMTliZWIwNzJmMzIx
YTdjOTczMGVhODY2MzAxMTJjZThjMWI5MGRiYmAgfAp8IElTU1VFLTAwOSBQLCBgcGxhbi5tZGAg
fCBgOTBlNGMzMTRiMjdlYTliOWEyNTc1YzZmZGRjM2E0ZTgzZTdlZWY3NGAgfCBgMzk5YjNiYjk2
YzY0ODJkMzVmZWQ5MzQxMTEwNGQwNGQzZDE5MTQ4MmAgfAp8IElTU1VFLTAwOSBXMSwgYGRvY3Mv
Y2hhbmdlcy9JU1NVRS0wMDkvd29yay1ibG9jay5tZGAgfCBgODBmZTQ4OTQ1OGE4YjNjZmQyOTBi
YThmMmNhMDAwYjc4NmE5ZmZlNWAgfCBgNWY3OTc0N2YxNTYyZWVhODM5ZWMxYTk3YmEwOWVmYmJi
MDI0ODI3NWAgfAoKIyMgMi4gU291cmNlcyBhbmQgYXBwcm92YWwgZXZpZGVuY2UgaW5zcGVjdGVk
CgpJbnNwZWN0ZWQgdGhlIGNvbW1pdHRlZCBQLCBzcGVjLCBvd25lciBkZWNpc2lvbnMsIHByb3Bv
c2FsIFIyLCBBcmNoaXRlY3R1cmUgQ3JpdGljIFIyIGFuZCBoYW5kb2ZmOyBhcHBsaWNhYmxlIGBB
R0VOVFMubWRgLCBgUFJPSkVDVF9CUklFRi5tZGAsIGBQUk9KRUNUX01BUC5tZGA7IGNhbm9uaWNh
bCBkZXZlbG9wbWVudCwgbWVtb3J5LCBpbml0aWFsaXphdGlvbiwgd29ya3NwYWNlcyBhbmQgc2Vj
dXJpdHkgYm91bmRhcmllczsgQURSLTAwMDEgYW5kIGRlY2lzaW9uIGd1aWRhbmNlOyBpbnRlbnQv
c3BlYy9wbGFuL3dvcmstYmxvY2svc2Vzc2lvbi1oYW5kb2ZmL3N1YmFnZW50LW1pc3Npb24vY3Jp
dGljLXJldmlldyB0ZW1wbGF0ZXM7IHJvbGUgYnJpZWZzIGFuZCB0aGUgYWN0dWFsIHdvcmtmbG93
LiBIaXN0b3JpY2FsIFAvVyBwcm92aXNpb25zIHdlcmUgaW5zcGVjdGVkIGF0IHRoZWlyIG9yaWdp
bmFsIGNvbW1pdHMsIHBhcnRpY3VsYXJseSBXQi1MSVRFLTAwMiBXMiDCpzkgYW5kIGl0cyBmaW5p
dGUgaGlzdG9yaWNhbCBmb3JtYXR0aW5nIGV4Y2VwdGlvbi4gTGl2ZSBJc3N1ZSAjMTAgd2FzIHJl
YWQgdGhyb3VnaCBHaXRIdWIgQ0xJLgoKKipFeGFjdCBzcGVjaWZpY2F0aW9uIGFjY2VwdGFuY2Ug
aXMgZXN0YWJsaXNoZWQuKiogVGhlIGF1dGhlbnRpYyBPd25lciBtZXNzYWdlIHN1cHBsaWVkIGlu
IHRoaXMgcmV2aWV3IGNvbnRleHQgZXhwbGljaXRseSBhY2NlcHRzIGNvbW1pdCBgZTM5MWQwOeKA
pmAsIHRoZSBleGFjdCBzcGVjIHBhdGggYW5kIGJsb2IgYGEzNjRlYzDigKZgLCBBQy0wMeKApkFD
LTEyIGFuZCB0aGUgMTctcGF0aCBzY29wZSwgd2hpbGUgZXhwbGljaXRseSB3aXRoaG9sZGluZyBQ
cm9qZWN0IFAgYXBwcm92YWwuIGBvd25lci1kZWNpc2lvbnMubWRgLCBPRC0wMTAtMDQsIGZhaXRo
ZnVsbHkgcmVjb3JkcyB0aGF0IGRlY2lzaW9uLiBUaGlzIG5ldyBkaXJlY3QgYXNzZW50IGNsb3Nl
cyB0aGUgcHJldmlvdXMgYW1iaWd1aXR5OyBpdCBkb2VzIG5vdCByZXRyb2FjdGl2ZWx5IHByb3Zl
IHRoZSBlYXJsaWVyIE9ELTAxMC0wMiBleGNoYW5nZS4KClNwZWMgwqcxIGFsc28gcmVxdWlyZXMg
ZHVyYWJsZSBwcmVzZXJ2YXRpb24gb2YgdGhlIG9yaWdpbmFsIHJlcXVlc3QgYmVmb3JlIGZvcm1h
bCBwbGFubmluZy4gVGhlIGZpbmFsIGNhbmRpZGF0ZSBwcmVzZXJ2ZXMgdGhlIGV4YWN0IGJvdW5k
ZWQgb3JpZ2luYWwgbWlzc2lvbiDCpzcgZXhjZXJwdCBhbG9uZ3NpZGUgdGhlIGV4YWN0LXNwZWMg
YWNjZXB0YW5jZS4gVGhhdCBleGNlcnB0IGVzdGFibGlzaGVzIHRoZSBvbmUtdGltZSBwcm9qZWN0
LWxvY2FsIHBsYW5uaW5nIGV4Y2VwdGlvbiBhbmQgdGhlIG9yZGVyZWQgZm9ybWFsIGdhdGVzLiBJ
dHMgcHJvdmVuYW5jZSBpcyBkaXNjbG9zZWQgYXMgYSB0cmFuc2NyaXB0aW9uIGZyb20gdGhlIGF1
dGhlbnRpYyBPd25lciBjb252ZXJzYXRpb24uIFRoaXMgaXMgc3VmZmljaWVudCBmb3IgdGhlIGFj
dHVhbCByZXF1aXJlbWVudDsgc2lnbmF0dXJlcywgaWRlbnRpdHkgdmVyaWZpY2F0aW9uIGFuZCBh
IGZ1bGwgcmF3IGNoYXQgYXJjaGl2ZSBhcmUgbm90IHJlcXVpcmVkLgoKVGhlIHNwZWMncyBvcmln
aW5hbCBjYW5kaWRhdGUvcGVuZGluZyB3b3JkaW5nIHJlbWFpbnMgZnJvemVuIGhpc3RvcmljYWwg
ZG9jdW1lbnQgdGV4dC4gVGhlIGxhdGVyIGV4YWN0IE93bmVyIGRlY2lzaW9uIHN1cHBsaWVzIGl0
cyBhY2NlcHRlZCBzdGF0ZSBleHRlcm5hbGx5OyBlZGl0aW5nIHRoZSBhY2NlcHRlZCBieXRlcyB0
byBpbnNlcnQgYW4gYXBwcm92YWwgd291bGQgYmUgaW5hcHByb3ByaWF0ZS4KCioqUHJvamVjdCBQ
IGFwcHJvdmFsIHJlbWFpbnMgUEVORElORy4qKiBBcmNoaXRlY3R1cmUgZGlyZWN0aW9uLCBzcGVj
aWZpY2F0aW9uIGFjY2VwdGFuY2UsIHBsYW5uaW5nIHB1YmxpY2F0aW9uIHBlcm1pc3Npb24gYW5k
IHRoaXMgZm9ybWFsIFJFQURZIGFyZSBkaXN0aW5jdCBmcm9tIE93bmVyIGFwcHJvdmFsIG9mIGV4
YWN0IFAuIFRoZSBjdXJyZW50IHByb2plY3QtbG9jYWwgcGF0aCBpcyB2YWxpZCB1bmRlciB0aGUg
ZXhwbGljaXQgb25lLXRpbWUgZXhjZXB0aW9uLCBkZXNwaXRlIHRoZSB1bm1vZGlmaWVkIGNhbm9u
aWNhbCByb290LXBsYW4gcmVxdWlyZW1lbnQuIFRoYXQgZXhjZXB0aW9uIGRvZXMgbm90IGF1dGhv
cml6ZSBvdGhlciBwcm9qZWN0cyB0byBieXBhc3MgdGhlIGN1cnJlbnQgY2Fub25pY2FsIHJvdXRl
LgoKIyMgMy4gU3BlYy10by1QIGNvbmZvcm1hbmNlCgp8IEFDIHwgQXNzZXNzbWVudCBvZiBQIGFu
ZCBsaW5rZWQgZXhlY3V0YWJsZSBkZXNpZ24gfAp8LS0tfC0tLXwKfCBBQy0wMSB8IENvdmVyZWQ6
IHByb2plY3QtbG9jYWwgYWRkcmVzc2luZyBmb3IgbmV3IHNpZ25pZmljYW50IGluaXRpYXRpdmVz
LCB1bmNoYW5nZWQgaGlzdG9yaWNhbCByb290IHBsYW4sIGNvb3JkaW5hdGVkIDE3LXBhdGggbWln
cmF0aW9uLCBleHBsaWNpdCBsZWdhY3kgcmVjb3ZlcnkuIHwKfCBBQy0wMiB8IENvdmVyZWQ6IGRp
c3RpbmN0IFByb2R1Y3QgQnJpZWYsIG9wdGlvbmFsIGluaXRpYXRpdmUgaW50ZW50LCBhY2NlcHRl
ZCBzcGVjLCBmcm96ZW4gUC9XLCBtdXRhYmxlIFJPQURNQVAsIGhhbmRvZmYgYW5kIGludGVncmF0
ZWQgbWVtb3J5OyBvd25lcnNoaXAgYW5kIHVwZGF0ZSBydWxlcyBpbiBwcm9wb3NhbCBDMy9DNiBh
bmQgUCDCp8KnMuKAkzMuIHwKfCBBQy0wMyB8IENvdmVyZWQ6IGV4YWN0IHJlcG9zaXRvcnkvcHJv
amVjdC9QL3NwZWMgYWRkcmVzc2luZywgYWN0dWFsIE93bmVyIGFuZCBDcml0aWMgZXZpZGVuY2Us
IFcgY29uZm9ybWFuY2UgYW5kIG5vIGxhdGVzdC9yb290L2ZvbGRlci1zY2FuIGZhbGxiYWNrLiBQ
IMKnNSBhZGRzIHRoZSBjb25jcmV0ZSBSMi1MMDEgbmVnYXRpdmUgb2JsaWdhdGlvbnMuIHwKfCBB
Qy0wNCB8IENvdmVyZWQ6IGRpc3RpbmN0IElEcyBhbmQgcGF0aHMsIGNvbmN1cnJlbnQgYnJhbmNo
ZXMsIG1lcmdlLUEvcmVjb3Zlci1CIHRlc3RzLCBleHBsaWNpdCBzaGFyZWQtZmlsZSBjb25mbGlj
dCBhbmQgY2hhbmdlZC1iYXNlIGV2YWx1YXRpb24uIFBhdGhzIGFyZSBub3QgcHJlc2VudGVkIGFz
IEdpdCBvciBPUyBpc29sYXRpb24uIHwKfCBBQy0wNSB8IENvdmVyZWQ6IGltbXV0YWJsZSBhcHBy
b3ZlZCByZXZpc2lvbnMsIG1hdGVyaWFsIHNwZWMvUCBjaGFuZ2VzIHJlcGVhdCBhZmZlY3RlZCBn
YXRlczsgVy1sZXZlbCBjaGFuZ2Ugd2l0aGluIFAgdXNlcyBuZXcgVy9TdGFnZSBDcml0aWMgd2l0
aG91dCBPd25lci1wZXItVy4gfAp8IEFDLTA2IHwgQ292ZXJlZDogYm90aCBoaXN0b3JpY2FsIFAv
VyBwYWlycywgb3JpZ2luYWwgcGF0aHMvYXBwcm92YWxzL3JlcG9ydHMgYW5kIG9yaWdpbmFsIHRy
YW5zZmVyIGV4Y2VwdGlvbnMgcmV0YWluZWQ7IGVxdWFsIGJ5dGVzIG9yIGNvcGllZCBmaWxlcyBk
byBub3QgdHJhbnNmZXIgYXBwcm92YWwuIHwKfCBBQy0wNyB8IENvdmVyZWQ6IGRvd25zdHJlYW0g
c2VtYW50aWMgaW5pdGlhbGl6YXRpb24gZGVhY3RpdmF0ZXMgc291cmNlLXByb2plY3QgYWN0aXZl
IGF1dGhvcml0eS9zdGF0dXMsIG93biByZXBvc2l0b3J5IGlkZW50aXR5L2NvbnRyYWN0cyByZXF1
aXJlZCwgUk9BRE1BUCBvcHRpb25hbC4gRXhpc3RpbmcgbGltaXRlZCBDSSByZW1haW5zIGxpbWl0
ZWQuIHwKfCBBQy0wOCB8IENvdmVyZWQ6IG1hbmRhdG9yeSBpbmRlcGVuZGVudCBuYXRpdmUgZnJl
c2ggcmVjb3Zlcnkgd2l0aG91dCBjaGF0LCBleGFjdCBvcGVyYXRpb25hbCByZWNvcmRzIGFuZCB0
cnV0aGZ1bCBjYXBhYmlsaXR5IFNUT1A7IGFjdHVhbCBjb21wYWN0aW9uIGlzIHNlcGFyYXRlbHkg
Y29uZGl0aW9uYWwgYW5kIGNhbm5vdCBiZSBpbmZlcnJlZCBmcm9tIHJlcGxheS4gfAp8IEFDLTA5
IHwgQ292ZXJlZDogcm91dGluZSByb3V0ZSByZW1haW5zIHByb3BvcnRpb25hbCwgaW50ZW50IGZp
bGUgbm90IG1hbmRhdG9yeSwgUk9BRE1BUCBjYW5ub3QgYXV0aG9yaXplIGltcGxlbWVudGF0aW9u
IG9yIGJlY29tZSBhIHJvdXRpbmUgZ2F0ZS4gfAp8IEFDLTEwIHwgQ292ZXJlZDogcHJvY2Vzcy1h
cy1wcm9kdWN0LCBoYXJuZXNzLW5hdGl2ZSBleGVjdXRpb24sIGFydGlmYWN0IGNvbnRpbnVpdHkg
YW5kIGxvZ2ljYWwtcm9sZS9ydW50aW1lIGRpc3RpbmN0aW9uLCBvbmUgY2Fub25pY2FsIGxpZmVj
eWNsZSBhbmQgbm8gQ29udHJvbGxlci9yZWdpc3RyeS4gfAp8IEFDLTExIHwgQ292ZXJlZDogZmlu
aXRlIHNvdXJjZS9ldmlkZW5jZSBwYXRocywgTWFya2Rvd24vbGlua3MvZnVsbC1kaWZmL2ludmFy
aWFudCBjaGVja3MsIHNhbWUtUyBpbmRlcGVuZGVudCBSZXZpZXdlci9WZXJpZmllciBhbmQgUy4u
SCBtYXBwaW5nL2N1cnJlbnQtSCBDSS4gfAp8IEFDLTEyIHwgQ292ZXJlZDogQURSLTAwMDIgY29t
cGxlbWVudHMgdW5jaGFuZ2VkIEFEUi0wMDAxOyBST0FETUFQIGZhY3RzIHJldmVyaWZpZWQgYWdh
aW5zdCBsaXZlIGludGVncmF0aW9uIGV2aWRlbmNlLCBwcm9wb3NlZCB3b3JrIGFuZCBsaW1pdHMg
bGFiZWxsZWQgaG9uZXN0bHkuIHwKClRoaXMgaXMgY29uZm9ybWFuY2Ugb2YgdGhlICoqcGxhbm5p
bmcgY29udHJhY3QqKi4gSXQgaXMgbm90IGEgY2xhaW0gdGhhdCBmdXR1cmUgaW1wbGVtZW50YXRp
b24gYWNjZXB0YW5jZSB0ZXN0cyBoYXZlIHBhc3NlZC4KClAgwqczIGxpc3RzIGV4YWN0bHkgdGhl
IGFjY2VwdGVkIDE3IG5vcm1hdGl2ZSBwYXRoczogYEFHRU5UUy5tZGAsIGBSRUFETUUubWRgLCBg
UFJPSkVDVF9CUklFRi5tZGAsIGBQUk9KRUNUX01BUC5tZGAsIGBST0FETUFQLm1kYDsgZGV2ZWxv
cG1lbnQvbWVtb3J5L2luaXRpYWxpemF0aW9uIGNhbm9uaWNhbCBwcm9jZWR1cmVzOyBhcmNoaXRl
Y3R1cmUgb3ZlcnZpZXc7IGNoYW5nZXMgUkVBRE1FOyBzaXggdGVtcGxhdGVzIChpbnRlbnQsIHNw
ZWMsIHBsYW4sIHdvcmstYmxvY2ssIHNlc3Npb24taGFuZG9mZiwgc3ViYWdlbnQtbWlzc2lvbik7
IGFuZCBgZG9jcy9kZWNpc2lvbnMvMDAwMi1wcm9qZWN0LWRvY3VtZW50YXRpb24tbW9kZWwubWRg
LiBUaGUgbGlzdCBhZ3JlZXMgd2l0aCB0aGUgYWNjZXB0ZWQgc3BlYy4gVGhlIHNlcGFyYXRlIGZp
bml0ZSBldmlkZW5jZSBlbnZlbG9wZSBkb2VzIG5vdCBncmFudCBpbXBsZW1lbnRhdGlvbiBwZXJt
aXNzaW9uIGJlZm9yZSBXL1N0YWdlIENyaXRpYy4gVW5jaGFuZ2VkIHJvbGUgYnJpZWZzLCB3b3Jr
c3BhY2VzL3NlY3VyaXR5IGFuZCBDSSBhcmUgdmFsaWQgY3Jvc3MtZmlsZSB2ZXJpZmljYXRpb24g
aW5wdXRzIHJhdGhlciB0aGFuIHNpbGVudGx5IGFkZGVkIHdyaXRlIHRhcmdldHMuIEEgZGlzY292
ZXJlZCBub3JtYXRpdmUgZGVwZW5kZW5jeSBvdXRzaWRlIHRoZSBsaXN0IHJlcXVpcmVzIHNjb3Bl
IGVzY2FsYXRpb24uCgojIyA0LiBGZWFzaWJpbGl0eSBhbmQgYWR2ZXJzYXJpYWwgYXNzZXNzbWVu
dAoKUzAvUzEvUzIgYXJlIGltcGxlbWVudGFibGUgd2l0aCBjdXJyZW50IEdpdCwgR2l0SHViIEFj
dGlvbnMgYW5kIG5hdGl2ZSBpbmRlcGVuZGVudC1hZ2VudCBjYXBhYmlsaXRpZXMuIFMwIGlzIHRo
ZSBleGFjdC1zcGVjL1AgcmV2aWV3IGFuZCBPd25lciBnYXRlOyBTMSBpcyB0aGUgY29oZXJlbnQg
Ym91bmRlZCBkb2N1bWVudGF0aW9uIGNoYW5nZSBhbmQgc291cmNlIGFzc3VyYW5jZTsgUzIgaXMg
ZXZpZGVuY2UvZGVsaXZlcnkgdmVyaWZpY2F0aW9uLiBBbGxvd2luZyBvbmUgY29uZm9ybWluZyBX
IHRvIGNvdmVyIFMxL1MyIGRvZXMgbm90IHJlbW92ZSB0aGVpciBkZXBlbmRlbmNpZXMgb3IgaW5k
ZXBlbmRlbnQgY2hlY2tzLgoKVGhlIDIyLXRlc3QgZGVzaWduIG1lYW5pbmdmdWxseSBzZXBhcmF0
ZXM6CgotIERpc3Bvc2FibGUgR2l0IG1lY2hhbmljcyBhbmQgcmV0YWluZWQgb2JqZWN0L2FuY2Vz
dHJ5IGNoZWNrczogVDAxL1QwMi9UMDcvVDA4L1QxMS9UMTkuCi0gRGVsaWJlcmF0ZWx5IG1hbGZv
cm1lZCBiaW5kaW5ncywgbWlzc2luZyBnYXRlcyBhbmQgcmV2aXNpb24gY2hhbmdlczogVDAz4oCT
VDA2L1QwOS9UMTAvVDIxLCBpbmNsdWRpbmcgd3Jvbmcgc3BlYyBjb21taXQvcGF0aC9ibG9iLCBn
ZW51aW5lIGFjY2VwdGFuY2Ugb2YgZGlmZmVyZW50IGJ5dGVzIGFuZCBhYnNlbnQvd3JvbmcgaW5p
dGlhdGl2ZSBpbnRlbnQgcmVxdWlyZWQgYnkgUjItTDAxLgotIFJPQURNQVAsIHJvdXRpbmUgYW5k
IGRvd25zdHJlYW0gc2VtYW50aWNzOiBUMTLigJNUMTQvVDE4L1QyMC4KLSBBY3R1YWwgbmF0aXZl
IHJlY292ZXJ5OiBtYW5kYXRvcnkgVDE1IGFuZCB0aGUgbWlzc2luZy9zdGFsZSBjaGVja3BvaW50
IHBvcnRpb24gb2YgVDE2LiBVbm9ic2VydmVkIHJlYWwgY29tcGFjdGlvbiByZW1haW5zIE5PVF9S
VU47IHN5bnRoZXRpYyByZXBsYXkgY2Fubm90IGVzdGFibGlzaCBpdC4KLSBDcm9zcy1maWxlIGNv
bnNpc3RlbmN5IGFuZCBhY3R1YWwgc291cmNlL2RlbGl2ZXJ5IGFzc3VyYW5jZTogVDE3L1QyMi4K
CkJlY2F1c2UgTGl0ZSBoYXMgbm8gcnVudGltZSBlbmZvcmNlbWVudCBjb21wb25lbnQsIGEgc3Ry
dWN0dXJhbCBzY3JpcHQgY2Fubm90IHByb3ZlIGFuIGFnZW50IG9iZXllZCBhIFNUT1AuIFAgYW5k
IHByb3Bvc2FsIHJlcXVpcmUgYW4gYWN0dWFsIG5hdGl2ZSBhZ2VudCBTVE9QIG9yIHRoZSBzcGVj
aWZpY2FsbHkgaW50ZW5kZWQgc3RydWN0dXJhbCBkZXRlY3Rpb24sIGJlZm9yZSBhbnkgdW5hdXRo
b3JpemVkIHdyaXRlLCB3aXRoIHVuY2hhbmdlZCBpbnZlbnRvcmllcy4gU3RhZ2UgVyBtdXN0IGlu
c3RhbnRpYXRlIHRob3NlIGV4YWN0IG9wZXJhdGlvbmFsIHJlY29yZHMgYW5kIHJldGFpbiBzb3Vy
Y2UgYmluZGluZy4gVGhpcyBpcyBhbiBhcHByb3ByaWF0ZSBzdGFnZSBvYmxpZ2F0aW9uLCBub3Qg
YW4gaW1wb3NzaWJsZSBwcm9taXNlIG9yIGEgaGlkZGVuIG5ldyBydW50aW1lIGRlcGVuZGVuY3ku
CgpSZXZpZXdlci9WZXJpZmllciBpbmRlcGVuZGVuY2UgaXMgYXZhaWxhYmxlIHRocm91Z2ggbmF0
aXZlIGFnZW50cyBpbiB0aGUgY3VycmVudCBoYXJuZXNzOyB0aGlzIHJldmlldyBpdHNlbGYgaXMg
YW4gaW5kZXBlbmRlbnQgbmF0aXZlIGludm9jYXRpb24uIEZ1dHVyZSBpbmRlcGVuZGVuY2UsIHBl
cm1pc3Npb25zIGFuZCBmcmVzaCByZWNvdmVyeSBtdXN0IHN0aWxsIGJlIGNoZWNrZWQgYXQgVyBl
bnRyeS4gVGhpcyByZXBvcnQgZG9lcyBub3QgYXNzZXJ0IGZ1dHVyZSB0b29sIGF2YWlsYWJpbGl0
eSBvciB0aGF0IGEgc3ludGhldGljIE93bmVyIGZpeHR1cmUgaXMgYXV0aGVudGljIGFwcHJvdmFs
LiBTdGFnZSBDcml0aWMgY2Fubm90IHJlcGxhY2UgcGFyZW50IGFwcHJvdmFsIG9yIGdyYW50IHNh
bmRib3gvcGxhdGZvcm0gcmlnaHRzLgoKQWR2ZXJzYXJpYWwgcmV2aWV3IGZvdW5kIG5vIHNlY29u
ZCBzb3VyY2Ugb2YgYXV0aG9yaXR5LCBjaXJjdWxhciBhcHByb3ZhbCwgYXV0b21hdGljIGhpc3Rv
cmljYWwgbWlncmF0aW9uLCB1bm5lY2Vzc2FyeSBtYW5kYXRvcnkgaW50ZW50IGZpbGUsIHJvYWRt
YXAgYXBwcm92YWwgZ2F0ZSwgT3duZXItcGVyLVcgZ2F0ZSwgb3IgaW1wbGljaXQgcGVybWlzc2lv
biBleHBhbnNpb24uIFRoZSBkZXNpZ24gcHJlc2VydmVzIGV4aXN0aW5nIGNoYW5nZWQtYmFzZSwg
c2hhcmVkLXdyaXRlciBhbmQgc2FtZS1zb3VyY2UgYXNzdXJhbmNlIHJ1bGVzLiBJdCBleHBsaWNp
dGx5IHByZXNlcnZlcyBXQi1MSVRFLTAwMidzIG5hcnJvd2VyIGhpc3RvcmljYWwgdHJhbnNmZXIv
Zm9ybWF0dGluZyBjb25zdHJhaW50cyBpbnN0ZWFkIG9mIHJlcGxhY2luZyB0aGVtIHdpdGggZ2Vu
ZXJhbCBuZXctcHJvamVjdCBydWxlcy4gTWF0ZXJpYWwgY29udGV4dCBjaGFuZ2VzIGNhbm5vdCBi
ZSBqdXN0aWZpZWQgYnkgYmxvYiBlcXVhbGl0eSBhbG9uZS4KCkNGRy0wMDEgcmVtYWlucyBhIGtu
b3duIHBsYXRmb3JtIHJpc2s6IGxpdmUgYG1haW5gIGlzIG5vdCBwcm90ZWN0ZWQuIFRoaXMgcGxh
bm5pbmcgcHJvcG9zYWwgbmVpdGhlciBmaXhlcyBpdCBub3IgbWFudWZhY3R1cmVzIGEgbWVyZ2Ug
d2FpdmVyLiBGaW5hbCBpbnRlZ3JhdGlvbiByZW1haW5zIGEgc2VwYXJhdGUgT3duZXIgZGVjaXNp
b24gYW5kIGxpdmUgcHJlZmxpZ2h0LgoKIyMgNS4gRmluZGluZ3MgYW5kIGRpc3Bvc2l0aW9uCgoq
Kk5ldyBibG9ja2luZyBmaW5kaW5nczogbm9uZS4gTmV3IG1hbmRhdG9yeSByZXdvcms6IG5vbmUu
KioKCnwgSGlzdG9yaWNhbCBSMSBmaW5kaW5nIHwgQ3VycmVudCBldmlkZW5jZSBhbmQgZGlzcG9z
aXRpb24gfAp8LS0tfC0tLXwKfCBGMSDigJQgZXhhY3QgT3duZXIgYXNzZW50IGdhcCB8IFJlc29s
dmVkIGZvciB0aGlzIG5ldyBjYW5kaWRhdGUgYnkgZGlyZWN0IGV4YWN0LXNwZWMgT3duZXIgY29u
ZmlybWF0aW9uLCBPRC0wMTAtMDQgYW5kIGJvdW5kZWQgb3JpZ2luYWwgcGxhbm5pbmctYXV0aG9y
aXphdGlvbiBleGNlcnB0LiBSMSByZW1haW5zIEJMT0NLRUQgb24gaXRzIG93biBvcmlnaW5hbCBz
dWJqZWN0LiB8CnwgRjIg4oCUIHRyYWlsaW5nIHNwYWNlcyB8IFJlc29sdmVkIGxvY2FsbHk6IGNv
bXBsZXRlIGJhc2VsaW5lLXRvLWZpbmFsLWNhbmRpZGF0ZSBgZ2l0IGRpZmYgLS1jaGVja2AgZXhp
dHMgMC4gQWN0dWFsIHN1YnNlcXVlbnQgR2l0SHViIENJIGFsc28gc3VjY2VlZHMuIHwKfCBGMyDi
gJQgc3RhbGUgaGFuZG9mZiB8IFJlc29sdmVkIGJ5IGFuIGV4cGxpY2l0IGFwcGVuZGVkIGNoZWNr
cG9pbnQgdGhhdCBzdXBlcnNlZGVzIGN1cnJlbnQtc3RhdGUgZmllbGRzLCByZWNvcmRzIG9yaWdp
bmFsIFIxL2ZhaWxlZCBDSSwgZXhhY3QgYWNjZXB0ZWQgc3BlYywgcGVuZGluZyBQL1cgZ2F0ZXMg
YW5kIHRoZSBuZXh0IGFjdGlvbi4gQSBjaGVja3BvaW50IG1heSBuYW1lIGFuIG9ic2VydmVkIHBy
ZWRlY2Vzc29yOyBpdCBuZWVkIG5vdCBjb250YWluIGl0cyBvd24gZnV0dXJlIGNvbW1pdCBTSEEu
IHwKCk5vIGNsYWltIGlzIG1hZGUgdGhhdCBhIG1pc3NpbmcgaGlzdG9yaWNhbCBvcmlnaW5hbCBy
ZXBvcnQgd2FzIHJlY292ZXJlZCBieSB0aGlzIHJldmlldy4gVGhlIG9yaWdpbmFsIFIxIHByZXNl
cnZhdGlvbiByZW1haW5zIHRoZSBPcmNoZXN0cmF0b3IncyBldmlkZW5jZS1jdXN0b2R5IGFjdGlv
bjsgaXRzIHZlcmRpY3QgbXVzdCBub3QgYmUgb3ZlcndyaXR0ZW4uIEFueSBmb3JtYXR0aW5nIHBy
ZXNlbnRhdGlvbiBjb3B5IG11c3QgYmUgZGlzdGluZ3Vpc2hlZCBmcm9tIHRoZSByZXRhaW5lZCBv
cmlnaW5hbCBieXRlcy4gQXJjaGl0ZWN0dXJlIENyaXRpYyBSMiBSRUFEWSByZW1haW5zIGFyY2hp
dGVjdHVyZSBldmlkZW5jZSBvbmx5LgoKIyMgNi4gRXhlY3V0ZWQgY2hlY2tzIGFuZCBudW1lcmlj
IHJlc3VsdHMKClRoZSB2ZXJpZmllZCBhYnNvbHV0ZSBjbG9uZSBhYm92ZSB3YXMgdXNlZCBmb3Ig
R2l0IGNvbW1hbmRzOyBmdWxsIG9iamVjdCBjb250ZW50cyB3ZXJlIHJlYWQgd2l0aCBgZ2l0IC1D
IDxjbG9uZT4gc2hvdyA8ZXhhY3QtY29tbWl0Pjo8cGF0aD5gLgoKfCBFeGVjdXRlZCBpbnNwZWN0
aW9uIHwgUmVzdWx0IHwKfC0tLXwtLS18CnwgYHJldi1wYXJzZSBIRUFEYDsgYHJlbW90ZSBnZXQt
dXJsIG9yaWdpbmA7IGBzaG93IC1zIC0tZm9ybWF0PSVIJW4lVCVuJVAgPHN1YmplY3Q+YDsgYHdv
cmt0cmVlIGxpc3QgLS1wb3JjZWxhaW5gIHwgRWFjaCBleGl0IDA7IGlkZW50aXRpZXMgaW4gwqcx
LiB8CnwgYHN0YXR1cyAtLXBvcmNlbGFpbj12MSAtLXVudHJhY2tlZC1maWxlcz1hbGwgLS1pZ25v
cmVkYCB8IEV4aXQgMCwgZW1wdHkgYXQgZmluYWwgcHJlZmxpZ2h0LiB8CnwgYHJldi1wYXJzZSA8
Y29tbWl0Pjo8cGF0aD5gIGFuZCBQeXRob24gU0hBLTI1NiBvdmVyIGV4YWN0IGBnaXQgc2hvd2Ag
Ynl0ZXMgfCBFeGl0IDA7IGlkZW50aXRpZXMgYW5kIGhhc2hlcyBpbiDCpzEuIHwKfCBgbWVyZ2Ut
YmFzZSAtLWlzLWFuY2VzdG9yIDxiYXNlbGluZT4gPHN1YmplY3Q+YCBhbmQgZWFjaCBvZiBmb3Vy
IGhpc3RvcmljYWwgUC9XIGNvbW1pdHMgYWdhaW5zdCBzdWJqZWN0IHwgRWFjaCBleGl0IDAuIHwK
fCBgZGlmZiAtLW5hbWUtc3RhdHVzIDxiYXNlbGluZT4gPHN1YmplY3Q+YCB8IEV4aXQgMDsgc2l4
IGFkZGVkIHBsYW5uaW5nL2V2aWRlbmNlIHBhdGhzIG9ubHkuIHwKfCBgZGlmZiAtLW5hbWUtc3Rh
dHVzIGYzOTM3YzE34oCmIDxzdWJqZWN0PmAgfCBFeGl0IDA7IG9ubHkgUCwgb3duZXItZGVjaXNp
b25zIGFuZCBoYW5kb2ZmIGNoYW5nZWQgZHVyaW5nIGNvcnJlY3Rpb24uIHwKfCBgZGlmZiAzNzU3
NmVl4oCmIDQxNTMwODk04oCmYCB8IEV4aXQgMDsgb3duZXItZGVjaXNpb25zLW9ubHkgMjctbGlu
ZSBhdXRob3JpemF0aW9uIGV4Y2VycHQuIHwKfCBgZGlmZiAtLWNoZWNrIDxiYXNlbGluZT4gPHN1
YmplY3Q+YCB8IEV4aXQgMCwgbm8gZGlhZ25vc3RpY3MuIHwKfCBgZGlmZiAtLWV4aXQtY29kZSA8
YmFzZWxpbmU+IDxzdWJqZWN0PiAtLSBBR0VOVFMubWQgcGxhbi5tZCBtZW1vcnlfYmFuayAuZ2l0
aHViL3dvcmtmbG93cyAuZ2l0aG9va3MgZG9jcy93b3JrZmxvdyAuYWdlbnRzL3JvbGVzIGRvY3Mv
c2VjdXJpdHkgZG9jcy9kZWNpc2lvbnNgIHwgRXhpdCAwLCBlbXB0eTsgcHJvdGVjdGVkIG5vcm1h
dGl2ZSBwYXRocyB1bmNoYW5nZWQuIHwKfCBgZ2ggYXBpIHJlcG9zL29sZXluYTgwL2FnZW50aWMt
c2RsYy1saXRlL2JyYW5jaGVzL21haW5gIHwgRXhpdCAwOyBtYWluIGBlYzVkOGVm4oCmYCwgcHJv
dGVjdGlvbiBmYWxzZS4gfAp8IGBnaCBhcGkgcmVwb3Mvb2xleW5hODAvYWdlbnRpYy1zZGxjLWxp
dGUvcHVsbHMvMTRgIHwgRXhpdCAwOyBPUEVOL0RyYWZ0LCBiYXNlIG1haW4gYGVjNWQ4ZWbigKZg
LCBoZWFkIGA0MTUzMDg5NOKApmAsIG1lcmdlYWJsZSB0cnVlIC8gY2xlYW4uIHwKfCBgZ2ggaXNz
dWUgdmlldyAxMCAtLXJlcG8gb2xleW5hODAvYWdlbnRpYy1zZGxjLWxpdGUgLS1qc29uIG51bWJl
cixzdGF0ZSx0aXRsZSxib2R5LHVybGAgfCBFeGl0IDA7IE9QRU4sIGN1cnJlbnQgaXNzdWUgcmVt
YWlucyBjb250ZXh0dWFsIGludGVudCByYXRoZXIgdGhhbiBhcHByb3ZhbC4gfAp8IGBnaCBydW4g
dmlldyAzOTc5ODE2NTMxOSDigKZgIHwgRXhpdCAwOyBoaXN0b3JpY2FsIEZBSUxVUkUgb24gYGYz
OTM3YzE34oCmYCwgd2hpdGVzcGFjZSBzdGVwIGZhaWxlZDsgcHJlY2VkaW5nIHZhbGlkYXRpb24g
c3RlcHMgc3VjY2VlZGVkLiB8CnwgYGdoIHJ1biB2aWV3IDM5ODAyNDA4ODI2IOKApmAgfCBFeGl0
IDA7IGNvbXBsZXRlZCBTVUNDRVNTLCBldmVudCBwdWxsX3JlcXVlc3QsIGhlYWRTaGEgYDQxNTMw
ODk04oCmYDsgYWxsIGpvYiBzdGVwcyBzdWNjZWVkZWQuIHwKCkEgZmlyc3QgYGdoIHByIHZpZXcg
LS1qc29uIOKApmJhc2VSZWZPaWTigKZgIGF0dGVtcHQgZXhpdGVkIDEgYmVjYXVzZSB0aGUgaW5z
dGFsbGVkIENMSSBkb2VzIG5vdCBzdXBwb3J0IHRoYXQgZmllbGQuIEl0IHBlcmZvcm1lZCBubyBt
dXRhdGlvbi4gVGhlIHJlcXVpcmVkIGV4YWN0IGJhc2UvaGVhZCBkYXRhIHdhcyB0aGVuIG9idGFp
bmVkIHN1Y2Nlc3NmdWxseSB0aHJvdWdoIHRoZSByZWFkLW9ubHkgUkVTVCBBUEkuIEFuIGVhcmxp
ZXIgYGdoIHJ1biBsaXN0IC0tY29tbWl0IDQxNTMwODk04oCmYCByZXR1cm5lZCBhbiBlbXB0eSBh
cnJheTsgdGhpcyB3YXMgbm90IHRyZWF0ZWQgYXMgYSBmYWlsdXJlIG9yIFBBU1MuIFRoZSBsYXRl
ciBleGFjdCBydW4gaW5zcGVjdGlvbiBhYm92ZSBzdXBwbGllcyB0aGUgYWN0dWFsIGNvbXBsZXRl
ZCByZXN1bHQuCgpBY3R1YWwgY3VycmVudC1jYW5kaWRhdGUgcnVuOiBbTGl0ZSBDaGVja3MgMzk4
MDI0MDg4MjZdKGh0dHBzOi8vZ2l0aHViLmNvbS9vbGV5bmE4MC9hZ2VudGljLXNkbGMtbGl0ZS9h
Y3Rpb25zL3J1bnMvMzk4MDI0MDg4MjYpLCBjb21wbGV0ZWQgMjAyNi0xMC0yMiAxNToxMToxNiBV
VEMuIFRoaXMgaXMgc3VjY2Vzc2Z1bCBwbGFubmluZy1jYW5kaWRhdGUgQ0ksIG5vdCBmdXR1cmUg
aW1wbGVtZW50YXRpb24gdmVyaWZpY2F0aW9uIG9yIG1lcmdlIGF1dGhvcml6YXRpb24uCgojIyA3
LiBOT1RfUlVOIGFuZCBsaW1pdHMKClQwMeKAk1QyMiBmb3IgdGhlIGZ1dHVyZSBub3JtYXRpdmUg
aW1wbGVtZW50YXRpb24gYXJlIE5PVF9SVU4gaW4gdGhpcyBQcm9qZWN0IENyaXRpYyBtaXNzaW9u
LiBObyBuYXRpdmUgZG93bnN0cmVhbSBpbml0aWFsaXphdGlvbiwgaW50ZW50aW9uYWwgY29tcGFj
dGlvbiwgc291cmNlIENvZGVyIHdvcmssIFN0YWdlIENyaXRpYywgaW1wbGVtZW50YXRpb24gUmV2
aWV3ZXIvVmVyaWZpZXIsIG1lcmdlIG9yIGRlcGxveW1lbnQgd2FzIGV4ZWN1dGVkLiBIaXN0b3Jp
Y2FsIHJlbGVhc2UgYXNzdXJhbmNlIHdhcyBpbnNwZWN0ZWQgYXMgcHJvdmVuYW5jZSwgbm90IHJl
cnVuIG9yIGluaGVyaXRlZCBhcyBhY2NlcHRhbmNlIGZvciBJU1NVRS0wMTAuIEV4dGVybmFsIGVu
Z2luZWVyaW5nLXJlZmVyZW5jZSBpbXBsZW1lbnRhdGlvbnMgd2VyZSBub3QgaW5kZXBlbmRlbnRs
eSB0ZXN0ZWQuIE5vIHdyaXRlLXBlcm1pc3Npb24gcHJvYmUsIGhvb2sgYnlwYXNzIG9yIHNlY3Vy
aXR5LXNldHRpbmcgbW9kaWZpY2F0aW9uIHdhcyBwZXJmb3JtZWQ7IGZ1dHVyZSBhY3R1YWwgcGVy
bWlzc2lvbnMgcmVtYWluIGVudHJ5IGNvbmRpdGlvbnMuCgpHaXRIdWIgbWVyZ2VhYmlsaXR5IGFu
ZCByZWZzIGFyZSB0aW1lLXNlbnNpdGl2ZSBvYnNlcnZhdGlvbnMuIEN1cnJlbnQgcGxhbm5pbmcg
Q0kgZG9lcyBub3QgcHJvdmUgYW55IGZ1dHVyZSBTL0guIFRoaXMgUkVBRFkgZG9lcyBub3QgaW1w
bHkgREVMSVZFUllfUkVBRFkuCgojIyA4LiBWZXJkaWN0IGFuZCBwcmVjaXNlIG5leHQgT3duZXIg
Z2F0ZQoKKipSRUFEWSBvbiBleGFjdCBQcm9qZWN0IFAgY29tbWl0IGA0MTUzMDg5NGFmMTVlY2Ri
OTM0N2I4ZjM5ZTllZTZmOTM5ZjBiYzE2YCwgcGxhbiBibG9iIGA1YjBkZmIyNjU0ZWQzMDcyYjY1
NWRlNzMwNjhiNDM4ZGM0Y2I5YjFhYCwgYWNjZXB0ZWQgc3BlYyBibG9iIGBhMzY0ZWMwZmJkMjE3
NjdhMzY4MjA2NTNiZDg1MWQ1NTJjOGFiN2E3YC4qKgoKVGhlIEF1dGhvciBtYXkgcHJlc2VydmUg
dGhpcyBnZW51aW5lIGluZGVwZW5kZW50IHJlcG9ydCBvdXRzaWRlIGZyb3plbiBQL3NwZWMsIHdp
dGggZXhhY3Qgc3ViamVjdC9ibG9iIG1hcHBpbmcgYW5kIGFueSBsYXRlciBldmlkZW5jZS1vbmx5
IEhFQUQgbWFwcGluZy4gU3VjaCBwcmVzZXJ2YXRpb24gZG9lcyBub3QgdHVybiBhbiBldmlkZW5j
ZSBkZXNjZW5kYW50IGludG8gYSBuZXdseSByZXZpZXdlZCBQIG9yIGFuIE93bmVyIGFwcHJvdmFs
LgoKVGhlIG5leHQgaHVtYW4gZGVjaXNpb24gaXMgKipzZXBhcmF0ZSBPd25lciBhcHByb3ZhbCBv
ciByZWplY3Rpb24gb2YgdGhpcyBleGFjdCBDcml0aWMtUkVBRFkgUCoqLCBpbmNsdWRpbmcgaXRz
IDE3LXBhdGggc291cmNlIHNjb3BlIGFuZCBwcm9wb3NlZCBmaW5pdGUgZGVsZWdhdGVkIHBsYW5u
aW5nL2ltcGxlbWVudGF0aW9uL2V2aWRlbmNlIHBlcm1pc3Npb25zLiBObyBmdXJ0aGVyIGlkZW50
aXR5IGNvbmZpcm1hdGlvbiBvciByZXBlYXQgc3BlY2lmaWNhdGlvbiBhY2NlcHRhbmNlIGlzIHJl
cXVpcmVkIGZvciB0aGUgdW5jaGFuZ2VkIGFjY2VwdGVkIHNwZWMuIE9yZGluYXJ5IGFscmVhZHkt
YXV0aG9yaXplZCBwbGFubmluZyBjb3JyZWN0aW9ucyBhbmQgZXZpZGVuY2UgcHJlc2VydmF0aW9u
IGRvIG5vdCBuZWVkIHBlci1lZGl0IE93bmVyIGFwcHJvdmFsLgoKT25seSBhZnRlciBhY3R1YWwg
ZXhhY3QtUCBhcHByb3ZhbCBtYXkgdGhlIE9yY2hlc3RyYXRvciBwcmVwYXJlIGNvbW1pdHRlZCBj
b25mb3JtaW5nIFcsIG9idGFpbiBpbmRlcGVuZGVudCBTdGFnZSBDcml0aWMgUkVBRFksIHZlcmlm
eSBhY3R1YWwgcGVybWlzc2lvbnMgYW5kIGxhdW5jaCBhIGJvdW5kZWQgQ29kZXIuIE5vcm1hdGl2
ZSBpbXBsZW1lbnRhdGlvbiwgZmluYWwgYWNjZXB0YW5jZS9tZXJnZSwgZGVwbG95bWVudCBhbmQg
Y2hhbmdlcyBvdXRzaWRlIHNjb3BlIHJlbWFpbiB1bmF1dGhvcml6ZWQgbm93Lgo=
```
