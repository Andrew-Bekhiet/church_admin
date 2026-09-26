#!/usr/bin/env bash
# Writes the user-role schema served by HASURA_GRAPHQL_ENDPOINT to schema.graphql,
# or with --check fails when schema.graphql differs from it.
# Prod: set -a && source server/hasura/.env && set +a && client/scripts/fetch_graphql_schema.sh
set -euo pipefail

client=$(cd "$(dirname "$0")/.." && pwd)
mode=write
[ "${1:-}" = --check ] && mode=check

tools=$(mktemp -d)
trap 'rm -rf "$tools"' EXIT
npm install --silent --no-save --prefix "$tools" graphql@16 >/dev/null

NODE_PATH="$tools/node_modules" node "$client/scripts/graphql_schema.cjs" "$mode" \
  "$client/lib/src/core/graphql/schema.graphql"
