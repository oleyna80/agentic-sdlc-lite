# Intent — Document-First Agentic SDLC Lite v0.1

## Problem

The earlier full Agentic SDLC accumulated duplicated protocols, controllers, registry/state, hard gates, scripts and harness-specific orchestration complexity. The Lite product must retain **engineering discipline without building another harness**. Context, decisions and progress must survive chat/session/model boundaries in Git-tracked project documents.

## Outcome

A portable Markdown-first template that Codex, Claude Code or other capable coding harnesses can follow using their **native** planning, agents, tools, permissions, tests and Git integrations.

Normal use: Owner discusses product/feature with Orchestrator; Orchestrator records significant findings/decisions in repository memory, optionally consults Architect, creates a project plan for multi-stage work, then prepares a specific Work Block when a stage becomes actionable. Critic reviews that Work Block; Coder implements; Reviewer checks; Verifier confirms acceptance; Orchestrator closes and records evidence. Owner decides consequential design changes, merge and deployment.

Trivial documentation, memory maintenance and analysis need not instantiate a full Work Block or all roles.

## Key product semantics

- `plan.md` = **optional project roadmap** (stages/dependencies/end goal), never a duplicate per-WB implementation spec.
- Work Block = **one bounded, testable delivery stage** of a plan, or a standalone substantial task.
- `intent.md` = why; `spec.md` = what and acceptance; Work Block = execution contract for a specific stage.
- MVP deployment, MVP validation and production promotion are distinct Owner-authorized product milestones; a passing WB cannot automatically deploy.

## Non-goals

No Controller, admission database, SQLite, registry, scheduler, custom dispatcher, Python/Bash workflow engine, automatic document generator, adapter/bridge, native hook packages or embedded Skills library. No reimplementation of Codex/Claude Code facilities. Git hooks remain the existing ordinary Git hooks. Harness-specific hooks and a separate GitHub Skills library are possible **later, outside this refinement**.

## Scope of the immediate change

Prepare a reviewable documentation-only candidate and one bounded Work Block for later canonical documentation changes. Preserve prior R1 corrections: parallel task handoffs, fresh project initialization, exact assurance semantics, distinct Owner/Critic authority, truthful verdicts and post-merge reconciliation.

## Owner decisions already given

The Owner has accepted **the architecture direction**: document-first native-harness execution with a sequential WB-led delivery process, project-level plans and Git-backed memory. Approval to **implement or merge** any exact candidate still follows the project Development Protocol and the Critic review.
