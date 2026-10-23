#!/usr/bin/env bash
# Brings up the persistent local stack (Postgres, Ash, Firebase emulators) on a
# copy of production data: builds the Hasura-era schema, copies the rows with
# master's import-data-from-remote.sh run inside the postgres container, lets
# Ash apply its own migrations over them, and creates an Auth emulator account
# for every user with an email so any of them can sign in.
#
#   server/scripts/import-production-to-local.sh --remote-host HOST --remote-password PASS
#     [--remote-port PORT] [--remote-db NAME] [--remote-user USER]
#     [--schema NAME ...] [--reset]
#
# Without --reset it refuses to touch a database that already holds data;
# --reset rebuilds the local database from production.
# Environment: ENV_FILE (default server/.env), COMPOSE_PROJECT (default
# church-admin-local), MASTER_REF (default origin/master).
set -euo pipefail

server_dir="$(cd "$(dirname "$0")/.." && pwd)"
repo_root="$(git -C "$server_dir" rev-parse --show-toplevel)"

env_file="${ENV_FILE:-$repo_root/server/.env}"
compose_project="${COMPOSE_PROJECT:-church-admin-local}"
master_ref="${MASTER_REF:-origin/master}"

shared_password="SeedPass-123"
default_schemas=(public auth history deleted operations face_recognition)

usage() {
  sed -n '2,/^set -/p' "$0" | sed '$d' | sed 's/^# \{0,1\}//' >&2
  exit 64
}

remote_host=""
remote_password=""
remote_options=()
schemas=()
reset=false

while [ "$#" -gt 0 ]; do
  case "$1" in
    --remote-host) remote_host="${2:?--remote-host needs a value}"; shift 2 ;;
    --remote-password) remote_password="${2:?--remote-password needs a value}"; shift 2 ;;
    --remote-port | --remote-db | --remote-user)
      remote_options+=("$1" "${2:?$1 needs a value}"); shift 2 ;;
    --schema) schemas+=("${2:?--schema needs a value}"); shift 2 ;;
    --reset) reset=true; shift ;;
    -h | --help) usage ;;
    *) echo "unknown argument: $1" >&2; usage ;;
  esac
done

[ -n "$remote_host" ] && [ -n "$remote_password" ] || usage
[ "${#schemas[@]}" -gt 0 ] || schemas=("${default_schemas[@]}")
[ -f "$env_file" ] || { echo "env file not found: $env_file" >&2; exit 1; }

