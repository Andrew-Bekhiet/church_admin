# Agent guide — church_admin

Conventions for anyone (human or agent) writing code here. Rules are stated as requirements, not suggestions.

## Layout

| Path                            | What it is                                                                                     |
| ------------------------------- | ---------------------------------------------------------------------------------------------- |
| `client/`                       | Flutter app. Riverpod providers + BLoC, GoRouter, `graphql_codegen` against Hasura.            |
| `server/hasura/`                | Hasura metadata + Postgres migrations (`migrations/default/<timestamp>_<name>/{up,down}.sql`). |
| `server/firebase/functions/`    | TypeScript Cloud Functions: auth blocking functions, callables, storage proxy, export.         |
| `server/postgres/`              | Postgres image (`ghcr.io/railwayapp-templates/timescale-postgis-ssl:pg17-ts2.17`) and init scripts. |
| `server/church_admin_migrator/` | One-off data import/export tooling.                                                            |

Organise files by feature or domain, not by type. All backend access goes through the database service module (`client/lib/src/core/services/database/`) with `graphql_codegen`-generated operations — features never issue raw GraphQL themselves.

## Working agreements

- **Conventional commits.** `feat(scope):`, `fix(scope):`, `refactor(scope):` etc.
- **Do not write summary or README files** after implementing something unless explicitly asked.
- Prefer clean, SOLID, DRY code; break large units into smaller ones; use design patterns where they fit.

## Comments — write none

Aim for **zero** comments. A comment you feel like writing is a signal to rename or extract instead. Comments are a maintenance cost and go stale.

Instead of a comment:

- Extract a predicate whose name _is_ the rule — `if (await mustVerifyEmailBeforeClaiming(user))`.
- Rename so a return value explains itself — `tryClaimInvitation()` rather than `claimInvitation()` with a doc comment explaining the `bool`.
- Use a specific verb — `uploadUserPhotoToStorage`, not `copyProviderPhoto`.
- Prefix conditional work with `_maybe` — `_maybeClaimPendingInvitation`.

Doc comments are allowed only when they add value a name cannot carry. Never restate the code.

**Keep names in sync across the client/server boundary.** A Dart wrapper, the callable it invokes, and the file exporting it should share one name (`tryClaimInvitation` / `try_claim_invitation.ts`). Renaming a deployed callable is a deploy-order dependency — client and functions ship separately, so a mismatched pair fails with `NOT_FOUND`.

## Dart & Flutter

