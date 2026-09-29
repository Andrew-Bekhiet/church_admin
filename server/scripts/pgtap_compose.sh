root=$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)

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
