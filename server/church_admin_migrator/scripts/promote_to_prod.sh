#!/bin/bash
# =============================================================================
# Promote verified staging data to production.
#
# Copies the DATA of the `public` schema (every table EXCEPT spatial_ref_sys —
# PostGIS's read-only reference table) from the staging mirror into the prod
# database. Run this only AFTER you have imported + verified everything on
# staging (purge_before_import.sql + import_after_purge.sql).
#
# How it works:
#   pg_dump  --data-only --schema=public --exclude-table-data='public.spatial_ref_sys'
#            --disable-triggers   (faithful copy: edit_history / soft-delete /
#                                  attendance triggers do NOT re-fire, so prod
#                                  ends up byte-for-byte identical to staging)
#   | psql   --single-transaction (all-or-nothing: any error rolls it ALL back)
#
# IMPORTANT
#   * --disable-triggers requires connecting to PROD as a superuser (e.g.
#     `postgres`). It also means history is COPIED verbatim from staging rather
#     than regenerated, which is what you want for an exact promotion.
#   * The target's public tables are expected to be EMPTY for the tables being
#     loaded. pg_dump emits plain COPY, so a pre-existing row that collides on a
#     PK/unique constraint will abort the whole transaction (nothing is half
#     applied). Set TRUNCATE_TARGET=1 to wipe the target public tables first.
#   * Other schemas (auth / history / users / permissions / hdb_catalog) are
#     NEVER touched — only public table DATA moves.
#   * Sequences are included so SERIAL/identity counters match staging.
#
# Connection (standard libpq vars), SOURCE = staging, TARGET = prod:
#   SRC_PGHOST / SRC_PGPORT / SRC_PGDATABASE / SRC_PGUSER / SRC_PGPASSWORD
#   DST_PGHOST / DST_PGPORT / DST_PGDATABASE / DST_PGUSER / DST_PGPASSWORD
#
# Knobs:
#   DRY_RUN=1          dump to a file + print stats, do NOT touch prod
#   TRUNCATE_TARGET=1  TRUNCATE the public tables on prod first (CASCADE)
#   DUMP_FILE=path     keep the dump at this path (default: a temp file)
#
# Example:
#   SRC_PGHOST=church-admin-migration SRC_PGPASSWORD=... \
#   DST_PGHOST=prod-db DST_PGPASSWORD=... \
#     ./staging/promote_to_prod.sh
# =============================================================================
set -euo pipefail

# ---- source (staging) -----------------------------------------------------
SRC_PGHOST="${SRC_PGHOST:?set SRC_PGHOST to the staging host}"
SRC_PGPORT="${SRC_PGPORT:-5432}"
SRC_PGDATABASE="${SRC_PGDATABASE:-church_admin}"
SRC_PGUSER="${SRC_PGUSER:-postgres}"

# ---- target (prod) --------------------------------------------------------
DST_PGHOST="${DST_PGHOST:?set DST_PGHOST to the production host}"
DST_PGPORT="${DST_PGPORT:-5432}"
DST_PGDATABASE="${DST_PGDATABASE:-church_admin}"
DST_PGUSER="${DST_PGUSER:-postgres}"

for bin in pg_dump psql; do
  if ! command -v "$bin" >/dev/null 2>&1; then
    echo "error: $bin not found on PATH" >&2
    exit 1
  fi
done

DUMP_FILE="${DUMP_FILE:-$(mktemp -t church_admin_public.XXXXXX.sql)}"
KEEP_DUMP="${DUMP_FILE+1}"

echo "Source : $SRC_PGUSER@$SRC_PGHOST:$SRC_PGPORT/$SRC_PGDATABASE  (staging)"
echo "Target : $DST_PGUSER@$DST_PGHOST:$DST_PGPORT/$DST_PGDATABASE  (PROD)"
echo "Dump   : $DUMP_FILE"
echo "Scope  : public schema data, excluding spatial_ref_sys"
echo

# ---- 1. DUMP staging public data -----------------------------------------
echo "== DUMP (staging) =="
PGHOST="$SRC_PGHOST" PGPORT="$SRC_PGPORT" PGDATABASE="$SRC_PGDATABASE" PGUSER="$SRC_PGUSER" \
  pg_dump \
    --data-only \
    --schema=public \
    --exclude-table-data='public.spatial_ref_sys' \
    --disable-triggers \
    --no-owner --no-privileges \
    --file="$DUMP_FILE"

echo "Wrote $(wc -l < "$DUMP_FILE" | tr -d ' ') lines to $DUMP_FILE"
echo

if [[ "${DRY_RUN:-0}" == "1" ]]; then
  echo "Dry run: dump produced, prod NOT modified. Inspect: $DUMP_FILE"
  exit 0
fi

# ---- 2. (optional) TRUNCATE target public tables --------------------------
if [[ "${TRUNCATE_TARGET:-0}" == "1" ]]; then
  echo "== TRUNCATE target public tables (except spatial_ref_sys) =="
  PGHOST="$DST_PGHOST" PGPORT="$DST_PGPORT" PGDATABASE="$DST_PGDATABASE" PGUSER="$DST_PGUSER" \
    psql -v ON_ERROR_STOP=1 <<'SQL'
DO $$
DECLARE
  tbls text;
BEGIN
  SELECT string_agg(format('%I.%I', schemaname, tablename), ', ')
    INTO tbls
  FROM pg_tables
  WHERE schemaname = 'public'
    AND tablename <> 'spatial_ref_sys';
  IF tbls IS NOT NULL THEN
    EXECUTE 'TRUNCATE TABLE ' || tbls || ' RESTART IDENTITY CASCADE';
  END IF;
END$$;
SQL
  echo
fi

# ---- 3. LOAD into prod, single transaction --------------------------------
echo "== LOAD (prod) =="
PGHOST="$DST_PGHOST" PGPORT="$DST_PGPORT" PGDATABASE="$DST_PGDATABASE" PGUSER="$DST_PGUSER" \
  psql \
    --single-transaction \
    -v ON_ERROR_STOP=1 \
    -f "$DUMP_FILE"

echo
if [[ -z "$KEEP_DUMP" ]]; then
  rm -f "$DUMP_FILE"
fi
echo "Promotion complete."
