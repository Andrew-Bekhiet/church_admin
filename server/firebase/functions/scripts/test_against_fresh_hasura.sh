#!/usr/bin/env bash
# Boots Postgres and Hasura from this commit's migrations and metadata, then
# runs the Cloud Functions tests against them. The tests seed their own rows.
# To run the tests against a Hasura that is already up instead, call
# `HASURA_SERVER=<graphql url> HASURA_ADMIN_SECRET=<secret> npm test`.
# usage: server/firebase/functions/scripts/test_against_fresh_hasura.sh   (any cwd)
set -euo pipefail

functions_dir=$(cd "$(dirname "$0")/.." && pwd)
server_dir=$(cd "$functions_dir/../.." && pwd)

export POSTGRES_PASSWORD=functions-test
export HASURA_GRAPHQL_ADMIN_SECRET=functions-test
export POSTGRES_PORT=${POSTGRES_PORT:-35432}
export HASURA_PORT=${HASURA_PORT:-38080}

compose=(docker compose --env-file /dev/null -f "$server_dir/docker-compose.yml" -p church-admin-functions-test)
trap '"${compose[@]}" down -v --remove-orphans >/dev/null 2>&1' EXIT
"${compose[@]}" up -d --build --wait --wait-timeout 300 postgres hasura

cd "$functions_dir"
HASURA_SERVER="http://localhost:$HASURA_PORT/v1/graphql" \
  HASURA_ADMIN_SECRET="$HASURA_GRAPHQL_ADMIN_SECRET" \
  npm test
