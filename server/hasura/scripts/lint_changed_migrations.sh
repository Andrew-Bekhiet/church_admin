#!/usr/bin/env bash
# Lints the migration SQL files that changed since <base-ref> with sqlfluff,
# using server/hasura/.sqlfluff. Only changed files are linted because older
# migrations predate the config and must stay byte-for-byte as deployed.
# usage: server/hasura/scripts/lint_changed_migrations.sh <base-ref>   (any cwd)
set -euo pipefail

base=${1:?usage: lint_changed_migrations.sh <base-ref>}
cd "$(dirname "$0")/.."

changed=$(git diff --name-only --diff-filter=AM --relative "$base" HEAD -- migrations | grep -E '\.sql$' || true)
if [ -z "$changed" ]; then
  echo "No migration SQL changed since $base: nothing to lint."
  exit 0
fi

echo "$changed"
# shellcheck disable=SC2086
sqlfluff lint --disable-progress-bar $changed
