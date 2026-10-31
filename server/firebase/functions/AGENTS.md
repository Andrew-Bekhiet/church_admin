# TypeScript Cloud Functions

Auth blocking functions, callables, storage proxy, export.

- Errors: wrap in `try`/`catch`, `console.error`, return a null/false fallback — match the surrounding file rather than throwing through it.
- Callables assert the caller first (`assertUserAuthenticatedAndApproved`, or `assertUserEmailVerified` where approval cannot exist yet).
- Error messages should be user-friendly and localisable via error codes.
- **Keep names in sync across the client/server boundary.** A client wrapper, the callable it invokes, and the file exporting it share one name (`applyInvitationCode` / `apply_invitation_code.ts`). Renaming a deployed callable is a deploy-order dependency — client and functions ship separately, so a mismatched pair fails with `NOT_FOUND`.
- Functions deploy automatically on merge.

The auth model (`uid` vs `auth_id`, claiming seeded users) is described in `server/hasura/AGENTS.md`; sign-up and sign-in functions must respect it.
