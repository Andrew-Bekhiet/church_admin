# Agent guide — church_admin

Conventions for anyone (human or agent) writing code here. Rules are stated as requirements, not suggestions.

## Layout

| Path                         | What it is                                                                                          |
| ---------------------------- | --------------------------------------------------------------------------------------------------- |
| `client/`                    | Flutter app. Riverpod providers + BLoC, GoRouter, `graphql_codegen` against Hasura.                 |
| `server/hasura/`             | Hasura metadata + Postgres migrations (`migrations/default/<timestamp>_<name>/{up,down}.sql`).      |
| `server/firebase/functions/` | TypeScript Cloud Functions: auth blocking functions, callables, storage proxy, export.              |
| `server/postgres/`           | Postgres image (`ghcr.io/railwayapp-templates/timescale-postgis-ssl:pg17-ts2.17`) and init scripts. |

Organise files by feature or domain, not by type. All backend access goes through the database service module (`client/lib/src/core/services/database/`) with `graphql_codegen`-generated operations — features never issue raw GraphQL themselves.

To stream a whole collection rather than the default page size, raise the limit instead of draining pages: `dao.streamingProxy.streamAll(streamAllConfig: dao.baseStreamAllConfig, overrideTotalLimit: _pageSize, …)` with `static const int _pageSize` on the caller.

## Working agreements

- **Conventional commits.** `feat(scope):`, `fix(scope):`, `refactor(scope):` etc.
- **Do not write summary or README files** after implementing something unless explicitly asked.
- Prefer clean, SOLID, DRY code; break large units into smaller ones; use design patterns where they fit.
- **Branch from the right base.** A PR branch starts from `master`, or from the layer below it when it belongs to a stack. Create, rebase and merge stacks with `/gh-stack`.

## Names

These rules apply to every language and all code in the repo. A name tells the **whole truth** about its body: whenever you add or rename an identifier, read the body and make the name cover every branch it takes.

- Work that happens only sometimes says when — `maybeFormat`, `_maybeClaimPendingInvitation`, `joinValuesIfKeysDuplicated`.
- One function, one responsibility. A comparator compares a single key, and the sort composes them in order — `byRole(a, b) || byMainPhoneFirst(a, b) || byCreationDate(a, b)`.
- A class names its specific variant — `NationalPhoneDisplayFormat`.
- A function is a specific verb — `uploadUserPhotoToStorage`.
- A return value explains itself — `tryClaimInvitation()` returns whether the claim succeeded.
- A predicate's name _is_ the rule — `if (await mustVerifyEmailBeforeClaiming(authUser))`.
- A condition inside an expression gets an explaining variable — `phoneExists`, `existingPhone`.

**Keep names in sync across the client/server boundary.** A client wrapper, the callable it invokes, and the file exporting it share one name (`tryClaimInvitation` / `try_claim_invitation.ts`). Renaming a deployed callable is a deploy-order dependency — client and functions ship separately, so a mismatched pair fails with `NOT_FOUND`.

## Comments — write none

Aim for **zero** comments. A comment you feel like writing is a name that is not yet telling the whole truth: rename or extract instead, following **Names**. Comments are a maintenance cost and go stale.

Doc comments are allowed only when they add value a name cannot carry. Never restate the code.

**Link the issue behind a workaround.** When code works around a bug that has a GitHub issue, the comment explaining the workaround links it as a markdown link — `[flutter/flutter#90225](https://github.com/flutter/flutter/issues/90225)`.

## Dart & Flutter

