#!/usr/bin/env bash
# Boots Hasura from this commit's migrations and metadata and checks that
# client/lib/src/core/graphql/schema.graphql matches what it serves.
# Pass --write to overwrite the committed schema instead.
set -euo pipefail

root=$(cd "$(dirname "$0")/../.." && pwd)

export POSTGRES_PASSWORD=schema-check
export HASURA_GRAPHQL_ADMIN_SECRET=schema-check
export POSTGRES_PORT=${POSTGRES_PORT:-55432}
export HASURA_PORT=${HASURA_PORT:-58080}
export HASURA_GRAPHQL_ENDPOINT="http://localhost:$HASURA_PORT"

compose=(docker compose --env-file /dev/null -f "$root/server/docker-compose.yml" -p church-admin-schema-check)
trap '"${compose[@]}" down -v --remove-orphans >/dev/null 2>&1' EXIT
"${compose[@]}" up -d --build --wait --wait-timeout 300 postgres hasura

if [ "${1:-}" = --write ]; then
  "$root/client/scripts/fetch_graphql_schema.sh"
else
  "$root/client/scripts/fetch_graphql_schema.sh" --check
fi
