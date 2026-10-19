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
   - Ids are `String`: drop `.toUuid()`. Keep `throw UnimplementedError()` for configs the old DAO never served.
6. **Models**: change only `fromJson`/converters where the SDL shape differs (§5 of `client-data-layer.md`). Never rename model fields.
7. **Delete** the folder's `.gql` and `__generated__/*.gql.dart`, except a fragment still spread by an unported `.gql` (`grep -rn '\.\.\.StudyYear\b' lib --include='*.gql'`): keep it, and keep `GqlTypePolicies` entries for Hasura type names still read.
8. **Contract**: add the queryable names to `portedEntities` in `test/src/core/services/database/ash_query/schema_contract_test.dart`. A failure lists server gaps: report them; fix only client-side untruths (the metadata port marked StudyYear's synthesized `id` `isOrderable: false`).

## Pitfalls

- `FakeAshTablesLink` sees only variables: put `filter`/`sort` in variables, not inline in a document.
- A tear-off `arguments` makes the config const: write `const StreamAllConfig(...)` or `prefer_const_constructors` fires.
- Lane worktrees refuse chained/looped shell commands that touch git: one plain command per call, `git -C <lane>`.
- `check_generated_code.sh` needs a clean tree and the pinned SDK: commit, then `~/.claude/scripts/fvm-in client exec scripts/check_generated_code.sh`.
- Feature tests fake DAOs with `Fake implements XDAO`; they keep compiling as long as public signatures stay.

## Done

- `fvm dart analyze --fatal-infos client` from the repo root: no issues.
- `~/.claude/scripts/fvm-in client flutter test --dart-define CI=true test` passes (background, log to a file).
- `fvm dart format lib test patrol_test` from `client/` changes nothing; `check_generated_code.sh` shows no drift.
- `git status` clean; report server gaps, feature-file changes and kept Hasura fragments.