Follow [`solid_lints`](https://raw.githubusercontent.com/solid-software/solid_lints/refs/heads/master/lib/analysis_options.yaml) — including in generated code. Don't try to add it as a dependency if it is not there. `client/analysis_options.yaml` is the enforced baseline on top of that.

### Structure

- **One widget/class per file**, public. No private `_Foo` widget classes, no two widgets sharing a file.
- **UI is mobile-first and responsive**; keep components modular and reusable rather than page-specific.
- **Never return widgets from methods** (`Widget _buildFoo()`). Extract a widget class, or if the subtree is small (under ~100 lines) inline it at the call site. Non-widget helpers returning `String`/data are fine.
- **No top-level variables or functions.** Use `static` members on the class that owns them.
- **Files under 350 lines; 420 is a hard maximum.** Split before you reach it.
- **Member order:** fields → getters/setters → constructors → methods, statics first within each group. Widget state: `initState` → `build` → `didChangeDependencies` → `didUpdateWidget` → `deactivate` → `dispose`.
- **`prefer_match_file_name`** — the public class name matches the file name.

### Idioms

- **Pattern matching over conditionals.** `switch` on enums and sealed classes for compile-time exhaustiveness; `if (x case final y?)` for non-null matching.
- **`package:collection`** (`maxBy`, `groupListsBy`, …) instead of hand-rolled folds.
- **Domain models are classes, not record typedefs.** Behaviour (display names, formatting) belongs on the class.
- **`Row.spacing` / `Column.spacing`** instead of `SizedBox` gaps; `MainAxisAlignment.space*` instead of `Expanded` where it fits; `Padding` instead of `SizedBox` in linear layouts.
- **No `!`** (`avoid_non_null_assertion`) — use `?.`, pattern matching, or restructure.
- **No magic numbers** outside widget parameters. Max 7 parameters (`copyWith` exempt). Cyclomatic complexity ≤ 10.
- **Blank line before `return`** unless it is the block's only statement. Return early rather than nesting in `else`.
- **Handle errors thoroughly** with typed Dart exceptions, and carry user-facing messages as error codes so they can be localised later.

### Where helpers go

- Never put extension files in `presentation/widgets/` — that directory holds widget classes only.
- One consumer → private member in that file. Multiple consumers → the feature's `utils/`. A model's own display behaviour → a method on the model.

## Tests

Unit tests are a **design tool**, not a bug-finding tool. Integration and manual testing catch regressions.

- **Assert observable behaviour, never interactions.** Check the state the unit ends in, not which collaborators it called.
- **If there is no observable difference, there is no test.** Delete it rather than asserting an interaction.
- **One behaviour per test.** Don't bundle unrelated assertions.
- **Name subject/scenario/result** — `reloadUser_whenTokenCarriesNoHasuraUserId_onboardsTheInvitee`.
- **Mock all external services** (DB, network, filesystem). Tests must not depend on ordering or live infra.
- **Verify red before trusting green.** Break the line under test, confirm a meaningful failure, restore.
- Don't unit-test wiring, DI registration, or configuration — that belongs in integration tests.
- Beyond unit tests: standard **widget tests** for Flutter UI, and **integration tests per API module**.

## Backend

### Migrations

- One directory per migration: `server/hasura/migrations/default/<timestamp>_<name>/{up,down}.sql`.
- **Lowercase SQL keywords** and `if exists` / `if not exists` guards, matching recent siblings.
- Write a real `down.sql`. Prefer **failing loudly** over destroying data:

  ```sql
  do $$
  begin
    if exists (select 1 from auth.users_data where auth_id is null) then
      raise exception 'Cannot roll back: % pending invite(s) remain', (select count(*) from auth.users_data where auth_id is null);
    end if;
  end $$;
  ```

- Lint/format with `sqlfluff` when it is installed.
- Migrations and functions deploy automatically on merge.

### Auth model

Permissions hang off `auth.users_data.uid` — never `auth_id`. `auth.users_permissions`, `auth.users_admin_on` and `persons.uid` are all keyed on it, and the JWT carries only `x-hasura-user-id = uid`. Anything that changes account identity must preserve that uid.

### TypeScript functions

- Errors: wrap in `try`/`catch`, `console.error`, return a null/false fallback — match the surrounding file rather than throwing through it.
- Callables assert the caller first (`assertUserAuthenticatedAndApproved`, or `assertUserEmailVerified` where 2FA/approval cannot exist yet).
- Error messages should be user-friendly and localisable via error codes.

## Tooling gotchas

**GraphQL codegen** — the split is not a build_runner output. `graphql_codegen` always emits `schema.graphql.dart` as one ~166k-line file, and `client/scripts/split_schema_graphql_dart.sh` rewrites that file in place into a stub plus `schema_partN.dart`. Any build that regenerates it destroys the split.

So **default to a `--build-filter` scoped to what you changed** — that keeps the schema out of the build's output set:

```sh
cd client
dart run build_runner build --delete-conflicting-outputs --build-filter="test/**.mocks.dart"
dart run build_runner build --delete-conflicting-outputs --build-filter="lib/src/features/<feature>/**"
```

Repeat the flag to cover several areas. The filter must match everything you changed — scoping to mocks while a `freezed` model also changed leaves that model stale.

Run the full sequence **only when `.graphql` documents or the Hasura schema change**, and re-split afterwards:

```sh
cd client
rm -r lib/src/core/graphql/__generated__/ && dart run build_runner build && ./scripts/split_schema_graphql_dart.sh
```

If an unfiltered build slips through, `git checkout -- lib/src/core/graphql/__generated__/schema.graphql.dart` restores the stub; the `schema_partN.dart` files are untouched. The split script also leaves an untracked `schema.graphql.dart.bak` — delete it.

**Lints** — `dart analyze` does not load the solid_lints plugin and reports a false "clean". Use the dart MCP `analyze_files` on `.` (not a single file), re-run until counts stabilise, and cross-check a flagged line against the file on disk.
