---
name: graphql-codegen
description: Regenerate church_admin's GraphQL client code or refresh schema.graphql from the Ash server. Use when .graphql documents or Ash resources change, when build_runner or graphql_codegen output is involved, or when schema.graphql.dart, the split schema_partN.dart files, or check_generated_code.sh come up.
---

# GraphQL codegen and schema refresh

## Regenerate generated code

One command, from any directory:

```sh
client/scripts/regenerate_graphql.sh
```

It deletes `lib/src/core/graphql/__generated__/`, runs a full `fvm dart run build_runner build`, re-splits `schema.graphql.dart` into the stub plus `schema_partN.dart`, removes the `.bak` the split leaves, and prints `git status` for the generated directory. An empty status means regeneration reproduced the committed files. Anything else is either the intended change or a stray edit to `git checkout --`.

Run it after a `.graphql` document, a change to the Ash GraphQL surface, `build.yaml`, or a generator package changes. It is also the right way to run any other builder (freezed, json_serializable), because a bare `build_runner build` collapses the split schema again.

Never use `--build-filter`: from a cold cache it deletes every output outside the filter and still re-collapses `schema.graphql.dart`. `--delete-conflicting-outputs` no longer exists; conflicting outputs are deleted by default. `split_schema_graphql_dart.sh` refuses to run on an already split stub, so running it twice is harmless.

## Refresh `schema.graphql`

`client/lib/src/core/graphql/schema.graphql` is the SDL of the Ash GraphQL schema. `cd server/ash && mix ash.codegen <name>` rewrites it with the migrations and snapshots, and `client/scripts/refresh_graphql_schema.sh` rewrites only the SDL (the VS Code task "Refresh GraphQL schema from the Ash server" wraps it). Then regenerate as above.

CI enforces both halves: `mix ash.codegen --check` (workflow `server.yml`) fails when `schema.graphql` drifts from the Ash resources, and `check_generated_code.sh` fails when committed build_runner outputs differ from a fresh build.
