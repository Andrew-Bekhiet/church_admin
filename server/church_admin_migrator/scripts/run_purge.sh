#!/bin/bash
# =============================================================================
# Runs the staging purge (purge_before_import.sql) against a staging database.
#
# Run this AFTER taking/refreshing the staging mirror and BEFORE importing the
# migrated CSVs. The whole purge is a single transaction, so a failure leaves
# the database untouched.
#
# Connection is taken from standard libpq env vars (or override inline):
#   PGHOST, PGPORT, PGDATABASE, PGUSER, PGPASSWORD
# Must connect as a superuser/admin so soft-delete triggers perform hard deletes.
#
# Cutoff date (rows with no edit before it are purged) defaults to 2026-07-01:
#   CUTOFF_DATE=2026-07-01 ./run_purge.sh
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

PGHOST="${PGHOST:-localhost}"
PGPORT="${PGPORT:-5432}"
PGDATABASE="${PGDATABASE:-church_admin}"
PGUSER="${PGUSER:-postgres}"
CUTOFF_DATE="${CUTOFF_DATE:-2026-07-01}"

# Set DRY_RUN=1 to preview deletion counts and roll back without committing.
DRY_RUN_ARGS=()
if [[ "${DRY_RUN:-0}" == "1" ]]; then
  DRY_RUN_ARGS=(-v dry_run=1)
  echo "DRY RUN — no changes will be committed."
fi

echo "Purging '$PGDATABASE' on $PGHOST:$PGPORT (cutoff: $CUTOFF_DATE)..."

PGHOST="$PGHOST" PGPORT="$PGPORT" PGDATABASE="$PGDATABASE" PGUSER="$PGUSER" \
  psql \
    -v ON_ERROR_STOP=1 \
    -v "cutoff_date=$CUTOFF_DATE" \
    "${DRY_RUN_ARGS[@]}" \
    -f "$SCRIPT_DIR/purge_before_import.sql"

echo "Done. You can now import the migrated CSVs from ./export."
