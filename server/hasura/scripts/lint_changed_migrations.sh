#!/usr/bin/env bash
# Lints the migration SQL files that changed since <base-ref> with sqlfluff,
# using server/hasura/.sqlfluff. Only changed files are linted because older
# migrations predate the config and must stay byte-for-byte as deployed.
# usage: server/hasura/scripts/lint_changed_migrations.sh <base-ref>   (any cwd)
set -euo pipefail

base=${1:?usage: lint_changed_migrations.sh <base-ref>}
cd "$(dirname "$0")/.."

diff_output=$(mktemp)
trap 'rm -f "$diff_output"' EXIT
git diff -z --name-only --diff-filter=AMR --relative "$base" HEAD -- migrations >"$diff_output"

files=()
while IFS= read -r -d '' file; do
  case $file in *.sql) files+=("$file") ;; esac
done <"$diff_output"

if [ "${#files[@]}" -eq 0 ]; then
  echo "No migration SQL changed since $base: nothing to lint."
  exit 0
fi

printf '%s\n' "${files[@]}"
sqlfluff lint --disable-progress-bar "${files[@]}"
