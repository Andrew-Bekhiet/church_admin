---
name: graphql-codegen
description: Regenerate church_admin's GraphQL client code or refresh schema.graphql from Hasura. Use when .graphql documents, Hasura migrations or metadata change, when build_runner or graphql_codegen output is involved, or when schema.graphql.dart, the split schema_partN.dart files, or check_generated_code.sh / check_graphql_schema.sh come up.
---

# GraphQL codegen and schema refresh

## Regenerate generated code

One command, from any directory:

```sh
client/scripts/regenerate_graphql.sh
```

It deletes `lib/src/core/graphql/__generated__/`, runs a full `fvm dart run build_runner build`, re-splits `schema.graphql.dart` into the stub plus `schema_partN.dart`, removes the `.bak` the split leaves, and prints `git status` for the generated directory. An empty status means regeneration reproduced the committed files. Anything else is either the intended change or a stray edit to `git checkout --`.

Run it after a `.graphql` document, a Hasura migration or metadata, `build.yaml`, or a generator package changes. It is also the right way to run any other builder (freezed, json_serializable), because a bare `build_runner build` collapses the split schema again.

Never use `--build-filter`: from a cold cache it deletes every output outside the filter and still re-collapses `schema.graphql.dart`. `--delete-conflicting-outputs` no longer exists; conflicting outputs are deleted by default. `split_schema_graphql_dart.sh` refuses to run on an already split stub, so running it twice is harmless.

## Refresh `schema.graphql`

`client/lib/src/core/graphql/schema.graphql` is the `user`-role schema Hasura serves. Refresh it with `client/scripts/fetch_graphql_schema.sh`, which reads `HASURA_GRAPHQL_ENDPOINT` and `HASURA_GRAPHQL_ADMIN_SECRET` (prod: `set -a && source server/hasura/.env && set +a` first), or with `client/scripts/check_graphql_schema.sh --write`, which boots a throwaway Hasura from this commit's migrations and metadata. The VS Code tasks wrap both. Then regenerate as above.

CI enforces both halves: `check_graphql_schema.sh` fails when `schema.graphql` drifts from the migrations and metadata, and `check_generated_code.sh` fails when committed build_runner outputs differ from a fresh build.
