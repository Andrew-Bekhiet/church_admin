# Agent guide — church_admin

Conventions for anyone (human or agent) writing code here. Rules are stated as requirements, not suggestions.

Organise files by feature or domain, not by type. All backend access goes through the database service module (`client/lib/src/core/services/database/`) with `graphql_codegen`-generated operations — features never issue raw GraphQL themselves.

To stream a whole collection rather than the default page size, raise the limit instead of draining pages: `dao.streamAllWithConfig(streamAllConfig: dao.baseStreamAllConfig, overrideTotalLimit: _pageSize, …)` with `static const int _pageSize` on the caller.

## Where the rest lives

Each area's rules load when you work under it. The repo carries only `AGENTS.md` files, read by Claude Code 2.1.277+ (built-in `agents-md` mod, default `instructionFiles: claude-md-or-agents-md`) and Codex alike. Do not add a `CLAUDE.md` next to one: Claude Code then reads the `CLAUDE.md` and skips that directory's `AGENTS.md`.

- `client/AGENTS.md` — Dart & Flutter structure, idioms, tests, analyze/format/test commands (also binds `packages/`).
- `client/patrol_test/AGENTS.md` — E2E journeys.
- `server/hasura/AGENTS.md` — migrations and the auth model.
- `server/firebase/functions/AGENTS.md` — TypeScript Cloud Functions.
- `.github/workflows/AGENTS.md` — CI workflow conventions.
- `.claude/skills/graphql-codegen/SKILL.md` — regenerating GraphQL code and refreshing `schema.graphql`.

## Working agreements

- **Conventional commits.** `feat(scope):`, `fix(scope):`, `refactor(scope):` etc.
- **Do not write summary or README files** after implementing something unless explicitly asked.
- **Branch from the right base.** A PR branch starts from an up-to-date `origin/master` (fetch first), or from the layer below it when it belongs to a stack. Create, rebase and merge stacks with `/gh-stack`.
- **Size a PR for one review sitting:** 500–800 added lines under `lib/`, 1000 at most. When the work needs more, propose the stack layers before writing code, then stop after each layer until it is reviewed.
- **Review your own diff before the first push.** Reviewers apply the `REVIEW.md` beside every changed file (root, `client/`, `server/hasura/`, `server/firebase/functions/`), and most review rounds here re-find what those files already list, above all the async and lifecycle checks in `client/REVIEW.md`. Read them, walk your diff against them, and fix what they catch before anyone else has to post it.
- **Read a file's recent history before moving or rewriting it** (`git log -5 -p -- <file>`). Refactors here have silently reverted fixes from the week before.
- **CodeRabbit reviews every push on its own.** Its review quota is small, so post `@coderabbitai review` only when its review is paused or stuck on an older head, once, and never `full review` or `approve`. When it reports a rate limit, read the reset time from its comment rather than guessing.
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

**Keep names in sync across the client/server boundary.** A client wrapper, the callable it invokes, and the file exporting it share one name (`applyInvitationCode` / `apply_invitation_code.ts`). Renaming a deployed callable is a deploy-order dependency — client and functions ship separately, so a mismatched pair fails with `NOT_FOUND`.

## Comments — write none

Aim for **zero** comments. A comment you feel like writing is a name that is not yet telling the whole truth: rename or extract instead, following **Names**. Comments are a maintenance cost and go stale.

Doc comments are allowed only when they add value a name cannot carry. Never restate the code.

**Link the issue behind a workaround.** When code works around a bug that has a GitHub issue, the comment explaining the workaround links it as a markdown link — `[flutter/flutter#90225](https://github.com/flutter/flutter/issues/90225)`.
