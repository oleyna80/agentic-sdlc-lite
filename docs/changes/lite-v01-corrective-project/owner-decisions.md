# Owner decisions — corrective project planning

## Фактический status

- Owner Architecture Clarification R5: принято как явное новое design requirement из текущего диалога. Двухуровневая модель не объявляется уже внедрённой.
- Specification approval: **APPROVED**. Owner в текущем диалоге 2026-10-16 ответил: «Принимаю эту specification; продолжить planning commit и Project Critic». Вопрос идентифицировал exact SHA-256 `2e63d5706838c0f84b2965ad2216cff4575897a1289e0daec6f6dfd5fb457691` и явно отделял spec acceptance от plan/OD approval.
- Project plan approval: **PENDING**; independent Project Critic **NOT_RUN**, formal P **NOT_FIXED** на pre-commit checkpoint; prerequisite specification approval выполнен.
- OD-1…OD-5: все **PROPOSED ACCEPT** в [root plan](../../../plan.md), не приняты самостоятельно.
- Planning mission authorization: explicit current Owner assignment разрешает specification/root plan/project evidence, scoped planning commits и publication только в `docs/wb-lite-002-planning`, при actual permissions. Не разрешает implementation/merge/deploy/settings.

## Требуемые отдельные решения

1. Specification принятa Owner на указанную точную редакцию. При material correction обновить proposal до нового formal P и affected review/approval.
2. После prerequisite: complete proposal → разрешённый planning commit P → реально independent Project Critic на exact P → REWORK/new P/re-Critic либо READY.
3. После READY Owner принимает/отклоняет exact P с plan/spec blob IDs и report reference; отдельно подтверждает OD-1…OD-5 и delegated bounds. Никаких дополнительных Owner-per-WB gates внутри approved project.

Этот файл хранит evidence/status, не создаёт approvals. Будущие decisions сохраняются с реальным источником/текстом/датой и exact revision; placeholders не authority. Frozen plan/WB ради decisions не редактируются.