Follow [`solid_lints`](https://raw.githubusercontent.com/solid-software/solid_lints/refs/heads/master/lib/analysis_options.yaml). Don't try to add it as a dependency if it is not there. `client/analysis_options.yaml` is the enforced baseline on top of that, and it is the authority: it switches several solid_lints diagnostics off.

Generated code is exempt. `analyzer: exclude` covers `**.g.dart`, `**.freezed.dart`, `**.gql.dart`, `**.graphql.dart` and `**/__generated__/**`, and `client/build.yaml` stamps every `source_gen` output with a `// ignore_for_file: type=lint` preamble. When generated output breaks a rule that matters, fix the generator rather than the output.

### Structure

- **One widget/class per file**, public. No private `_Foo` widget classes, no two widgets sharing a file.
- **Widget keys live with the widget.** Define a widget's test keys in the same file as the widget that renders them.
- **UI is mobile-first and responsive**; keep components modular and reusable rather than page-specific.
- **Never return widgets from methods** (`Widget _buildFoo()`). Extract a widget class, or if the subtree is small (under ~100 lines) inline it at the call site. Non-widget helpers returning `String`/data are fine.
- **No top-level variables or functions.** Use `static` members on the class that owns them.
- **Files under 350 lines; 420 is a hard maximum.** Split before you reach it.
- **Member order:** every static first as one block, then instance members. `static_getters_setters` → `static_fields` → `static_methods` → `fields` → `getters_setters` → `constructors` → `methods`. The static block puts getters and setters before fields, which is the reverse of the instance block.
- **Widget state order:** `initState` → `didChangeDependencies` → `didUpdateWidget` → `build` → `deactivate` → `dispose`. `build` sits fourth, not first.
- **`prefer_match_file_name`** — the public class name matches the file name.

### Idioms

- **Pattern matching over conditionals.** `switch` on enums and sealed classes for compile-time exhaustiveness; `if (x case final y?)` for non-null matching. Use the object-pattern shorthand `Foo(:final bar?)`, not `Foo(bar: final bar?)`.
- **`package:collection`** (`maxBy`, `groupListsBy`, `EqualitySet.from(EqualityBy(...))` for de-duplication, `.map(...).sum`, …) instead of hand-rolled folds and `{key: value}` map tricks.
- **Domain models are classes, not record typedefs.** Behaviour (display names, formatting) belongs on the class.
- **A helper with one caller is inlined at that caller** — as an expression, or a local closure when it needs a name (`int nullsFirst(int? a, int? b) => …` inside the method that sorts). Do not add a private static method for it.
- **`Row.spacing` / `Column.spacing`** instead of `SizedBox` gaps; `MainAxisAlignment.space*` instead of `Expanded` where it fits; `Padding` instead of `SizedBox` in linear layouts.
- **Shape APIs over numeric approximations.** `ShapeDecoration(shape: StadiumBorder())`, not `BorderRadius.circular(999)`; `EdgeInsetsDirectional.only(start:, end:)`, not `fromSTEB`; a bare `const Divider()` over one with hand-set colour and height — the theme owns those.
- **Bind an indexed element to a local** (`final user = users[index];`) before using it more than once.
- **Blank line between `switch` cases that each have their own body.** Stacked case labels that fall through to one shared body stay together with no blank line between them.
- **Blank line before `return`** unless it is the block's only statement (`newline_before_return`). Return early rather than nesting in `else`; in loops, `continue` early instead of wrapping the rest of the body in a condition.
- **`dispose()` returns `void`.** `Future<void> dispose() async` compiles and the analyzer accepts it, because any type is assignable to `void` in an override. It is still wrong: awaiting before `super.dispose()` defers the super call past the frame in which the framework treats the state as disposed. Close sinks with `unawaited(x.close())` and keep `dispose` synchronous.
- **`close_sinks` does not catch a missing `dispose()`,** only an incomplete one. A `BehaviorSubject` field on a `State` with no `dispose` at all is invisible to it, so check by hand.
- **Handle errors thoroughly** with typed Dart exceptions, and carry user-facing messages as error codes so they can be localised later.
- **Presentation talks only to blocs/cubits, never to repositories or data sources.**
- **Keep the upstream message** when mapping a Firebase error to a typed exception. The code drives the UI's wording; the original message is what explains the real cause.

#### Unenforced house style

`client/analysis_options.yaml` switches these four off, so nothing fails when you break them. Follow them anyway; a reviewer may still ask.

- **No `!`** (`avoid_non_null_assertion`). Use `?.`, pattern matching, or restructure.
- **No magic numbers** outside widget parameters (`no_magic_number`).
- **Max 7 parameters**, `copyWith` exempt (`number_of_parameters`).
- **Cyclomatic complexity ≤ 10** (`cyclomatic_complexity`).

### Where helpers go

- Never put extension files in `presentation/widgets/` — that directory holds widget classes only.
- One consumer → private member in that file. Multiple consumers → the feature's `utils/`. A model's own display behaviour → a method on the model.
- **File size is not a reason to extract.** A helper of 20 source lines or fewer with a single consumer stays a private instance method on that consumer, even when the file then passes 350 lines. The 420 ceiling still binds. Pulling a helper out to satisfy a line limit also pushes you to pass state in as parameters, which turns a live read into a snapshot taken at the wrong moment.

## Tests

Unit tests are a **design tool**, not a bug-finding tool. Integration and manual testing catch regressions.

- **Assert observable behaviour, never interactions.** Check the state the unit ends in, not which collaborators it called.
- **If there is no observable difference, there is no test.** Delete it rather than asserting an interaction.
- **One behaviour per test.** Don't bundle unrelated assertions.
- **Name tests as behaviour sentences** — `'selecting an existing person makes the user take that person's name'`, not `existingPerson_selectPerson_nameFollowsThePerson`. Say what is observed, never which method ran.
- **Mock all external services** (DB, network, filesystem). Tests must not depend on ordering or live infra.
- **Test cubits and blocs with `blocTest`**, never a plain `test` that builds the cubit and closes it by hand. `blocTest` owns the lifecycle; drive the scenario in `act` and assert the resulting state in `expect` or `verify`.
- **New mocks use `mocktail`.** Tests still on `mockito` migrate when touched: stub every member the mockito nice mock answered by default, and `registerFallbackValue` for custom argument types.
- **Drive the path production takes.** Simulate app lifecycle through `WidgetsBindingObserver` under `fakeAsync` instead of calling internals such as `LocalAuthService.scheduleReauth()`.
- **Verify red before trusting green.** Break the line under test, confirm a meaningful failure, restore. A bug fix's regression test must fail on the unfixed code.
- Don't unit-test wiring, DI registration, or configuration — that belongs in integration tests.
- Beyond unit tests: standard **widget tests** for Flutter UI, and **integration tests per API module**.

### E2E journeys

- **Run journeys through `client/scripts/e2e.sh [patrol_test/<file>_test.dart]`**, with the sandbox off. It resets the `church-admin-e2e` simulator and a hermetic backend before each journey. Run one at a time: concurrent runs share that simulator and backend.
- **Start the app with `E2eApp.launchSignedOut`**, never `app.main` directly. It dismisses the iOS notification permission dialog that `flutter_local_notifications` raises during startup, and waits for startup to finish before signing out.
- **Find widgets by `Key`** from the widget's `<Widget>Keys` class, never by Arabic text. Find list items by id.

## Backend

### Migrations

- One directory per migration: `server/hasura/migrations/default/<timestamp>_<name>/{up,down}.sql`.
- **`<timestamp>` is the full Unix time in milliseconds when the migration was created**, as `hasura migrate create` writes it (e.g. `1762641860280`). Never a rounded or hand-picked number such as `1790400000000`: those collide across branches and misstate the order the migrations were written in.
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

- **Production holds real users' data.** Migrations are additive and preserve existing rows; never treat the schema as greenfield or propose dropping what is there.
- Lint/format with `sqlfluff` when it is installed.
- Migrations and functions deploy automatically on merge.

### Auth model

Permissions hang off `auth.users_data.uid` — never `auth_id`. `auth.users_permissions`, `auth.users_admin_on` and `persons.uid` are all keyed on it, and the JWT carries only `x-hasura-user-id = uid`. Anything that changes account identity must preserve that uid.

Before reusing a SQL permission function such as `auth.user_can_edit_user`, check it against the current Hasura metadata permissions for the tables involved. The two are maintained separately and can disagree.

`auth_id` is nullable so an admin can seed a pre-approved user — a `users_data` row plus its permission rows and a `persons` link — before the Firebase account exists. Sign-up and sign-in **claim** that row by attaching `auth_id` to it; they must never insert a second row for an address that already has one, or the seeded permissions are lost.

### TypeScript functions

- Errors: wrap in `try`/`catch`, `console.error`, return a null/false fallback — match the surrounding file rather than throwing through it.
- Callables assert the caller first (`assertUserAuthenticatedAndApproved`, or `assertUserEmailVerified` where approval cannot exist yet).
- Error messages should be user-friendly and localisable via error codes.

## Tooling gotchas

**GraphQL codegen** — the split is not a build_runner output. `graphql_codegen` always emits `schema.graphql.dart` as one ~166k-line file, and `client/scripts/split_schema_graphql_dart.sh` rewrites that file in place into a stub plus `schema_partN.dart`. Any build that regenerates it destroys the split.

On the current toolchain (build*runner 2.15.2), `--build-filter` does not merely scope the build — from a cold cache (no `.dart_tool/build`, e.g. a fresh clone or CI runner) it deletes every generated output \_outside* the filter and still re-collapses `schema.graphql.dart`, because `graphql_codegen` runs lazily regardless of the filter. **Prefer a full `dart run build_runner build`** for hand-run builds, then restore the stub and clean up:

```sh
cd client
dart run build_runner build
git checkout -- lib/src/core/graphql/__generated__/schema.graphql.dart
rm -f lib/src/core/graphql/__generated__/schema.graphql.dart.bak
```

Also check `git status` afterward for unexpected changes to unrelated `.gql.dart`/`.g.dart` files, and `git checkout --` anything a full build touched that you didn't intend to change.

Run the full sequence **only when `.graphql` documents or the Hasura schema change**, and re-split afterwards:

```sh
cd client
rm -r lib/src/core/graphql/__generated__/ && dart run build_runner build && ./scripts/split_schema_graphql_dart.sh
```

If an unfiltered build slips through, `git checkout -- lib/src/core/graphql/__generated__/schema.graphql.dart` restores the stub; the `schema_partN.dart` files are untouched. The split script also leaves an untracked `schema.graphql.dart.bak` — delete it.

`--delete-conflicting-outputs` is gone from build_runner; conflicting outputs are deleted by default.

**GraphQL schema** — `client/lib/src/core/graphql/schema.graphql` is the `user`-role schema Hasura serves. Refresh it with `client/scripts/fetch_graphql_schema.sh`, which reads `HASURA_GRAPHQL_ENDPOINT` and `HASURA_GRAPHQL_ADMIN_SECRET` (prod: `set -a && source server/hasura/.env && set +a` first), or with `client/scripts/check_graphql_schema.sh --write`, which boots a throwaway Hasura from this commit's migrations and metadata. The VS Code tasks wrap both.

CI enforces both halves: `check_graphql_schema.sh` fails when `schema.graphql` drifts from the migrations and metadata, and `check_generated_code.sh` fails when committed build_runner outputs differ from a fresh build (outputs of changed files on PRs, everything on master).

**Lints** — `dart analyze` does load the solid_lints plugin. It is declared under `plugins:` in `client/analysis_options.yaml` and the analyzer picks it up on its own, so a plain `dart analyze` already reports diagnostics such as `prefer_match_file_name`. `--plugins` is a real but undocumented flag, and redundant on Dart 3.12.2. Run the same gate CI runs:

```sh
cd client
dart analyze --plugins --fatal-infos
```

Keep `--fatal-infos`. Most solid_lints diagnostics are `info`, so a plain run exits 0 with findings outstanding.

**Run `dart format` over the whole package before committing**, not only the directory you touched. It also normalises a mixed-ending file back to one style. Formatting a single subdirectory is how the mixed endings above survived review. CI fails on unformatted code (`dart format --output=none --set-exit-if-changed .`).

## CI workflows

**Set `working-directory` once per workflow, never per step.** A workflow that only touches `client/` sets `defaults.run.working-directory: client`; one that only touches a server project sets it to that project (`server/firebase/functions`). Every `run` step then starts there and names paths relative to it, and a step needing a subdirectory `cd`s into it inside `run`. A workflow that spans both sets no `working-directory` at all and spells every path from the repo root (`client/scripts/…`). `defaults` does not reach action inputs under `with:`, so those keep repo-root paths.
