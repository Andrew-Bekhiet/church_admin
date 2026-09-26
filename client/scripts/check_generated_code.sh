#!/usr/bin/env bash
# Regenerates build_runner outputs and fails when they differ from what is committed.
# usage: check_generated_code.sh [<base-ref>]
# With a base ref only the outputs of Dart files changed since it are rebuilt, so
# outputs that merely depend on a changed file are left to the full run on master.
# A filtered build from a cold cache deletes every output outside the filter, so
# filtered mode compares only the filtered outputs and restores the rest.
set -euo pipefail

cd "$(dirname "$0")/.."

if [ -n "$(git status --porcelain -- .)" ]; then
  echo 'Commit or stash your changes first: this check rewrites generated files.' >&2
  exit 2
fi

filters=()
pathspecs=()
if [ -n "${1:-}" ]; then
  changed=$(git diff --name-only --relative "$1" HEAD -- .)
  if grep -qE '\.(graphql|gql)$|__generated__/|^build\.yaml$|^pubspec\.(yaml|lock)$' <<<"$changed" ||
    ! git diff --quiet "$1" HEAD -- ../church_admin_generator; then
    echo 'GraphQL documents, builders or dependencies changed: rebuilding everything.'
  else
    while IFS= read -r file; do
      [[ $file == *.dart ]] || continue
      name=$(basename "$file")
      glob="$(dirname "$file")/${name%%.*}.*.dart"
      filters+=("--build-filter=$glob")
      pathspecs+=(":(glob)$glob")
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
  stale=$(git status --porcelain -- .)
else
  dart run build_runner build "${filters[@]}"
  stale=$(git status --porcelain -- "${pathspecs[@]}")
  git diff --stat -- "${pathspecs[@]}"
  git checkout -q -- .
  git clean -fdq -- "${pathspecs[@]}"
fi

if [ -n "$stale" ]; then
  echo "$stale"
  echo 'Generated code is out of date. Regenerate with:' >&2
  echo '  rm -r lib/src/core/graphql/__generated__/ && dart run build_runner build && ./scripts/split_schema_graphql_dart.sh' >&2
  exit 1
fi
