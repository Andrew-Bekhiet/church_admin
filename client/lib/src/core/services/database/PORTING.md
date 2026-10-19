# Porting a DAO folder from Hasura to Ash

Reference port: `gql_definintions/metadata/` (commit `refactor(data): port the metadata lookups to Ash`). Paths are relative to `client/`. One folder per commit: `refactor(data): port <entity> to Ash (ENG-266)`.

## Steps

1. **Read** the folder's `.gql` files, `<entity>_dao.dart`, the model's `fromJson`, and every feature caller of the DAO (their calls must keep compiling). In `lib/src/core/graphql/schema.graphql` find the type, the list root (`churches(...)`), the get root (`church(id:)`), `create<T>`/`update<T>`/`destroy<T>` with their `Create<T>Input`, `<T>FilterInput` and `<T>SortField`.
2. **Tests first**, in `test/src/core/services/database/gql_definintions/<entity>/`, run red before the port:
   - Backend: `final table = FakeAshTable(typename: 'Church', listRoot: 'churches', rows: [shown, hidden]);` (model objects; the get root and `create<T>` are derived from `typename`). `FakeAshBackend([table]).db` is a real `DatabaseService`.
   - List: `expect(FakeAshBackend.settledListing([table], (db) => db.metadata.churches.streamAll()), [shown]);` under the name `'hidden churches are left out of the church list'`.
   - Live: in `fakeAsync`, listen to `streamAll()`, elapse `FakeAshBackend.settleTime`, `table.add(model)`, `backend.announce([EntityChange(type: 'Church', id: model.id, op: 'insert')])`, elapse again, expect the new list.
   - Create: `final answered = await dao.createObject(newObject: draft);` then `expect(answered, draft.copyWith(id: answered.id))`; set the table's `createdPresets` to what the server's create action sets.
   - Table-driven example for many similar DAOs: `test/.../metadata/lookup_cases.dart`. Expect the fixture objects, never repeated literals.
3. **Documents** next to the old `.gql` (fragment names are global across `.graphql`; name each after its type):
   - `fragments.graphql`: `fragment Church on Church { id name isHidden }` with the model's JSON keys.
   - `queries.graphql`: `query churches($filter: ChurchFilterInput, $sort: [ChurchSortInput], $first: Int, $after: String) { churches(filter: $filter, sort: $sort, first: $first, after: $after) { count endKeyset results { ...Church } } }`; a get is `query church($id: ID!) { church(id: $id) { ...Church } }`.
   - `mutations.graphql`: `mutation createChurch($input: CreateChurchInput!) { createChurch(input: $input) { result { ...Church } } }`.
4. **Regenerate**: `client/scripts/regenerate_graphql.sh` with the sandbox off (full build; never `--build-filter`). It also rewrites `lib/src/core/graphql/__generated__/schema.graphql.dart` with the `Input_*` classes your documents use: commit it.
5. **DAO**: replace `Legacy*` with `KeysetStreamableDAO<T>`, `CreatableDAO<T>`, … (or `FullCRUDDAO<T>`); import `<folder>/__generated__/{queries,mutations}.graphql.dart`.
   - `StreamAllConfig<T> get baseStreamAllConfig => const StreamAllConfig(document: documentNodeQuerychurches, arguments: ListQueryArguments.fromParameters);`
   - Defaults from an old `streamAll` override move into `arguments: (p) => ListQueryArguments.fromParameters(p, defaultWhere: [...], defaultOrderBy: [...])`; delete the override. Search becomes `name ilike %s%` there.
   - Create: `varsConstructor: ({required newObject}) => Variables_Mutation_createChurch(input: Input_CreateChurchInput(name: newObject.name)).toJson()`. Send the input's fields only; the server sets presets.
   - Extra reads: reuse the list document through `query(where:, orderBy:, limit: AshPagination.maxPageSize)` before adding a document; a single get parses with `AshResultParser(document).entity(fromJson)`.
   - `Input_X(...)` omits nulls. An update that must clear a column or an address key builds `Input_UpdateXInput.fromJson({...})`, which keeps explicit nulls. Send null for columns the model owns; omit only list or object arguments where null means "leave untouched".
   - Ids are `String`: drop `.toUuid()`. Keep `throw UnimplementedError()` for configs the old DAO never served.
5b. **Non-`DAOBase` DAO** (history, logs): page with `KeysetPageQuery` inside `KeysetPaginatedStream<T, void>(registry: db.liveQueries, parametersStream: Stream.value(null), fetchChunk: …)`. An unpaginated live list is `LiveQuery<List<T>>(kind: LiveQueryKind.list, …)`. Variables come from the generated `Variables_*`/`Input_*`; operators are `eq`, not `$eq`; enums are `Enum_<T>SortField`/`Enum_SortOrder`.
6. **Models**: change only `fromJson`/converters where the SDL shape differs (§5 of `client-data-layer.md`). Never rename model fields.
7. **Delete** the folder's `.gql` and `__generated__/*.gql.dart`, except a fragment still spread by an unported `.gql` (`grep -rn '\.\.\.StudyYear\b' lib --include='*.gql'`): keep it while `grep -rn '\.\.\.<Fragment>\b' lib --include='*.gql'` still finds a use, and keep `GqlTypePolicies` entries for Hasura type names still read.
7b. A type with no `id` in the SDL is selected without an id and added to `GqlTypePolicies` as `_embedded`. `grep` the other `.gql` files before deleting a Hasura type's policy entry.
7c. Shared Ash fragments (`fragment User on User`) live in `gql_definintions/gql/fragments.graphql`.
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
- Name lane-local fragments of shared types distinctly (e.g. `PlaceUser`) until the shared fragments are unified.
- Feature tests fake DAOs with `Fake implements XDAO`; they keep compiling as long as public signatures stay.
- A `latestEdit`/`latestVisit` object has an `id`: select it, define the fragment once per lane (e.g. `OrgLatestEdit`) and spread the lane-local user fragment inside it.
- A list taking `filter`/`sort` on a nested field (`classes(filter: $classesFilter)`) needs those variables declared in the query; the fake link applies them to the nested rows.
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

## Done

- `fvm dart analyze --fatal-infos client` from the repo root: no issues.
- `~/.claude/scripts/fvm-in client flutter test --dart-define CI=true test` passes (background, log to a file).
- `fvm dart format lib test patrol_test` from `client/` changes nothing; `check_generated_code.sh` shows no drift.
- `git status` clean; report server gaps, feature-file changes and kept Hasura fragments.
