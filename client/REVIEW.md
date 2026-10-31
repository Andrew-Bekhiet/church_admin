# Review guide: client/ and packages/

These rules add to the root `REVIEW.md`. The conventions themselves live in `client/AGENTS.md`.

## Layering

Human review of #1–#312 raised layering more often than any other topic, and automated review rarely caught it. Check every dependency a PR adds or changes:

- Presentation uses only cubits, blocs, and the `application/` advanced_forms controllers. It never touches repositories, DAOs, or services.
- A cubit or bloc depends on services, repositories, and DAOs, never on another cubit or bloc. When it needs what another cubit knows, inject the stream that cubit reads.
- Services hold no business logic. Logic goes in the cubit or the domain model; formatting goes on the model or in a utility class.
- A lower-level module never imports a higher-level module's model. For example, a GraphQL link must not depend on an auth model.
- A concern lives on the type that owns it. Whether a field is enabled belongs to the queryable type and its fields, not to the UI. Whether an operator is supported belongs to the operator. A feature-flag document change belongs to the DAOs that read the flagged data, not to `StreamableDAO`.
- A one-shot read uses a DAO query, not the first event of a subscription.

## Names

Apply the **Names** section of the root `AGENTS.md` to every identifier the PR adds or renames, including workflow jobs, steps, test names, and test helpers. Read the body, then flag any name that hides a branch, a side effect, or what the return value means, and propose a better one. Names from past reviews:
- `_userStream`: it holds one user.
- `locationFromStreetAddress`, `hasPlaceChangedWithStaleLocation` and `DataCheckDetail`.
- `_finish`: it also tracked analytics.
- `start`: it also saved the template.
- `verifyChatsOpenedInOrder`: it also ran `verifyNoMoreInteractions`.

## Async and lifecycle

Automated review found most of its real bugs in this section. Keep looking here:

- After each `await` in a `State`, controller, or cubit, check `mounted`, `isDisposed`, or `isClosed` before using `context`, a controller, or `emit`.
- When the user makes a second choice while the first lookup is still running, the second choice must win. Check every debounce, `distinct`, and `switchMap` pipeline for that.
- Every `unawaited` future has an error path.
- A second tap must not run a second save or open a second dialog while one is pending.
- Every stream and subject is closed in `dispose`, and `dispose` stays synchronous.
- Optimistic state and server records use the same key, for example person plus audience. An optimistic entry clears only when the server record that confirms it arrives, not on any later snapshot.
- A long-lived connection picks up a refreshed ID token. A subscription started before the refresh restarts with the new token.

## Data on the device

Sembast stores, the KV store, and user preferences survive app upgrades. When a PR changes a stored format or moves a store, it either reads the old values or migrates them. A sentinel value written to disk must still match after it is read back. Route extras are different: they live only in memory (see the root `REVIEW.md`).

## Reuse before adding

- Flag a new widget or helper that duplicates an existing one in `core/widgets`, the feature's widgets, or `utils/`, and name the one to reuse.
- Flag hand-rolled code where a Flutter or package API already does the job, such as an input formatter where `TextFormField.maxLength` works.
- A change to a shared widget changes every screen that uses it. Check that the PR meant that, or limit the change to the caller that needs it.

## Logic slips seen before

- A comparator must define a consistent total order. One that ranks `null` below `false` and `false` below `null` corrupts sorted and grouped results.
- In a `switch` with `when` guards, check that an earlier case cannot swallow a later one.
- Do not chain `??` where any-of-these-is-true was meant. `a ?? b` returns `a` whenever `a` is non-null, even when `a` is `false`.
- A cascade (`value..toIso8601String()`) returns the receiver, not the method's result.

## Layout and theme

- Size layouts to their content. Use `mainAxisSize: .min` on a `Column` or `Row` that does not need to fill its parent. Avoid `IntrinsicHeight` and `IntrinsicWidth` because they are expensive.
- Take text styles from `TextTheme.of(context)` and colours from the theme. Flag inline `TextStyle` and hard-coded colours.
- Use directional geometry (`EdgeInsetsDirectional`, `AlignmentDirectional`), because the UI is RTL. Check the Arabic spelling of any user-facing string the PR adds.

## Tests

Review each test for what it proves:

- Ask whether the test fails if the behaviour breaks. Flag a test that passes regardless: a precondition it never asserts, an earlier state that already satisfies the expectation, a finder that matches an unselected tab, or an `expect(future, completion(…))` nobody awaits.
- Give each assertion an input that a wrong implementation answers differently. Name the mutation that survives when it doesn't. Examples from #374 and #375:
  - An order test whose input order matches the fake's own order cannot fail.
  - Two expected counts of 1 still pass when the counts are swapped.
  - A fetch that returns every person never exercises the missing-person path.
- Keep the values an assertion depends on in the test body: which people are selected and in what order, and who has a phone. A helper may build the screen, but it should take those values as arguments the test passes. `setUp` and fixtures may hold setup the assertion does not depend on, such as a launcher stubbed to succeed.
- Async gaps run under `fakeAsync`, not real timers.
- Flag implementation tests, as `client/AGENTS.md` defines them under Tests: counting calls, testing wiring, or pinning a JSON shape in a test that is not about JSON.
- Build fixtures from model objects, not raw JSON maps. Assert against the injected fixture value and keep any unit conversion (`percent / 100`). For a computed result, write the expected value independently instead of reusing the code under test.
- Find widgets through the widget's own `<Widget>Keys` or `keyFor`, never by text or by rebuilding a `ValueKey` string.
- Test cubits and blocs with `blocTest`.
- When the code branches on a permission variant, such as a manager scoped to some areas versus one who manages all users, check that a test covers each branch.
- Ask for semantics assertions only when the change alters a label, role, or state. Not every widget test needs one.

## Not findings here

- `!` and magic numbers are unenforced house style (`client/AGENTS.md`). Raise them only in code the PR adds, as a single Trivial finding listing every location, and never in moved code.
- Established conventions that are not findings: a `<Widget>Keys` companion class in the widget's file, a sealed family kept in one file, `*Fields` extensions beside their models with a reasoned lint ignore, and private mocks and fakes inside the test file that uses them, as long as `test/src/fakes/` has no shared copy of the same class.
- Arrange and Act steps written out again in each test. In tests, visible setup is worth more than shared helpers, so leave the repetition.
- `.g.dart` output. Review the generator in `packages/church_admin_generator` instead.
