# CI workflows

**Set `working-directory` once per workflow, never per step.** A workflow that only touches `client/` sets `defaults.run.working-directory: client`; one that only touches a server project sets it to that project (`server/firebase/functions`). Every `run` step then starts there and names paths relative to it, and a step needing a subdirectory `cd`s into it inside `run`. A workflow that spans both sets no `working-directory` at all and spells every path from the repo root (`client/scripts/…`). `defaults` does not reach action inputs under `with:`, so those keep repo-root paths.

CI enforces the GraphQL halves: `client/scripts/check_graphql_schema.sh` fails when `schema.graphql` drifts from the migrations and metadata, and `client/scripts/check_generated_code.sh` fails when committed build_runner outputs differ from a fresh build (outputs of changed files on PRs, everything on master).
