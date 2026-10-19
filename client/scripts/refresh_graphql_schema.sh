#!/usr/bin/env bash
# Rewrites client/lib/src/core/graphql/schema.graphql from the Ash GraphQL schema,
# the same file `mix ash.codegen` writes through generate_sdl_file.
# usage: client/scripts/refresh_graphql_schema.sh   (any cwd)
set -euo pipefail

cd "$(dirname "$0")/../../server/ash"
mix absinthe.schema.sdl --schema ChurchAdminWeb.GraphqlSchema ../../client/lib/src/core/graphql/schema.graphql
