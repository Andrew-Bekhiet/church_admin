# Agent guide — church_admin

Conventions for anyone (human or agent) writing code here. Rules are stated as requirements, not suggestions.

Organise files by feature or domain, not by type. All backend access goes through the database service module (`client/lib/src/core/services/database/`) with `graphql_codegen`-generated operations — features never issue raw GraphQL themselves.

To stream a whole collection rather than the default page size, raise the limit instead of draining pages: `dao.streamAllWithConfig(streamAllConfig: dao.baseStreamAllConfig, overrideTotalLimit: _pageSize, …)` with `static const int _pageSize` on the caller.

## Where the rest lives

Each area's rules load when you work under it. The repo carries only `AGENTS.md` files, read by Claude Code 2.1.277+ (built-in `agents-md` mod, default `instructionFiles: claude-md-or-agents-md`) and Codex alike. Do not add a `CLAUDE.md` next to one: Claude Code then reads the `CLAUDE.md` and skips that directory's `AGENTS.md`.

- `client/AGENTS.md` — Dart & Flutter structure, idioms, tests, analyze/format/test commands (also binds `packages/`).
- `client/patrol_test/AGENTS.md` — E2E journeys.
- `server/ash/AGENTS.md` — the Ash backend: generators, tests, the baseline schema, its dev database, the local compose stack and `mix precommit`.
- `.github/workflows/AGENTS.md` — CI workflow conventions.
- `.claude/skills/graphql-codegen/SKILL.md` — regenerating GraphQL code and refreshing `schema.graphql`.

## Working agreements

- **Conventional commits.** `feat(scope):`, `fix(scope):`, `refactor(scope):` etc.
- **Do not write summary or README files** after implementing something unless explicitly asked.
- **Branch from the right base.** A PR branch starts from `master`, or from the layer below it when it belongs to a stack. Create, rebase and merge stacks with `/gh-stack`.
- **Production holds real users' data.** Migrations are additive and preserve existing rows; never treat the schema as greenfield or propose dropping what is there.
- **Permissions hang off `auth.users_data.uid`, never `auth_id`.** Anything that changes account identity must preserve that uid; sign-up and sign-in claim a seeded row rather than inserting a second one.

## Names

These rules apply to every language and all code in the repo. A name tells the **whole truth** about its body: whenever you add or rename an identifier, read the body and make the name cover every branch it takes.

- Work that happens only sometimes says when — `maybeFormat`, `_maybeClaimPendingInvitation`, `joinValuesIfKeysDuplicated`.
- One function, one responsibility. A comparator compares a single key, and the sort composes them in order — `byRole(a, b) || byMainPhoneFirst(a, b) || byCreationDate(a, b)`.
- A class names its specific variant — `NationalPhoneDisplayFormat`.
- A function is a specific verb — `uploadUserPhotoToStorage`.
- A return value explains itself — `tryClaimInvitation()` returns whether the claim succeeded.
- A predicate's name _is_ the rule — `if (await mustVerifyEmailBeforeClaiming(authUser))`.
- A condition inside an expression gets an explaining variable — `phoneExists`, `existingPhone`.

**Keep names in sync across the client/server boundary.** A client wrapper, the GraphQL mutation it sends, and the Ash action behind it share one name (`applyInvitationCode` / `apply_invitation_code`). Renaming a deployed mutation is a deploy-order dependency — client and server ship separately, so a mismatched pair fails with an unknown-field error.

## Comments — write none

Aim for **zero** comments. A comment you feel like writing is a name that is not yet telling the whole truth: rename or extract instead, following **Names**. Comments are a maintenance cost and go stale.

Doc comments are allowed only when they add value a name cannot carry. Never restate the code.

**Link the issue behind a workaround.** When code works around a bug that has a GitHub issue, the comment explaining the workaround links it as a markdown link — `[flutter/flutter#90225](https://github.com/flutter/flutter/issues/90225)`.
