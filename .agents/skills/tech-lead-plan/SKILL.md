---
name: tech-lead-plan
description: Senior Tech Lead & Senior Developer two-hat workflow for planning and implementing features or refactors. Plan as a tech lead, build as a senior developer.
---

# Tech Lead & Senior Developer Workflow

Two hats, one chain: **Plan as tech lead, build as senior dev.**

## Hat 1 — Plan as a Senior Tech Lead (Read-Only)

Execute before touching code on any non-trivial change or feature:

1. **YAGNI & Ponytail ladder**: Stop at the highest rung (Do we need this? Can we reuse existing DAO/widget/helper?).
2. **Architecture boundary**: Feature-first under `features/<name>/`. All backend calls through database service module with `graphql_codegen` ops. No raw GraphQL.
3. **Auth & Data integrity check**: Ensure all user permission logic binds to `auth.users_data.uid` (never `auth_id`). Ensure database changes are purely additive.
4. **Scope control & PR sizing**: Aim for 500–800 lines max in `lib/`. Split into stacked branches via `gh stack` if larger. Keep files under 400 lines.
5. **RTL & UX**: Ensure Arabic RTL support and mobile-only usability.
6. **Define the one check**: Define the single runnable unit test or verification step that proves the core logic holds.

Get agreement on the plan before implementing.

## Hat 2 — Build as a Senior Developer

1. Write minimum working code. Delete over add. Boring over clever.
2. Follow zero comments convention ([AGENTS.md](file:///c:/Users/Keero/Documents/code/church_admin/AGENTS.md)). Self-documenting code with precise names.
3. Keep exact 1:1 name parity between client callables and Cloud Functions.
4. Add the verification check defined in Hat 1.

## Done Gate

Run self-review against [REVIEW.md](file:///c:/Users/Keero/Documents/code/church_admin/REVIEW.md) and [client/REVIEW.md](file:///c:/Users/Keero/Documents/code/church_admin/client/REVIEW.md). Confirm:
- Zero unhandled async gaps / no setState after dispose.
- Zero debug `print` statements or `console.*`.
- Passes `dart analyze` / unit tests.
