# Dart & Flutter — client/ and packages/

Loaded when working under `client/`. `packages/AGENTS.md` points here, so the same rules bind the Dart packages.

`client/analysis_options.yaml` is the authority. It loads solid_lints 2 as an analyzer plugin and switches several of its diagnostics off; what it enables (`member_ordering`, `avoid_multiple_declarations_per_file`, `document_ignores`, `newline_before_return`, `prefer_match_file_name`, …) is enforced by the analyzer and not restated here.

Generated code is exempt. `analyzer: exclude` covers `**.g.dart`, `**.freezed.dart`, `**.graphql.dart` and `**/__generated__/**`, and `client/build.yaml` stamps every `source_gen` output with a `// ignore_for_file: type=lint` preamble. When generated output breaks a rule that matters, fix the generator rather than the output.

## Structure

- **No private `_Foo` widget classes, and no `part`/`part of`.** A sealed class and its subclasses share one file while it stays under 420 lines; `avoid_multiple_declarations_per_file` allows that family, and companions of 15 lines or fewer such as `XKeys`.
- **The one `part` exception is the sealed `AppRoute` family**, which is too large for one file. `core/services/router/app_route.dart` is the library: it holds every import and a `part` per route, and each route stays in its feature's `presentation/navigation/` folder as a `part of` file. A part cannot import or have parts of its own, so a new route adds its imports to `app_route.dart`. A route's fields mirror its screen's constructor parameters, so callers build a route with the screen's own arguments: no wrapper extra objects. Tests cannot subclass `AppRoute`: use real routes and stub what the test router's `builder` renders.
- **Widget keys live with the widget.** Define a widget's test keys in the same file as the widget that renders them.
- **UI is mobile-first and responsive**; keep components modular and reusable rather than page-specific.
- **Never return widgets from methods** (`Widget _buildFoo()`). Extract a widget class, or if the subtree is small (under ~100 lines) inline it at the call site. Non-widget helpers returning `String`/data are fine.
- **No top-level variables or functions.** Use `static` members on the class that owns them.
- **Files under 350 lines; 420 is a hard maximum.** Split before you reach it.
- **`dispose()` is the last member** of any class that has one (controllers, notifiers, form controllers, not only widget `State`).

## Idioms

