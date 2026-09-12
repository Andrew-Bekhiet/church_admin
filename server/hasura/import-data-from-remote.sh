#!/bin/bash

set -euo pipefail

usage() {
  cat <<USAGE
Usage: $(basename "$0") --remote-host HOST --remote-password PASS --local-password PASS [options]

Required:
  --remote-host HOST          remote Postgres host
  --remote-password PASS      remote Postgres password
  --local-password PASS       local Postgres password

Options:
  --remote-port PORT          default: 5432
  --remote-db NAME            default: church_admin
  --remote-user USER          default: postgres
  --local-host HOST           default: localhost
  --local-port PORT           default: 5432
  --local-db NAME             default: church_admin
  --local-user USER           default: postgres
  --schema NAME               schema to copy; repeatable. default: public auth
  --exclude-table TABLE       table to skip; repeatable. default: public.spatial_ref_sys
  -h, --help                  show this help
USAGE
}

remote_host=""
remote_port="5432"
remote_db="church_admin"
remote_user="postgres"
remote_password=""

local_host="localhost"
local_port="5432"
local_db="church_admin"
local_user="postgres"
local_password=""

schemas=()
exclude_tables=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    --remote-host) remote_host="$2"; shift 2 ;;
    --remote-port) remote_port="$2"; shift 2 ;;
    --remote-db) remote_db="$2"; shift 2 ;;
    --remote-user) remote_user="$2"; shift 2 ;;
    --remote-password) remote_password="$2"; shift 2 ;;
    --local-host) local_host="$2"; shift 2 ;;
    --local-port) local_port="$2"; shift 2 ;;
    --local-db) local_db="$2"; shift 2 ;;
    --local-user) local_user="$2"; shift 2 ;;
    --local-password) local_password="$2"; shift 2 ;;
    --schema) schemas+=("$2"); shift 2 ;;
    --exclude-table) exclude_tables+=("$2"); shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown argument: $1" >&2; usage >&2; exit 1 ;;
  esac
done

missing=()
[[ -n "$remote_host" ]] || missing+=(--remote-host)
[[ -n "$remote_password" ]] || missing+=(--remote-password)
[[ -n "$local_password" ]] || missing+=(--local-password)
if [[ ${#missing[@]} -gt 0 ]]; then
  echo "Missing required arguments: ${missing[*]}" >&2
  usage >&2
  exit 1
fi

[[ ${#schemas[@]} -gt 0 ]] || schemas=(public auth)
[[ ${#exclude_tables[@]} -gt 0 ]] || exclude_tables=(public.spatial_ref_sys)

schema_args=()
for schema in "${schemas[@]}"; do
  schema_args+=(--schema="$schema")
done

exclude_args=()
for table in "${exclude_tables[@]}"; do
  exclude_args+=(--exclude-table="$table")
done

dump_file="pg_data_dump_$(date +%Y%m%d_%H%M%S).sql"
trap 'rm -f "$dump_file"' EXIT

echo "Starting data migration from $remote_db to $local_db (schemas: ${schemas[*]})..."

echo "Dumping data from remote database..."
PGPASSWORD="$remote_password" pg_dump \
  --host="$remote_host" --port="$remote_port" --username="$remote_user" \
  --format=custom --data-only "${schema_args[@]}" "${exclude_args[@]}" \
  --no-owner --no-privileges "$remote_db" > "$dump_file"

echo "Importing data to local database..."
PGPASSWORD="$local_password" pg_restore \
  --host="$local_host" --port="$local_port" --username="$local_user" \
  --dbname="$local_db" --data-only "${schema_args[@]}" \
  --disable-triggers --no-owner --no-privileges "$dump_file"

echo "Migration completed successfully!"
