-- =============================================================================
-- Staging purge — run BEFORE importing the migrated CSVs.
--
-- Removes "stale" rows from a production mirror so that only actively-used data
-- remains, then the migrator's CSVs are imported on top (the import's own
-- INSERT triggers regenerate edit_history for the new rows).
--
-- Two deletions, per request:
--   1. Entity rows (persons / families / stores) that were NOT updated before
--      the cutoff date — i.e. have no history.edit_history row with time before
--      the cutoff.
--   2. History rows whose recorded_by is NULL (edit / visit / call history).
--
-- IMPORTANT
--   * Run as a superuser/admin (e.g. `postgres`). The soft_delete_trigger()
--     performs a real HARD delete when there is no `hasura.user` session set
--     (which is the case from psql), so rows are physically removed.
--   * Everything runs in a SINGLE transaction: any error rolls it ALL back.
--   * users / auth / permissions tables are never touched.
--   * Scope is intentionally limited to persons, families and stores. Areas and
--     streets are excluded (addresses reference them ON DELETE RESTRICT); classes
--     / services / groups are excluded (program structure, RESTRICT-heavy and
--     rarely edited). Extend `_doomed_*` below if you really want them.
--
-- Usage:
--   psql -v ON_ERROR_STOP=1 -v cutoff_date=2026-07-01 -f purge_before_import.sql
-- (cutoff_date defaults to 2026-07-01 if not provided)
-- =============================================================================

\set ON_ERROR_STOP on

-- Default the cutoff date when not supplied via `-v cutoff_date=...`.
\if :{?cutoff_date}
\else
\set cutoff_date 2026-07-01
\endif

\echo 'Purging staging rows not updated before' :'cutoff_date'

BEGIN;

-- ---------------------------------------------------------------------------
-- 1. Identify doomed entity rows: those with NO edit_history before the cutoff
-- ---------------------------------------------------------------------------
CREATE TEMP TABLE _doomed_persons ON COMMIT DROP AS
SELECT p.id
FROM public.persons AS p
WHERE NOT EXISTS (
    SELECT 1
    FROM history.edit_history AS e
    WHERE
        e."table" = 'persons'
        AND e.record_id = p.id
        AND e."time" >= :'cutoff_date'::timestamptz
);

CREATE TEMP TABLE _doomed_families ON COMMIT DROP AS
SELECT f.id
FROM public.families AS f
WHERE NOT EXISTS (
    SELECT 1
    FROM history.edit_history AS e
    WHERE
        e."table" = 'families'
        AND e.record_id = f.id
        AND e."time" >= :'cutoff_date'::timestamptz
);

CREATE TEMP TABLE _doomed_stores ON COMMIT DROP AS
SELECT s.id
FROM public.stores AS s
WHERE NOT EXISTS (
    SELECT 1
    FROM history.edit_history AS e
    WHERE
        e."table" = 'stores'
        AND e.record_id = s.id
        AND e."time" >= :'cutoff_date'::timestamptz
);

\echo 'Doomed rows (no edit on/after the cutoff):'
SELECT
    (SELECT count(*) FROM _doomed_persons) AS persons,
    (SELECT count(*) FROM _doomed_families) AS families,
    (SELECT count(*) FROM _doomed_stores) AS stores;

-- ---------------------------------------------------------------------------
-- 2. Persons: clear the dependents that RESTRICT a delete, then delete.
--    (persons_services / persons_groups / persons_hobbies / persons_tags /
--     persons_labels are ON DELETE CASCADE and clean themselves up.)
-- ---------------------------------------------------------------------------
DELETE FROM history.attendance_history
WHERE person_id IN (SELECT id FROM _doomed_persons);
DELETE FROM history.call_history
WHERE person_id IN (SELECT id FROM _doomed_persons);
DELETE FROM history.confession_history
WHERE person_id IN (SELECT id FROM _doomed_persons);
DELETE FROM history.kodas_history
WHERE person_id IN (SELECT id FROM _doomed_persons);
DELETE FROM history.visit_history
WHERE "table" = 'persons' AND record_id IN (SELECT id FROM _doomed_persons);
DELETE FROM history.edit_history
WHERE "table" = 'persons' AND record_id IN (SELECT id FROM _doomed_persons);

DELETE FROM public.persons
WHERE id IN (SELECT id FROM _doomed_persons);

-- ---------------------------------------------------------------------------
-- 3. Families: only delete a doomed family that has NO surviving members, so
--    that an updated person is never cascade-deleted via its (stale) family.
--    addresses(family) + families_families cascade; stores.admin_family -> NULL.
-- ---------------------------------------------------------------------------
CREATE TEMP TABLE _delete_families ON COMMIT DROP AS
SELECT df.id
FROM _doomed_families AS df
WHERE NOT EXISTS (
    SELECT 1 FROM public.persons AS p
    WHERE p.family_id = df.id
);

DELETE FROM history.visit_history
WHERE "table" = 'families' AND record_id IN (SELECT id FROM _delete_families);
DELETE FROM history.edit_history
WHERE "table" = 'families' AND record_id IN (SELECT id FROM _delete_families);

DELETE FROM public.families
WHERE id IN (SELECT id FROM _delete_families);

-- ---------------------------------------------------------------------------
-- 4. Stores: only delete a doomed store that has NO surviving persons, since
--    persons.store_id is ON DELETE SET NULL and persons_general_check() would
--    reject a person left with no family/store/service/group/uid at COMMIT.
--    addresses(store) + streets_stores cascade automatically.
-- ---------------------------------------------------------------------------
CREATE TEMP TABLE _delete_stores ON COMMIT DROP AS
SELECT ds.id
FROM _doomed_stores AS ds
WHERE NOT EXISTS (
    SELECT 1 FROM public.persons AS p
    WHERE p.store_id = ds.id
);

DELETE FROM history.visit_history
WHERE "table" = 'stores' AND record_id IN (SELECT id FROM _delete_stores);
DELETE FROM history.edit_history
WHERE "table" = 'stores' AND record_id IN (SELECT id FROM _delete_stores);

DELETE FROM public.stores
WHERE id IN (SELECT id FROM _delete_stores);

\echo 'Rows to delete (doomed rows still anchoring a person are kept):'
SELECT
    (SELECT count(*) FROM _doomed_persons) AS persons,
    (SELECT count(*) FROM _delete_families) AS families,
    (SELECT count(*) FROM _delete_stores) AS stores;

-- ---------------------------------------------------------------------------
-- 5. Remove history rows with a NULL recorded_by (edit / visit / call).
--    confession/kodas/attendance history are NOT NULL, so nothing to do there.
-- ---------------------------------------------------------------------------
DELETE FROM history.edit_history
WHERE recorded_by IS NULL;
DELETE FROM history.visit_history
WHERE recorded_by IS NULL;
DELETE FROM history.call_history
WHERE recorded_by IS NULL;

-- Pass `-v dry_run=1` to preview the per-statement "DELETE n" counts above and
-- roll everything back instead of committing.
\if :{?dry_run}
\echo 'DRY RUN — rolling back, no changes committed.'
ROLLBACK;
\else
COMMIT;
\echo 'Purge complete.'
\endif
