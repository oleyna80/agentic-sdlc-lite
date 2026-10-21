# Planning checks — corrective project proposal

## Preflight, 2026-10-16

Repository origin `https://github.com/oleyna80/agentic-sdlc-lite.git`. Planning worktree `/home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/wb-lite-002-planning`; branch `docs/wb-lite-002-planning`; observed HEAD `90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab`. Main checkout `/home/azur/Projects/WSL/agentic-sdlc-lite` clean at same SHA. Remote main matched via ls-remote; remote planning branch absent at observation.

Initial dirty state: only untracked `docs/changes/WB-LITE-002/work-block.md`. R5 SHA-256 confirmed `d7dbd05c8ec71eafe41156d32a0b3824030380f3efc3256791de52b13bb90430`. Root plan and project evidence directory absent before writes. Existing main/ADR/audit/planning worktrees preserved. No nested AGENTS in planning path ancestors.

## Loaded instructions and design conflict

Read `/home/azur/AGENTS.md`, planning root `AGENTS.md`, PROJECT_BRIEF/MAP, memory context/progress, canonical development/memory/workspaces/initialization/security, Orchestrator/Architect/Critic briefs, plan/spec/Critic templates and R5. Parent neutral guidance matches user-injected parent portion; no parent conflict found. Explicit Owner R5/new planning mission supersedes affected design order for this proposal, not the source bytes. Existing root/development optional roadmap and Owner-before-WB-Critic remain pending future authorized implementation.

Memory/cache/scratch used only for lookup/recovery hints; Git/instructions/R5 bytes verified independently. Audit R1 is input, not new Project Critic evidence. No global instructions/settings changed.

## Verification boundary

Current checks concern only planning content, links, whitespace, file inventory/provenance and unchanged source bytes. Implementation V-01…V-26, focused source tests, Stage Critic, Reviewer, Verifier and CI/runtime fixtures are **NOT_RUN**. Historical pre-commit Project Critic NOT_RUN observation is superseded by the completed independent READY report below; implementation gates remain NOT_RUN. Это не self-READY. Actual executed planning checks/hashes and final Git state are recorded in [handoff](handoff.md).

No new permanent test framework/script/runtime. Before staging any new Markdown must receive direct content coverage; empty tracked git diff --check is insufficient. Cached check/full staged diff only after an authorized scoped staging operation. No-index diagnostics/exit code must be evaluated together. Frozen/source equality checked separately from whitespace.

## Выполненная local planning validation до commit P

- Direct UTF-8 content check всех шести Markdown paths (root plan, неизменённый R5, четыре project records/spec): trailing whitespace/conflict markers/final newline/local links — PASS; Python validator exit 0. Последующие evidence edits требуют повторной content проверки перед staging.
- `git -C /home/azur/Projects/WSL/agentic-sdlc-lite-worktrees/wb-lite-002-planning diff --check`: exit 0, diagnostics empty; это покрывает tracked diff, не untracked.
- Для каждого из шести paths отдельно `git -C <verified-planning-worktree> diff --no-index --check /dev/null <absolute-path>`: exit 1, stdout/stderr empty; content checker не нашёл whitespace/conflict/link дефектов. Exit 1 трактовался как различие с пустым файлом, не самостоятельный PASS.
- 21 source path из numbered table plan сравнен byte-for-byte с `git -C <verified-planning-worktree> show 90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab:<path>`: 21/21 unchanged. Ровно 21 unique path; все существуют.
- R5 OD-1…5, AC-1…15, V-01…26 присутствуют; R5 hash неизменён. Scope/acceptance/routine/worktree/recovery/hook boundaries сверены с proposal; это self-check planning, не independent verdict.
- `git -C <verified-planning-worktree> ls-remote origin refs/heads/main refs/heads/docs/wb-lite-002-planning`: exit 0; main `90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab`, planning ref absent.
- `git -C <verified-planning-worktree> worktree list --porcelain`: exit 0, четыре прежних worktrees. Main status exit 0, clean at baseline.

