# Porting a DAO folder from Hasura to Ash

Reference port: `gql_definintions/metadata/` (commit `refactor(data): port the metadata lookups to Ash`). Paths are relative to `client/`. One folder per commit: `refactor(data): port <entity> to Ash (ENG-266)`.

## Steps

1. **Read** the folder's documents, `<entity>_dao.dart`, the model's `fromJson`, and every feature caller of the DAO (their calls must keep compiling). In `lib/src/core/graphql/schema.graphql` find the type, the list root (`churches(...)`), the get root (`church(id:)`), `create<T>`/`update<T>`/`destroy<T>` with their `Create<T>Input`, `<T>FilterInput` and `<T>SortField`.
2. **Tests first**, in `test/src/core/services/database/gql_definintions/<entity>/`, run red before the port:
   - Backend: `final table = FakeAshTable(typename: 'Church', listRoot: 'churches', rows: [shown, hidden]);` (model objects; the get root and `create<T>` are derived from `typename`). `FakeAshBackend([table]).db` is a real `DatabaseService`.
   - List: `expect(FakeAshBackend.settledListing([table], (db) => db.metadata.churches.streamAll()), [shown]);` under the name `'hidden churches are left out of the church list'`.
   - Live: in `fakeAsync`, listen to `streamAll()`, elapse `FakeAshBackend.settleTime`, `table.add(model)`, `backend.announce([EntityChange(type: 'Church', id: model.id, op: 'insert')])`, elapse again, expect the new list.
   - Create: `final answered = await dao.createObject(newObject: draft);` then `expect(answered, draft.copyWith(id: answered.id))`; set the table's `createdPresets` to what the server's create action sets.
   - Table-driven example for many similar DAOs: `test/.../metadata/lookup_cases.dart`. Expect the fixture objects, never repeated literals.
3. **Documents** in the folder (fragment names are global across `.graphql`; name each after its type):
   - `fragments.graphql`: `fragment Church on Church { id name isHidden }` with the model's JSON keys.
   - `queries.graphql`: `query churches($filter: ChurchFilterInput, $sort: [ChurchSortInput], $first: Int, $after: String) { churches(filter: $filter, sort: $sort, first: $first, after: $after) { count endKeyset results { ...Church } } }`; a get is `query church($id: ID!) { church(id: $id) { ...Church } }`.
   - `mutations.graphql`: `mutation createChurch($input: CreateChurchInput!) { createChurch(input: $input) { result { ...Church } } }`.
4. **Regenerate**: `client/scripts/regenerate_graphql.sh` with the sandbox off (full build; never `--build-filter`). It also rewrites `lib/src/core/graphql/__generated__/schema.graphql.dart` with the `Input_*` classes your documents use: commit it.
5. **DAO**: mix in `KeysetStreamableDAO<T>`, `CreatableDAO<T>`, … (or `FullCRUDDAO<T>`); import `<folder>/__generated__/{queries,mutations}.graphql.dart`.
   - `StreamAllConfig<T> get baseStreamAllConfig => const StreamAllConfig(document: documentNodeQuerychurches, arguments: ListQueryArguments.fromParameters);`
   - Defaults from an old `streamAll` override move into `arguments: (p) => ListQueryArguments.fromParameters(p, defaultWhere: [...], defaultOrderBy: [...])`; delete the override. Search becomes `name ilike %s%` there.
   - Create: `varsConstructor: ({required newObject}) => Variables_Mutation_createChurch(input: Input_CreateChurchInput(name: newObject.name)).toJson()`. Send the input's fields only; the server sets presets.
   - Extra reads: reuse the list document through `query(where:, orderBy:, limit: AshPagination.maxPageSize)` before adding a document; a single get parses with `AshResultParser(document).entity(fromJson)`.
   - `Input_X(...)` omits nulls. An update that must clear a column or an address key builds `Input_UpdateXInput.fromJson({...})`, which keeps explicit nulls. Send null for columns the model owns; omit only list or object arguments where null means "leave untouched".
   - Ids are `String`: drop `.toUuid()`. Keep `throw UnimplementedError()` for configs the old DAO never served.