env_value() {
  local key="$1" default="$2" value
  value="${!key-}"
  if [ -z "$value" ]; then
    value="$(sed -n "s/^[[:space:]]*$key=//p" "$env_file" | tail -n 1)"
    value="${value%$'\r'}"
  fi
  case "$value" in
    \"*\") value="${value#\"}"; value="${value%\"}" ;;
    \'*\') value="${value#\'}"; value="${value%\'}" ;;
  esac
  echo "${value:-$default}"
}

postgres_user="$(env_value POSTGRES_USER postgres)"
postgres_password="$(env_value POSTGRES_PASSWORD '')"
project_id="$(env_value FIREBASE_PROJECT_ID church-admin-local)"
ash_port="$(env_value ASH_PORT 8080)"
[ -n "$postgres_password" ] || { echo "POSTGRES_PASSWORD is not set in $env_file" >&2; exit 1; }

compose() {
  docker compose \
    --project-directory "$server_dir" \
    --env-file "$env_file" \
    -f "$server_dir/docker-compose.yml" \
    -p "$compose_project" \
    "$@"
}

psql_in_database() {
  compose exec -T postgres psql --no-psqlrc --username "$postgres_user" --dbname church_admin \
    --set ON_ERROR_STOP=1 --tuples-only --no-align "$@"
}

import_script="$(mktemp)"
accounts_file="$(mktemp)"
trap 'rm -f "$import_script" "$accounts_file"' EXIT

git -C "$repo_root" show "$master_ref:server/hasura/import-data-from-remote.sh" >"$import_script" ||
  { echo "cannot read server/hasura/import-data-from-remote.sh at $master_ref; try 'git fetch origin'" >&2; exit 1; }

baseline_folders=("$server_dir"/ash/priv/repo/baseline/*)
last_baseline_folder="$(basename "${baseline_folders[${#baseline_folders[@]} - 1]}")"
last_baseline_version="${last_baseline_folder%%_*}"

applied_migration_count() {
  local table_exists
  table_exists="$(psql_in_database --command "select to_regclass('public.ash_schema_migrations') is not null")"
  if [ "$table_exists" = t ]; then
    psql_in_database --command 'select count(*) from public.ash_schema_migrations'
  else
    echo 0
  fi
}

reset_database() {
  compose stop ash postgres
  compose rm --force ash postgres
  docker volume rm --force "${compose_project}_pgdata_ash" >/dev/null
  compose up -d --wait postgres
}

# The data-only restore would collide with the enum and permission rows the baseline migrations insert; production carries the same rows.
clear_rows_inserted_by_baseline() {
  local schema_list
  schema_list="{$(IFS=,; echo "${schemas[*]}")}"
  psql_in_database --set "schemas=$schema_list" <<'SQL' >/dev/null
select format('truncate %s cascade', string_agg(format('%I.%I', schemaname, tablename), ', '))
from pg_tables
where schemaname = any(:'schemas'::text[])
  and (schemaname, tablename) not in (('public', 'spatial_ref_sys'), ('public', 'ash_schema_migrations'))
\gexec
SQL
}

wait_for_ash() {
  compose up -d --wait ash && return 0
  compose logs --tail 60 ash >&2
  echo "ash did not become healthy" >&2
  return 1
}

import_auth_emulator_accounts() {
  psql_in_database --set "password=$shared_password" >"$accounts_file" <<'SQL'
select json_build_object(
  'allowOverwrite', true,
  'users', coalesce(json_agg(json_build_object(
    'localId', auth_id,
    'email', email,
    'emailVerified', true,
    'displayName', name,
    'rawPassword', :'password',
    'customAttributes', json_build_object(
      'x-hasura-user-id', uid,
      'x-hasura-default-role', 'user',
      'x-hasura-allowed-roles', json_build_array('user')
    )::text
  ) order by email), '[]'::json)
)
from auth.users_data
where auth_id is not null and auth_id <> '' and email is not null and email <> '';
SQL

  local sent response errors
  sent="$(jq '.users | length' "$accounts_file")"
  response="$(curl -fsS -X POST \
    "http://localhost:9099/identitytoolkit.googleapis.com/v1/projects/$project_id/accounts:batchCreate" \
    -H 'authorization: Bearer owner' -H 'content-type: application/json' \
    --data-binary @"$accounts_file")"
  errors="$(echo "$response" | jq -r '(.error // [])[] | "  account \(.index): \(.message)"')"

  echo "Auth emulator: sent $sent accounts"
  if [ -n "$errors" ]; then
    echo "Auth emulator rejected:"
    echo "$errors"
  fi
}

compose up -d --build --wait postgres firebase-emulators

if [ "$reset" = true ]; then
  reset_database
elif [ "$(applied_migration_count)" -gt 0 ]; then
  cat >&2 <<MESSAGE
The church_admin database in project $compose_project already holds data.
Run again with --reset to rebuild it from production (this drops the local data).
MESSAGE
  exit 1
fi

compose build ash
compose run --rm --no-deps -T ash mix ecto.migrate --to "$last_baseline_version"

clear_rows_inserted_by_baseline

import_arguments=(--remote-host "$remote_host" --remote-password "$remote_password")
[ "${#remote_options[@]}" -eq 0 ] || import_arguments+=("${remote_options[@]}")
import_arguments+=(--local-password "$postgres_password" --local-user "$postgres_user")
for schema in "${schemas[@]}"; do
  import_arguments+=(--schema "$schema")
done
compose exec -T -w /tmp postgres bash -s -- "${import_arguments[@]}" <"$import_script"

wait_for_ash
import_auth_emulator_accounts

cat <<SUMMARY

Local stack on production data is ready.
  Ash:            http://localhost:$ash_port  (/gql, /healthz)
  Emulator UI:    http://localhost:4000
  Sign in as any user with their email and the password $shared_password

Run the client with --dart-define-from-file pointing at an env file (client/e2e.env is the template) that sets
  API_SERVER_URL=http://localhost:$ash_port
  FIREBASE_EMULATORS_HOST=localhost
  FIREBASE_PROJECT_ID=$project_id
SUMMARY
