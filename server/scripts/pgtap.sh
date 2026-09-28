#!/usr/bin/env bash
# Boots postgres and hasura from this commit's migrations and metadata, then
# runs the pgTAP tests in server/postgres/tests (or the files given).
set -euo pipefail

root=$(cd "$(dirname "$0")/../.." && pwd)

export POSTGRES_PASSWORD=pgtap
export HASURA_GRAPHQL_ADMIN_SECRET=pgtap
export POSTGRES_PORT=${POSTGRES_PORT:-25433}
export HASURA_PORT=${HASURA_PORT:-28081}

compose=(
  docker compose --env-file /dev/null
  -f "$root/server/docker-compose.yml"
  -f "$root/server/docker-compose.pgtap.yml"
  -p "${PGTAP_PROJECT:-church-admin-pgtap}"
)
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
