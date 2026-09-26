#!/usr/bin/env bash
# Regenerates build_runner outputs and fails when they differ from what is committed.
# usage: check_generated_code.sh [<base-ref>]
# With a base ref only the outputs of Dart files changed since it are rebuilt, so
# outputs that merely depend on a changed file are left to the full run on master.
set -euo pipefail

cd "$(dirname "$0")/.."

filters=()
if [ -n "${1:-}" ]; then
  changed=$(git diff --name-only --relative "$1" HEAD -- .)
  if grep -qE '\.(graphql|gql)$|__generated__/|^build\.yaml$|^pubspec\.(yaml|lock)$' <<<"$changed" ||
    ! git diff --quiet "$1" HEAD -- ../church_admin_generator; then
    echo 'GraphQL documents, builders or dependencies changed: rebuilding everything.'
  else
    while IFS= read -r file; do
      [[ $file == *.dart ]] || continue
      name=$(basename "$file")
      filters+=("--build-filter=$(dirname "$file")/${name%%.*}.*.dart")
    done <<<"$changed"

    if [ ${#filters[@]} -eq 0 ]; then
      echo 'No Dart files changed: nothing to regenerate.'
      exit 0
    fi
  fi
fi

if [ ${#filters[@]} -eq 0 ]; then
  rm -r lib/src/core/graphql/__generated__/
  dart run build_runner build
  ./scripts/split_schema_graphql_dart.sh
  rm -f lib/src/core/graphql/__generated__/schema.graphql.dart.bak
else
  dart run build_runner build "${filters[@]}"
fi

if [ -n "$(git status --porcelain -- .)" ]; then
  git status --short -- .
  git diff --stat -- .
  echo 'Generated code is out of date. Regenerate with:' >&2
  echo '  rm -r lib/src/core/graphql/__generated__/ && dart run build_runner build && ./scripts/split_schema_graphql_dart.sh' >&2
  exit 1
fi
