#!/bin/sh
# Equivalence harness (ENG-266 decision 12): loads FIXTURE (an SQL file, later
# the seed generator's output) into a database built by the Ecto baseline
# only, starts master's Hasura (BASELINE_REF's metadata, migrations skipped)
# on it, and lets dev/equivalence.exs compare per user and root what Hasura
# and Ash return. Writes the mismatches to OUT as CSV; exits 1 if there are
# any. Uids default to every auth.users_data uid plus an anonymous request.
# The scratch stack is torn down on exit.
#
#   dev/equivalence.sh FIXTURE.sql OUT.csv [uid ...]
set -eu

if [ "$#" -lt 2 ]; then
  echo "usage: $0 FIXTURE.sql OUT.csv [uid ...]" >&2
  exit 64
fi

app_dir="$(cd "$(dirname "$0")/.." && pwd)"
fixture="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
out="$(cd "$(dirname "$2")" && pwd)/$(basename "$2")"
shift 2

repo_root="$(git -C "$app_dir" rev-parse --show-toplevel)"
baseline_ref="${BASELINE_REF:-e91f310f12b13b3550a5578a9357d9196375864a}"
db_port="${EQUIVALENCE_DB_PORT:-55502}"
hasura_port="${EQUIVALENCE_HASURA_PORT:-55580}"
secret=church-admin-ash-equivalence
work_dir="$(mktemp -d)"
project="${EQUIVALENCE_PROJECT:-church-admin-ash-equivalence}"

compose() {
  HASURA_DIR="$work_dir/server/hasura" EQUIVALENCE_DB_PORT="$db_port" \
    EQUIVALENCE_HASURA_PORT="$hasura_port" docker compose \
    --project-name "$project" --file "$app_dir/dev/equivalence.compose.yml" "$@"
}

tear_down() {
  compose --profile hasura down --volumes --remove-orphans >/dev/null 2>&1 || true
  rm -rf "$work_dir"
}
trap tear_down EXIT INT TERM

git -C "$repo_root" archive "$baseline_ref" server/hasura | tar -x -C "$work_dir"
last_baseline_version="$(ls "$app_dir/priv/repo/baseline" | sort | tail -n 1 | cut -d_ -f1)"

echo "building the baseline-only database..." >&2
compose --profile hasura down --volumes --remove-orphans >/dev/null 2>&1 || true
compose up --detach --build --wait postgres >&2

(cd "$app_dir" && MIX_ENV=dev DB_PORT="$db_port" DB_PASSWORD="$secret" \
  mix ecto.migrate --to "$last_baseline_version" >&2)

compose exec -T postgres psql --username postgres --dbname church_admin \
  --set ON_ERROR_STOP=1 --quiet <"$fixture" >&2

echo "starting master's Hasura on it..." >&2
compose --profile hasura up --detach --build --wait hasura >&2

cd "$app_dir"
MIX_ENV=dev DB_PORT="$db_port" DB_PASSWORD="$secret" mix run --no-start dev/equivalence.exs \
  --hasura-url "http://localhost:$hasura_port/v1/graphql" --admin-secret "$secret" \
  --out "$out" "$@"
