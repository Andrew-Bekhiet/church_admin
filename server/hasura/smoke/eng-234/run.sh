#!/usr/bin/env bash
set -euo pipefail

: "${DATABASE_URL:?set DATABASE_URL}"

export PGOPTIONS='-c default_transaction_read_only=on'

if [ "$(psql -X -At -c 'show default_transaction_read_only' "$DATABASE_URL")" != on ]; then
  echo 'refusing to run: the session is not read-only' >&2
  exit 1
fi

dir=$(cd "$(dirname "$0")" && pwd)

for file in "$dir"/[0-9]*.sql; do
  output=$(psql -X -q -A -t -v ON_ERROR_STOP=1 -f "$file" "$DATABASE_URL")
  count=$(printf '%s' "$output" | grep -c . || true)
  echo "$(basename "$file"): $count rows"
  [ "$count" -eq 0 ] || printf '%s\n' "$output" | sed 's/^/    /'
done
