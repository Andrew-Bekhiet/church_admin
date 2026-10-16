#!/usr/bin/env bash
# Regenerates every build_runner output from scratch and re-splits the GraphQL
# schema, which is the only sequence that leaves the committed layout intact:
#   1. delete lib/src/core/graphql/__generated__/ so graphql_codegen rebuilds it
#   2. full build (never --build-filter: from a cold cache it deletes every
#      output outside the filter and re-collapses schema.graphql.dart anyway)
#   3. split schema.graphql.dart into the stub plus schema_partN.dart
#   4. drop the .bak the split leaves behind
# Then it lists what changed under the generated dir so stray edits are visible.
# usage: client/scripts/regenerate_graphql.sh   (any cwd)
set -euo pipefail

cd "$(dirname "$0")/.."

generated_dir=lib/src/core/graphql/__generated__

run_dart() {
  if command -v fvm >/dev/null 2>&1 && [ -f .fvmrc ]; then
    fvm dart "$@"
  else
    dart "$@"
  fi
}

rm -rf "$generated_dir"
run_dart run build_runner build
scripts/split_schema_graphql_dart.sh
rm -f "$generated_dir/schema.graphql.dart.bak"

echo
echo "Changes under $generated_dir (empty means regeneration reproduced the committed files):"
git status --short -- "$generated_dir"
