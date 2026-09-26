#!/usr/bin/env bash
# Regenerates every build_runner output from scratch and fails when the result
# differs from what is committed.
set -euo pipefail

cd "$(dirname "$0")/.."

rm -r lib/src/core/graphql/__generated__/
dart run build_runner build --delete-conflicting-outputs
./scripts/split_schema_graphql_dart.sh
rm -f lib/src/core/graphql/__generated__/schema.graphql.dart.bak

if [ -n "$(git status --porcelain -- .)" ]; then
  git status --short -- .
  git diff --stat -- .
  echo 'Generated code is out of date. Regenerate with:' >&2
  echo '  rm -r lib/src/core/graphql/__generated__/ && dart run build_runner build && ./scripts/split_schema_graphql_dart.sh' >&2
  exit 1
fi
