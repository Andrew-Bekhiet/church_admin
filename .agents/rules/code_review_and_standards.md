---
name: code-review-and-standards
description: Enforce strict implementation standards, architectural boundaries, and mandatory post-implementation code review against REVIEW.md and client/AGENTS.md.
always_on: true
---

# Code Review & Implementation Standards

## 1. Mandatory Post-Implementation Self-Review
Before signaling completion on any coding task, modification, or bugfix, the model must walk its own diff and systematically audit against [REVIEW.md](file:///c:/Users/Keero/Documents/code/church_admin/REVIEW.md), [client/REVIEW.md](file:///c:/Users/Keero/Documents/code/church_admin/client/REVIEW.md), and [client/AGENTS.md](file:///c:/Users/Keero/Documents/code/church_admin/client/AGENTS.md):

1. **Authentication & Data Invariants**:
   - Permissions must hang off `auth.users_data.uid` (never `auth_id`).
   - Schema migrations must be strictly additive; never drop or rewrite production data rows or tables.
   - Account identity claims must preserve seeded UIDs on sign-up, sign-in, or invitation claims.

2. **Flutter Widget & Architecture Rules**:
   - No private `_Foo` widget classes (test files included).
   - Never return widgets from methods (`Widget _buildFoo()`). Extract a widget class or inline if small (<100 lines).
   - Widget keys live with widget (`<Widget>Keys` or `keyFor(...)`).
   - Child widgets take primitive values and callbacks, never streams or controllers.
   - Spacing: Use `Row.spacing` / `Column.spacing` (no `SizedBox` gaps).
   - Imports: Import Material/Cupertino from `package:material_ui`.
   - File length: Under 350 lines; 420 lines hard maximum.

3. **Async & Lifecycle Safety**:
   - Guard every callback or async gap against writes after disposal (e.g. check `mounted` or controller state).
   - Guard against race conditions where an earlier in-flight response could overwrite a later user selection.
   - `dispose()` must return `void` synchronously and be the last member in any class that has one. Close sinks with `unawaited(sink.close())`.

4. **Client-Server Contract Parity**:
   - Client wrapper callables, Cloud Function names, and backend endpoints must share identical 1:1 names (e.g., `applyInvitationCode` matches `apply_invitation_code.ts`).
   - Database operations route strictly through database service wrappers with `graphql_codegen` ops. Zero raw GraphQL.

5. **Testing Rules**:
   - Assert observable state at end, never method call counts. Outgoing commands verify parsed Uri/queryParams only.
   - No clock/timezone dependence (no `DateTime.now()`, use fixed dates & UTC fixtures).
   - Find widgets by key (`<Widget>Keys`), never text/icon/tooltip.
   - Blocs/cubits tested with `blocTest`.
   - Verify red before trusting green without using `git stash`.

6. **Zero Comments & Diff Hygiene**:
   - Strict zero comments policy ([AGENTS.md](file:///c:/Users/Keero/Documents/code/church_admin/AGENTS.md)). Workaround bugs link upstream GitHub issue in markdown.
   - Zero debug statements: No `print(...)`, `debugPrint(...)`, `console.log(...)`.
   - No `!` non-null assertions.

7. **Verification Commands**:
   - `fvm dart format lib test patrol_test` from `client/`.
   - `fvm dart analyze --fatal-infos` (no path args) from `client/`.