5b. **Non-`DAOBase` DAO** (history, logs): page with `KeysetPageQuery` inside `KeysetPaginatedStream<T, void>(registry: db.liveQueries, parametersStream: Stream.value(null), fetchChunk: …)`. An unpaginated live list is `LiveQuery<List<T>>(kind: LiveQueryKind.list, …)`. Variables come from the generated `Variables_*`/`Input_*`; operators are `eq`, not `$eq`; enums are `Enum_<T>SortField`/`Enum_SortOrder`.
6. **Models**: change only `fromJson`/converters where the SDL shape differs (§5 of `client-data-layer.md`). Never rename model fields.
7. A type with no `id` in the SDL is selected without an id and added to `GqlTypePolicies` as `_embedded`.
7b. Shared Ash fragments live in `gql_definintions/gql/fragments.graphql` (`User`, `Address`, `LatestEdit`, `LatestVisit`, `LatestFatherVisit`, `LatestCall`, `LatestConfession`, `LatestKodas`) and `gql_definintions/contacts/fragments.graphql` (`Contact`, `FamilyContact`): spread them, never define a local copy.
8. **Contract**: add the queryable names to `portedEntities` in `test/src/core/services/database/ash_query/schema_contract_test.dart`. A failure lists server gaps: report them; fix only client-side untruths (the metadata port marked StudyYear's synthesized `id` `isOrderable: false`).

## Pitfalls

- `FakeAshTablesLink` sees only variables: put `filter`/`sort` in variables, not inline in a document.
- A tear-off `arguments` makes the config const: write `const StreamAllConfig(...)` or `prefer_const_constructors` fires.
- Lane worktrees refuse chained/looped shell commands that touch git: one plain command per call, `git -C <lane>`.
- `check_generated_code.sh` needs a clean tree and the pinned SDK: commit, then `~/.claude/scripts/fvm-in client exec scripts/check_generated_code.sh`.
- `sorted_list_key_field_completeness_test.dart` checks a DAO whose config is a `StreamAllConfig` against `schema.graphql` with the Ash rules (`KeysetPageOf*`, `*Result` are transient); a new `.graphql` list needs `id` on every object it selects.
- Pass `fvm-in` an absolute client path.
- Commands in fakes: `FakeAshBackend(tables, mutations: {...})` handlers.
- A non-`ID` model row (no `id` field) gets a `__keyset` in its fake table.
- `git rm` stages deletions: `git reset -q` before the first commit, and stage explicit paths.
- A DAO with `DataCheckFreeDocuments` needs `initGlobalProviderContainer([featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo())])` in `setUp` and `resetGlobalProviderContainer` in `tearDown`.
- A join-row `manyToMany` field breaks the Ash path: make it a plain `List<T>`. If feature code redirects through the old `*Rel` field, hand-write it in an `extensible: true` `XFields` class under the join relationship's server name.
- `DateTime` fixtures must be local: `LocalDateTimeConverter` returns local times.
- Feature tests fake DAOs with `Fake implements XDAO`; they keep compiling as long as public signatures stay.
- A `latestEdit`/`latestVisit` object has an `id`: the shared `Latest*` fragments select it.
- A list taking `filter`/`sort` on a nested field (`classes(filter: $classesFilter)`) needs those variables declared in the query and the field directly in the operation: the fake applies them only there, not inside fragment spreads, and ignores literal arguments.
- Opt in to `FakeAshTable(projectsSelections: true)` in a port's tests, so a field the document forgets reads as missing.
- A sort on a relation whose type's key field is not `id` (StudyYear's `order`) must also select `id`: `NestedSelectionBuilder` does this, and the type needs an Ash `TypePolicy(keyFields: …)`.
- A Hasura document that ordered by a relationship loses that order: Ash sorts only on own attributes, calculations and aggregates. Sort in the model converter with single-key static comparators.
- A server field the SDL lacks: stand it in by hand in `schema.graphql` in its own commit, regenerate, and report it. The real SDL replaces it at merge.
- A string key that is an `ID` in the SDL (`User.uid`) uses `@QueryableField.self`.
- A rejection test uses `isA<BackendException>()`; `forbidden`, `not_found` and `unauthenticated` have their own subclasses.
- A DAO that reads every row for an analysis needs a read-all-pages helper (`KeysetPageQuery.fetchChained`): `default_limit` is 100, so one page silently truncates.
- One Ash document per root field: split a multi-root Hasura document and run the parts with `(a, b).wait`.
- `FakeAshTable(nestedFilterVariables: …)` plus nested object filters let analysis tests assert domain results instead of echoed rows.
- Records with `List`/`Set` fields compare by identity in `expect`: assert an Equatable summary of them.
- A sort on a relationship path needs a server `first` aggregate. Never hide a missing one with `orderable: false` when a feature sorts by it.
- A queryable whose key field is not `id` needs an Ash `TypePolicy(keyFields: …)` in `GqlTypePolicies`.
- Never send an id the client made up locally for a reconciled child (a contact, an address): the server rejects it with `contact/not-owned`. Send the children without ids, or only the ones the server owns.
- `FakeAshTablesLink` answers a multi-root query root by root, so a document may select several roots and the fake serves each from its own table.
- A join model with no server relationship (`FamiliesFamilies`) is deleted, and a filter through it redirects through the related type's `id`.
- An ID-typed field (`personId`, `familyId`) uses `QueryableField.self`, not a plain column field.
- A wire `[JsonString]` list arrives as one JSON string per element (`DataCheck.details`): decode each element in `fromJson` and encode it in `toJson`.
- A relationship the server exposes is selected and filtered directly (`contacts(filter: {personType: {isFamilyAdmin: {eq: true}}}) { personType { ...PersonType } }`); never join it client-side from a second root.
- Fake rows of nested objects need `__typename` (and an `id` for keyed types) or the cache drops their fields: wrap rows like `OrganizationRow._asServerObjects`, after `jsonDecode(jsonEncode(model.toJson()))`.
- A desired-state command whose form shows only part of a list (family contacts) needs `oldObject`: override `updateObject`, send the list only when it differs from what was loaded, and merge in the server's rows the form never showed.
- Server field names on a Queryable: `graphqlName:` on `QueryableField`, `.history` and `.manyToMany`. It becomes `FieldMetadata.graphqlName`, read only by the Ash query builders; `FieldMetadata.name` stays the Dart field name (without a trailing `$`), because saved sorts and filters store it.
- A field the server keeps as a `Date` (birthdate, a confession or kodas day) takes `dateOnly: true` on its `QueryableField` (on the history or latest record for their times); the schema contract test fails on a date sent in the wrong format.
- A layer or analysis that reads every row uses one keyset query per root through `KeysetRowsReader`; the fake reads only `filter`/`first`/`after` and ignores `@include`, so per-root variables in a multi-root document go untested.

## Done

- `fvm dart analyze --fatal-infos client` from the repo root: no issues.
- `~/.claude/scripts/fvm-in client flutter test --dart-define CI=true test` passes (background, log to a file).
- `fvm dart format lib test patrol_test` from `client/` changes nothing; `check_generated_code.sh` shows no drift.
- `git status` clean; report server gaps and feature-file changes.
