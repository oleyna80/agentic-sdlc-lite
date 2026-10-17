# SDLC Lite — Architecture and File Dependencies

Diagrams **illustrate** `docs/workflow/development.md` and `docs/workflow/memory.md`; they do not authorize operations or define competing gates.

## Project definition and autonomous stage execution

```mermaid
flowchart TD
    O["Owner intent"] --> INIT{"Derived repo initialized?"}
    INIT -->|No| SETUP["First-use setup + Owner acceptance"]
    INIT -->|Yes| CLASS["Risk/impact classification"]
    SETUP --> CLASS
    CLASS -->|Routine| ROUTINE["Bounded direct task and focused checks"]
    CLASS -->|Significant| SPEC["Specification: Owner accepts exact content"]
    SPEC --> P["Orchestrator/Architect commit full Project Plan P"]
    P --> PC{"Independent Project Critic READY?"}
    PC -->|REWORK| P
    PC -->|READY| PO{"Owner approves exact P + delegated bounds?"}
    PO -->|Changes| P
    PO -->|Approved| W["Orchestrator commits actionable Stage WB W; conformance to P"]
    W --> SC{"Independent Stage Critic READY on exact W?"}
    SC -->|REWORK| W
    SC -->|READY and permissions| C["Scoped Coder → source candidate S"]
    C --> R{"Independent Reviewer READY on S?"}
    R -->|REWORK| C
    R -->|READY| V{"Independent Verifier PASS on same S?"}
    V -->|FAIL| C
    V -->|BLOCKED| STOP["STOP / Owner escalation"]
    V -->|PASS| H["Bounded delivery H, verify S..H diff and actual CI"]
    H --> ACCEPT{"Stage outputs, dependencies and CI satisfied?"}
    ACCEPT -->|No| STOP
    ACCEPT -->|Yes| NEXT{"Another approved P stage?"}
    NEXT -->|Yes| W
    NEXT -->|No| FINAL["Owner final acceptance / merge GO"]
    ROUTINE --> RDEL["Focused checks and authorized task delivery"]
    RDEL --> FINAL
    FINAL --> PR["Verified PR/merge state; separate deployment GO"]
```

Project Critic READY is **not** Owner approval; Stage Critic READY is **not** a new Owner approval or OS permission. Within approved P, Orchestrator may make bounded technical decisions and handle ordinary REWORK without repeated Owner gates. Changes outside approved constraints require Owner disposition. A stage does not require merge to progress unless its acceptance criteria explicitly say so.

Working `DELIVERY_READY`, final task `COMPLETE / BLOCKED / CANCELLED`, stage acceptance, PR merge and deployment are different evidenced facts. All P/W/S/H commits and independent reports are separate subjects.

## Source hierarchy and memory

```mermaid
flowchart TD
    OWNER["Owner instructions + actual sandbox/platform controls"] --> ROOT["AGENTS.md"]
    ROOT --> DEV["development.md — sole lifecycle"]
    ROOT --> MEM["memory.md — canonical checkpoint matrix"]
    ROOT --> INIT["initialization.md — first use"]
    ROOT --> WORK["workspaces.md — explicit write targets"]
    ROOT --> SEC["security/boundaries.md"]
    ROOT --> ROLES[".agents/roles — subordinate missions"]
    DEV --> PLAN["root plan.md — frozen approved P"]
    DEV --> STAGE["docs/changes/task/work-block.md — frozen W"]
    MEM --> HANDOFF["task handoff + independent reports — mutable evidence"]
    MEM --> BANK["memory_bank — last integrated facts"]
    ROOT --> CLAUDE["CLAUDE.md — imports AGENTS.md"]
```

Arrows express reading/navigation only. Harness-native agents execute tasks; role labels and Skills do not install runtime privileges. Separate task branches own handoffs; shared memory is reconciled only by an authorized integration writer.

## Layout

```text
project/
├── AGENTS.md                 # one root contract
├── CLAUDE.md                 # import, not another policy
├── PROJECT_BRIEF.md          # identity and product constraints
├── PROJECT_MAP.md            # navigation
├── plan.md                   # approved project P for significant work, immutable
├── .agents/roles/            # portable role briefs
├── docs/
│   ├── workflow/             # canonical procedures
│   ├── architecture/         # descriptive diagrams
│   ├── decisions/            # accepted rationale
│   ├── changes/<task>/       # reviewed W, separate handoff/reports
│   ├── templates/            # non-authoritative forms
│   └── security/             # security boundaries
├── memory_bank/              # reconciled integrated facts
├── .githooks/                # optional conventional hooks
└── .github/workflows/        # structural CI and bounded first-use guard
```

Previously approved legacy `docs/changes/<task>/plan.md` preserve original provenance. Lite does not contain a Controller, SQLite authority registry, hook installer, native agent runtime, skill-fetcher or automated merge/deploy.
