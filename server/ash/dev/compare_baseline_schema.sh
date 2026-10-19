#!/bin/sh
# Proves the Ecto baseline builds the same schema as Hasura's cli-migrations
# applying the same folders from BASELINE_REF (default: the master commit the
# baseline was frozen from). Prints "identical" and exits 0, or prints the diff
# and exits 1. Both scratch stacks are torn down on exit.
set -eu

app_dir="$(cd "$(dirname "$0")/.." && pwd)"
repo_root="$(git -C "$app_dir" rev-parse --show-toplevel)"
baseline_ref="${BASELINE_REF:-e91f310f12b13b3550a5578a9357d9196375864a}"
work_dir="$(mktemp -d)"
project=church-admin-ash-baseline-compare

compose() {
  HASURA_DIR="$work_dir/server/hasura" docker compose \
    --project-name "$project" --file "$app_dir/dev/compare_baseline.compose.yml" "$@"
}

tear_down() {
  compose down --volumes --remove-orphans >/dev/null 2>&1 || true
  rm -rf "$work_dir"
}
trap tear_down EXIT INT TERM

git -C "$repo_root" archive "$baseline_ref" server/hasura | tar -x -C "$work_dir"

last_baseline_version="$(ls "$app_dir/priv/repo/baseline" | sort | tail -n 1 | cut -d_ -f1)"
hasura_last_version="$(ls "$work_dir/server/hasura/migrations/default" | sort | tail -n 1 | cut -d_ -f1)"
if [ "$last_baseline_version" != "$hasura_last_version" ]; then
  echo "baseline ends at $last_baseline_version but $baseline_ref ends at $hasura_last_version" >&2
  exit 1
fi

echo "building Hasura-migrated and Ecto-migrated databases..." >&2
compose down --volumes --remove-orphans >/dev/null 2>&1 || true
compose up --detach --build --wait >&2

(cd "$app_dir" && MIX_ENV=dev DB_PORT=55443 DB_PASSWORD=church-admin-ash-compare \
  mix ecto.migrate --to "$last_baseline_version" >&2)

dump() {
  compose exec -T "$1" pg_dump --username postgres --dbname church_admin --schema-only \
    --exclude-schema hdb_catalog --exclude-table public.ash_schema_migrations
  compose exec -T "$1" psql --username postgres --dbname church_admin --no-align --tuples-only \
    --command "select 'cron.job', jobname, schedule, command from cron.job order by jobname"
}

# pg_dump >= 17.6 wraps the dump in \restrict/\unrestrict with a random key.
# Hasura's event trigger on operations.study_year_roll_runs installs a trigger
# calling hdb_catalog.notify_hasura_*; that is Hasura metadata, not baseline.
normalise() {
  python3 -c '
import re, sys
text = sys.stdin.read()
text = re.sub(r"^\\(un)?restrict .*\n", "", text, flags=re.M)
entries = re.split(r"(?=^--\n-- Name: )", text, flags=re.M)
kept = [e for e in entries if "hdb_catalog." not in e and "notify_hasura_" not in e]
sys.stdout.write("".join(kept))
'
}

dump hasura_postgres | normalise >"$work_dir/hasura.sql"
dump ecto_postgres | normalise >"$work_dir/ecto.sql"

if diff -u "$work_dir/hasura.sql" "$work_dir/ecto.sql"; then
  echo "identical ($(wc -l <"$work_dir/ecto.sql" | tr -d ' ') lines of schema, baseline up to $last_baseline_version)"
else
  exit 1
fi
