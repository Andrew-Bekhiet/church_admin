#!/bin/bash
# =============================================================================
# Glue script: purge a staging mirror, then import the migrated CSVs into it.
#
# Run this AFTER the migrator has produced the CSVs in ./export, e.g.:
#
#   dart run bin/... -c churchdata.json -m meetinghelper.json   # writes ./export
#   PGHOST=... PGPASSWORD=... ./staging/migrate_staging.sh
#
# Order (per the agreed plan):
#   1. PURGE  — delete mirror rows not updated before the cutoff and history
#               rows with a NULL recorded_by  (purge_before_import.sql).
#   2. IMPORT — load the migrated CSVs; INSERT triggers regenerate edit_history
#               for the new rows  (import_after_purge.sql).
#
# Connection comes from standard libpq env vars; connect as a superuser/admin so
# the soft-delete triggers perform real hard deletes during the purge:
#   PGHOST, PGPORT, PGDATABASE, PGUSER, PGPASSWORD
#
# Knobs (env vars):
#   CUTOFF_DATE   purge cutoff date            (default 2026-05-31)
#   EXPORT_DIR    folder containing the CSVs   (default ../export)
#   DRY_RUN=1     purge previews counts + rolls back; import is skipped
#   SKIP_PURGE=1  skip the purge step
#   SKIP_IMPORT=1 skip the import step
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export PGHOST="${PGHOST:?set PGHOST to the staging host}"
export PGPORT="${PGPORT:-5432}"
export PGDATABASE="${PGDATABASE:-church_admin}"
export PGUSER="${PGUSER:-postgres}"

CUTOFF_DATE="${CUTOFF_DATE:-2026-05-31}"
EXPORT_DIR="${EXPORT_DIR:-$SCRIPT_DIR/../export/2026-06-29}"

if ! command -v psql >/dev/null 2>&1; then
  echo "error: psql not found on PATH" >&2
  exit 1
fi

echo "Target   : $PGUSER@$PGHOST:$PGPORT/$PGDATABASE"
echo "Cutoff   : $CUTOFF_DATE"
echo "Export   : $EXPORT_DIR"
echo

# ---- 1. PURGE -------------------------------------------------------------
if [[ "${SKIP_PURGE:-1}" != "1" ]]; then
  PURGE_ARGS=(-v ON_ERROR_STOP=1 -v "cutoff_date=$CUTOFF_DATE")
  if [[ "${DRY_RUN:-0}" == "1" ]]; then
    PURGE_ARGS+=(-v dry_run=1)
    echo "== PURGE (dry run — will roll back) =="
  else
    echo "== PURGE =="
  fi
  psql "${PURGE_ARGS[@]}" -f "$SCRIPT_DIR/purge_before_import.sql"
  echo
else
  echo "== PURGE skipped =="
fi

# ---- 2. IMPORT ------------------------------------------------------------
if [[ "${DRY_RUN:-0}" == "1" ]]; then
  echo "Dry run: skipping import."
  exit 0
fi

if [[ "${SKIP_IMPORT:-0}" != "1" ]]; then
  if [[ ! -f "$EXPORT_DIR/persons.csv" ]]; then
    echo "error: $EXPORT_DIR/persons.csv not found — run the migrator export first" >&2
    exit 1
  fi
  echo "== IMPORT =="
  # \copy paths in the SQL are relative; run psql from the export directory.
  ( cd "$EXPORT_DIR" && psql -v ON_ERROR_STOP=1 -f "$SCRIPT_DIR/import_after_purge.sql" )
  echo
else
  echo "== IMPORT skipped =="
fi

echo "All done."