Stable artifact SHA-256: plan `a3c04679c467d07af40b065f4e9fdb5ecb859fa92bfdabe96657782bb3d257c0`; approved spec `2e63d5706838c0f84b2965ad2216cff4575897a1289e0daec6f6dfd5fb457691`; input R5 `d7dbd05c8ec71eafe41156d32a0b3824030380f3efc3256791de52b13bb90430`. Mutable evidence records не включают собственный hash: exact commit фиксирует их bytes.

Normal hooks/sandbox controls сохраняются. `core.hooksPath` query: exit 1, unset; tracked `.githooks/pre-commit` прочитан, но configuration не менялась и его автоматическое подключение не утверждается. Existing active Git hook configuration используется без обхода.

## Committed P и independent Project Critic

- Planning commit P `b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df`: ровно 6 Markdown additions, 637 insertions. Normal commit без amend/force/no-verify; scoped cached check exit 0, полный staged diff просмотрен, index bytes совпали с проверенными файлами. SHA-256 полного staged diff: `db6d4dc8c7d103548d245d3b54e26517dcf6219ae1d5bfe8e2f3be55ceabc528`.
- `git diff --check 90c101ba2b6091a24c2f458f5ffc8b02e6eb04ab b4cbc37e6bc318a5b28f4db8cbeaafd3663c60df`: exit 0. После commit planning worktree clean; все 21 source bytes и plan/spec/R5 blobs/hashes подтверждены.
- Отдельный read-only native subagent `/root/project_critic_r1` независимо прочитал exact P через Git. Итог **READY к Owner review**, blocking findings отсутствуют; [оригинальный отчёт](critic-r1.md) сохранён отдельно без editorial correction. Report содержит subject blobs, фактические commands/results и ограничения независимости.
- Перед evidence writes повторно установлены objective/instructions, exact target/root/origin/branch/HEAD/status, approved evidence paths, immutable subject hashes и next action. Main clean на base. `ls-remote origin refs/heads/main refs/heads/docs/wb-lite-002-planning`: exit 0, main неизменён, planning ref отсутствовал.
- Evidence commit меняет только три mutable project records и добавляет оригинальный Critic report. Reviewed plan/spec/R5 не меняются. Content validation учитывает допустимый Markdown hard line break в исходном report; оригинальный отчёт не нормализуется ради formatting.
- Owner plan/OD approval **PENDING**; Stage Coder **NOT_STARTED**. Все implementation fixtures и stage/source independent gates **NOT_RUN**. Actual branch publication/CI state фиксируются после действия, не предсказываются этим pre-commit record.

## Evidence-only content/staged checks — фактические результаты

- Direct UTF-8 content check четырёх evidence paths: exit 0; final newline/conflict markers/local links — PASS, 9 local links доступны. Report SHA-256 `3e536b051b4219169a895aa0c5cf73c5b0e8d2df570e07b8a044c7fbe06ea0ad`. Единственное whitespace исключение: два пробела intentional Markdown hard break в оригинальном report, строка 154. Report сохранён verbatim; formatting не исправлялся.
- Tracked `git diff --check` до staging: exit 0; новый report не входил в tracked coverage.
- Direct report `git diff --no-index --check /dev/null <absolute-report>`: exit 3 с единственным diagnostic `:154: trailing whitespace`. Это не PASS; различие с пустым файлом и diagnostic рассмотрены отдельно.
- Scoped staging четырёх paths; полный cached diff просмотрен, все index blobs равны непосредственно проверенным bytes. `git diff --cached --check`: exit 2, единственный diagnostic — тот же Markdown hard break report:154. Default whitespace check не объявляется PASS. Прочих whitespace/content ошибок не обнаружено. Сохранение original independent evidence имеет приоритет перед его косметической нормализацией; hooks/configuration не менялись.
