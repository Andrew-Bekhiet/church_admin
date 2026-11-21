# TypeScript Cloud Functions

Auth blocking functions, callables, storage proxy, export.

- Errors: wrap in `try`/`catch`, `console.error`, return a null/false fallback — match the surrounding file rather than throwing through it.
- Callables assert the caller first (`assertUserAuthenticatedAndApproved`, or `assertUserEmailVerified` where approval cannot exist yet).
- Error messages should be user-friendly and localisable via error codes.
- **Keep names in sync across the client/server boundary.** A client wrapper, the callable it invokes, and the file exporting it share one name (`applyInvitationCode` / `apply_invitation_code.ts`). Renaming a deployed callable is a deploy-order dependency — client and functions ship separately, so a mismatched pair fails with `NOT_FOUND`.
- Functions deploy automatically on merge.
- **Tests** live in `test/` and run with `node:test` against a real Hasura, not a mock: `scripts/test_against_fresh_hasura.sh` boots one from this commit's migrations and metadata, and `HASURA_SERVER=<graphql url> HASURA_ADMIN_SECRET=<secret> npm test` reuses one that is already up. Each test seeds its own rows through `test/support/local_hasura.ts` and passes the current time in, so nothing depends on the clock or on another test's data.

The auth model (`uid` vs `auth_id`, claiming seeded users) is described in `server/hasura/AGENTS.md`; sign-up and sign-in functions must respect it.
