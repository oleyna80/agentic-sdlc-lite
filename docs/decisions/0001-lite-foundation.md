# ADR-0001 — Single-authority lightweight SDLC with Git-backed memory

- **Status:** accepted project direction; implementation is a candidate under review.
- **Date:** 2026-10-15
- **Owner:** project Owner
- **Scope:** Agentic SDLC Lite repository template

## Context

The full AzurSysTech SDLC accumulated overlapping agent, SDD, lifecycle and role instructions. The user requested a portable lightweight alternative with developer/reviewer subagents, simple hooks and memory that survives separate chats.

## Decision

Use one root agent contract (`AGENTS.md`), one canonical development protocol, explicit domain procedures for memory, Git workspaces and security, role prompts subordinate to the contract, and concise optional task templates. Commit project context, progress, decision index and coordination log in `memory_bank/`; keep durable design rationale in `docs/decisions/`. No Controller, admission, SQLite or second lifecycle authority.

## Rationale

The team needs reproducible context and predictable Git workflows without maintaining a custom control plane. Canonical ownership of each type of fact reduces contradictory instructions.

## Consequences

Git and documentation updates are part of task completion. Hooks cannot enforce true platform permissions. Some independence and security guarantees from the full SDLC are deliberately outside Lite.

## Evidence and review trigger

- Current proposal: `docs/lite-v1-foundation` / PR #1.
- Revisit if two project files prescribe different mandatory gates, context cannot be recovered from the repo, or a concrete use case requires real technical authorization rather than cooperative instructions.
