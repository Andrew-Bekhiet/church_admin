#!/bin/sh
# Dev and test each get their own server; DB_NAME and TEST_DB_NAME name their
# databases (church_admin, the production name, by default).
set -eu

project="${ASH_DB_PROJECT:-church-admin-ash-dev}"
if [ "$project" = church-admin-local ]; then
  echo "ASH_DB_PROJECT must not be church-admin-local: that compose project is the user's own stack" >&2
  exit 64
fi
export DB_PORT="${DB_PORT:-55432}"
export TEST_DB_PORT="${TEST_DB_PORT:-55433}"
export DB_NAME="${DB_NAME:-church_admin}"
export TEST_DB_NAME="${TEST_DB_NAME:-church_admin}"

app_dir="$(cd "$(dirname "$0")/.." && pwd)"
compose() {
  docker compose --project-name "$project" --file "$app_dir/dev/compose.yml" "$@"
}

case "${1:-}" in
  up)
    compose up --detach --build --wait
    ;;
  down)
    compose down
    ;;
  reset)
    compose down --volumes
    compose up --detach --build --wait
    (cd "$app_dir" && mix church_admin.setup --scale "${SEED_SCALE:-small}")
    (cd "$app_dir" && MIX_ENV=test mix ecto.migrate)
    ;;
  psql)
    shift
    compose exec postgres psql --username postgres --dbname "$DB_NAME" "$@"
    ;;
  psql-test)
    shift
    compose exec postgres_test psql --username postgres --dbname "$TEST_DB_NAME" "$@"
    ;;
  *)
    echo "usage: $0 up|down|reset|psql|psql-test [psql args]" >&2
    exit 64
    ;;
esac
