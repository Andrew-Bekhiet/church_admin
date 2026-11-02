---
name: code-review-and-standards
description: Enforce strict implementation standards, architectural boundaries, and mandatory post-implementation code review against REVIEW.md.
always_on: true
---

# Code Review & Implementation Standards

## 1. Mandatory Post-Implementation Self-Review
Before signaling completion on any coding task, modification, or bugfix, the model must walk its own diff and systematically audit against [REVIEW.md](file:///c:/Users/Keero/Documents/code/church_admin/REVIEW.md) and [client/REVIEW.md](file:///c:/Users/Keero/Documents/code/church_admin/client/REVIEW.md):

1. **Authentication & Data Integrity**:
   - Permissions must hang off `auth.users_data.uid` (never `auth_id`).
   - Schema migrations must be strictly additive; never drop or rewrite production data rows or tables.
   - Account identity claims must preserve seeded UIDs on sign-up, sign-in, or invitation claims.

2. **Async & Lifecycle Safety**:
   - Guard every callback or async gap against writes after disposal (e.g. check `mounted` or controller state).
   - Guard against race conditions where an earlier in-flight response could overwrite a later user selection.
   - Never swallow or drop unhandled asynchronous errors.

3. **Client-Server Contract Parity**:
   - Client wrapper callables, Cloud Function names, and backend endpoints must share identical 1:1 names (e.g., `applyInvitationCode` matches `apply_invitation_code.ts`).

4. **Zero Comments & Pure Self-Documenting Code**:
   - Strict zero comments policy ([AGENTS.md](file:///c:/Users/Keero/Documents/code/church_admin/AGENTS.md)). If code requires explanation, rename variables/functions or extract helpers so the name tells the whole truth.
   - Exception: Workarounds for external platform bugs must provide a direct markdown link to the upstream GitHub issue.

5. **Diff & Logging Hygiene**:
   - Zero debug statements: No `print(...)`, `debugPrint(...)`, `console.log(...)`, `console.error(...)`.
   - Remove all commented-out code, leftover test artifacts, or scratch files.

6. **Static Verification**:
   - Verify code using `dart analyze` or project test runners across modified paths before completing.

## 2. Product Owner & Architecture Gate
- **Feature-first organization**: Group by domain or feature under `features/<name>/`, never by structural type.
- **Database access encapsulation**: All backend queries/mutations must go through the core database service module with `graphql_codegen`-generated operations; no raw GraphQL in feature modules.
- **RTL & Mobile Experience**: Maintain Arabic RTL layout integrity and mobile-first design considerations.