- **Pattern matching over conditionals.** `switch` on enums and sealed classes for compile-time exhaustiveness; `if (x case final y?)` for non-null matching. Use the object-pattern shorthand `Foo(:final bar?)`, not `Foo(bar: final bar?)`.
- **`package:collection`** (`maxBy`, `groupListsBy`, `EqualitySet.from(EqualityBy(...))` for de-duplication, `.map(...).sum`, …) instead of hand-rolled folds and `{key: value}` map tricks.
- **Domain models are classes, not record typedefs.** Behaviour (display names, formatting) belongs on the class.
- **A helper with one caller is inlined at that caller as an expression.** When it needs a name, make it a private method on the class. Never declare a nested (local) function.
- **`Row.spacing` / `Column.spacing`** instead of `SizedBox` gaps; `MainAxisAlignment.space*` instead of `Expanded` where it fits; `Padding` instead of `SizedBox` in linear layouts.
- **Shape APIs over numeric approximations.** `ShapeDecoration(shape: StadiumBorder())`, not `BorderRadius.circular(999)`; `EdgeInsetsDirectional.only(start:, end:)`, not `fromSTEB`; a bare `const Divider()` over one with hand-set colour and height — the theme owns those.
- **Bind an indexed element to a local** (`final user = users[index];`) before using it more than once.
- **Blank line between `switch` cases that each have their own body.** Stacked case labels that fall through to one shared body stay together with no blank line between them.
- **Return early** rather than nesting in `else`; in loops, `continue` early instead of wrapping the rest of the body in a condition.
- **`dispose()` returns `void`.** `Future<void> dispose() async` compiles and the analyzer accepts it, because any type is assignable to `void` in an override. It is still wrong: awaiting before `super.dispose()` defers the super call past the frame in which the framework treats the state as disposed. Close sinks with `unawaited(x.close())` and keep `dispose` synchronous.
- **`close_sinks` does not catch a missing `dispose()`,** only an incomplete one. A `BehaviorSubject` field on a `State` with no `dispose` at all is invisible to it, so check by hand.
- **Handle errors thoroughly** with typed Dart exceptions, and carry user-facing messages as error codes so they can be localised later.
- **Presentation talks only to blocs/cubits and `application/` advanced_forms form controllers, never to repositories or data sources.**
- **Keep the upstream message** when mapping a Firebase error to a typed exception. The code drives the UI's wording; the original message is what explains the real cause.
- **Import Material and Cupertino from `package:material_ui`**, never `package:flutter/material.dart` (migrated in #295 and #298).

### Unenforced house style

`client/analysis_options.yaml` switches these four off, so nothing fails when you break them. Follow them anyway; a reviewer may still ask.

- **No `!`** (`avoid_non_null_assertion`). Use `?.`, pattern matching, or restructure.
- **No magic numbers** outside widget parameters (`no_magic_number`).
- **Max 7 parameters**, `copyWith` exempt (`number_of_parameters`).
- **Cyclomatic complexity ≤ 10** (`cyclomatic_complexity`).

## Where helpers go

- Never put extension files in `presentation/widgets/` — that directory holds widget classes only.
- One consumer → private member in that file. Multiple consumers → the feature's `utils/`. A model's own display behaviour → a method on the model.
- **File size is not a reason to extract.** A helper of 20 source lines or fewer with a single consumer stays a private instance method on that consumer, even when the file then passes 350 lines. The 420 ceiling still binds. Pulling a helper out to satisfy a line limit also pushes you to pass state in as parameters, which turns a live read into a snapshot taken at the wrong moment.

## Tests

Unit tests are a **design tool**, not a bug-finding tool. Integration and manual testing catch regressions.

- **Assert observable behaviour, never interactions.** Check the state the unit ends in, not which collaborators it called.
- **If there is no observable difference, there is no test.** Delete it rather than asserting an interaction.
- **One behaviour per test.** Don't bundle unrelated assertions.
- **Name tests as behaviour sentences** — `'selecting an existing person makes the user take that person's name'`, not `existingPerson_selectPerson_nameFollowsThePerson`. Say what is observed, never which method ran.
- **Expect the injected value, not a repeated literal** — `expect(user.name, fixture.name)`; find widgets by the widget's own `keyFor(...)`.
- **Mock all external services** (DB, network, filesystem). Tests must not depend on ordering or live infra.
- **Test cubits and blocs with `blocTest`**, never a plain `test` that builds the cubit and closes it by hand. `blocTest` owns the lifecycle; drive the scenario in `act` and assert the resulting state in `expect` or `verify`.
- **New mocks use `mocktail`.** Tests still on `mockito` migrate when touched: stub every member the mockito nice mock answered by default, and `registerFallbackValue` for custom argument types.
- **Drive the path production takes.** Simulate app lifecycle through `WidgetsBindingObserver` under `fakeAsync` instead of calling internals such as `LocalAuthService.scheduleReauth()`.
- **Verify red before trusting green.** Break the line under test, confirm a meaningful failure, restore. A bug fix's regression test must fail on the unfixed code.
- Don't unit-test wiring, DI registration, or configuration — that belongs in integration tests.
- Beyond unit tests: standard **widget tests** for Flutter UI, and **integration tests per API module**. E2E journeys: see `client/patrol_test/AGENTS.md`.

These rules win over any skill (`/dart-testing`, `/mattpocock-skills:tdd`) that allows call-count assertions or prefers a real database.

## Analyze, format, test

Every Dart and Flutter command goes through `fvm` (the repo pins Flutter in `.fvmrc`), from `client/`.

```sh
cd client
fvm dart analyze --fatal-infos
```

No path argument: a directory argument such as `lib` silently drops every solid_lints diagnostic while core diagnostics still show, so the run looks clean; a single file path keeps them. `--plugins` is a no-op (identical diagnostics on Dart 3.12 and 3.13). Keep `--fatal-infos`: most solid_lints diagnostics are `info`, so a plain run exits 0 with findings outstanding. CI runs the same command in `static-analysis.yml`.

**Run `fvm dart format lib test patrol_test` from `client/` before committing**, covering every tracked Dart directory, not only the directory you touched. `dart format .` also walks the untracked `build/` directory and reports about 68 files as changed while git stays clean. The repo has mixed line endings per file; formatting a single subdirectory is how mixed endings have survived review. CI fails on unformatted code (`dart format --set-exit-if-changed .` in `static-analysis.yml`, which prints the diff).

**Tests**: prefer the test bundle for the full suite, from `client/`: `fvm flutter test --dart-define CI=true test/test_bundle.dart $(scripts/generate_test_bundle.sh)`. It is much faster than a bare `fvm flutter test`; see [flutter/flutter#90225](https://github.com/flutter/flutter/issues/90225).

GraphQL documents are `.graphql` files compiled against the Ash SDL `lib/src/core/graphql/schema.graphql`; `scripts/regenerate_graphql.sh` rebuilds every generated file. The sequence and its gotchas are in the `graphql-codegen` skill (`.claude/skills/graphql-codegen/SKILL.md`).
