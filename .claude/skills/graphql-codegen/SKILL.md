---
name: graphql-codegen
description: Regenerate church_admin's GraphQL client code or refresh schema.graphql from Hasura. Use when .graphql documents, Hasura migrations or metadata change, when build_runner or graphql_codegen output is involved, or when schema.graphql.dart, the split schema_partN.dart files, or check_generated_code.sh / check_graphql_schema.sh come up.
---

# GraphQL codegen and schema refresh

Run every command from `client/` through `fvm`.

## The split is not a build_runner output

`graphql_codegen` always emits `lib/src/core/graphql/__generated__/schema.graphql.dart` as one ~166k-line file, and `scripts/split_schema_graphql_dart.sh` rewrites that file in place into a stub plus `schema_partN.dart`. Any build that regenerates it destroys the split, and the split script is not idempotent: run it once, on a freshly generated file.

Never use `--build-filter`. From a cold cache (no `.dart_tool/build`, e.g. a fresh clone or CI runner) it deletes every generated output outside the filter and still re-collapses `schema.graphql.dart`, because `graphql_codegen` runs lazily regardless of the filter. Conflicting outputs are deleted by default; `--delete-conflicting-outputs` no longer exists.

## Regenerate after a `.graphql` document or Hasura schema change

```sh
cd client
rm -r lib/src/core/graphql/__generated__/ && fvm dart run build_runner build && ./scripts/split_schema_graphql_dart.sh
rm -f lib/src/core/graphql/__generated__/schema.graphql.dart.bak
```

Then check `git status` for unexpected changes to unrelated `.gql.dart`/`.g.dart` files and `git checkout --` anything the build touched that you did not intend to change.

## Hand-run build for other generators (freezed, json_serializable, …)

```sh
cd client
fvm dart run build_runner build
git checkout -- lib/src/core/graphql/__generated__/schema.graphql.dart
rm -f lib/src/core/graphql/__generated__/schema.graphql.dart.bak
```

If an unfiltered build slips through, `git checkout -- lib/src/core/graphql/__generated__/schema.graphql.dart` restores the stub; the `schema_partN.dart` files are untouched.

## Refresh `schema.graphql`

`lib/src/core/graphql/schema.graphql` is the `user`-role schema Hasura serves. Refresh it with `scripts/fetch_graphql_schema.sh`, which reads `HASURA_GRAPHQL_ENDPOINT` and `HASURA_GRAPHQL_ADMIN_SECRET` (prod: `set -a && source ../server/hasura/.env && set +a` first), or with `scripts/check_graphql_schema.sh --write`, which boots a throwaway Hasura from this commit's migrations and metadata. The VS Code tasks wrap both.

CI enforces both halves: `check_graphql_schema.sh` fails when `schema.graphql` drifts from the migrations and metadata, and `check_generated_code.sh` fails when committed build_runner outputs differ from a fresh build.
