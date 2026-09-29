#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/pgtap_compose.sh"

trap '"${compose[@]}" down -v --remove-orphans >/dev/null 2>&1' EXIT
"${compose[@]}" up -d --build --wait --wait-timeout 300 postgres hasura

if [ $# -eq 0 ]; then
  targets=(/tests)
else
  targets=()
  for file in "$@"; do
    targets+=("/tests/$(basename "$file")")
  done
fi

"${compose[@]}" exec -T postgres \
  pg_prove --ext .sql --verbose -U postgres -d church_admin "${targets[@]}"
