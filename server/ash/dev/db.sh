#!/bin/sh
# Every database built from the baseline must be named church_admin (the init
# migration alters that database by name and pg_cron's cron.database_name is
# church_admin), so dev and test each get their own server.
set -eu

app_dir="$(cd "$(dirname "$0")/.." && pwd)"
compose() {
  docker compose --project-name church-admin-ash-dev --file "$app_dir/dev/compose.yml" "$@"
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
    (cd "$app_dir" && mix do ecto.migrate + run priv/repo/seeds.exs)
    (cd "$app_dir" && MIX_ENV=test mix ecto.migrate)
    ;;
  psql)
    shift
    compose exec postgres psql --username postgres --dbname church_admin "$@"
    ;;
  psql-test)
    shift
    compose exec postgres_test psql --username postgres --dbname church_admin "$@"
    ;;
  *)
    echo "usage: $0 up|down|reset|psql|psql-test [psql args]" >&2
    exit 64
    ;;
esac
