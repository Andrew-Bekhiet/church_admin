-- =============================================================================
-- Import the migrated CSVs (./export) into the staging database.
--
-- Run AFTER purge_before_import.sql. Invoke with psql's CWD set to the export
-- directory (the glue script does this) so the \copy paths resolve.
--
-- Strategy: each CSV is loaded into a TEMP table that inherits the real column
-- types of its target (so COPY parses geography/jsonb/dates/enums correctly),
-- then INSERT ... ON CONFLICT DO NOTHING moves it across. That makes the import
--   * type-correct (no manual casts),
--   * conflict-safe / re-runnable (pre-existing reference rows are skipped),
--   * tolerant of self-references (each COPY is a single statement, so
--     services.next_service_id resolves within the batch).
--
-- Entity tables import in one transaction; history imports in a second one so a
-- history FK problem (see confession/kodas note) can't roll back the entities.
-- Triggers stay enabled, so edit_history is regenerated for the inserted rows.
-- =============================================================================

\set ON_ERROR_STOP on
\timing on

-- ---------------------------------------------------------------------------
-- Pass 1: reference data + entities (FK-dependency order)
-- ---------------------------------------------------------------------------
BEGIN;

SET session_replication_role = replica;
-- ---- independent reference tables ----------------------------------------
-- churches.csv uses the model's camelCase keys (id,name,isHidden); map isHidden -> is_hidden.
CREATE TEMP TABLE _s ("id" uuid, "name" text, "isHidden" boolean);
\copy _s FROM 'churches.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.churches (id, name, is_hidden) SELECT
    id,
    name,
    "isHidden"
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    id,
    name
FROM public.jobs WITH NO DATA;
\copy _s FROM 'jobs.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.jobs (id, name) SELECT
    id,
    name
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    id,
    name
FROM public.qualifications WITH NO DATA;
\copy _s FROM 'qualifications.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.qualifications (id, name) SELECT
    id,
    name
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    id,
    name
FROM public.schools WITH NO DATA;
\copy _s FROM 'schools.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.schools (id, name) SELECT
    id,
    name
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    id,
    name
FROM public.colleges WITH NO DATA;
\copy _s FROM 'colleges.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.colleges (id, name) SELECT
    id,
    name
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

-- fathers.csv has only id,name; fathers.is_hidden defaults to TRUE, so set it
-- false explicitly to keep migrated fathers visible.
CREATE TEMP TABLE _s AS SELECT
    id,
    name
FROM public.fathers WITH NO DATA;
\copy _s FROM 'fathers.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.fathers (id, name, is_hidden) SELECT
    id,
    name,
    false AS is_hidden
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    id,
    name,
    color
FROM public.person_states WITH NO DATA;
\copy _s FROM 'person_states.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.person_states (id, name, color) SELECT
    id,
    name,
    color
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

-- person_types.csv uses the model's camelCase keys; map isFamilyAdmin/isHidden
-- to the snake_case columns.
CREATE TEMP TABLE _s ("id" uuid, "name" text, "order" integer, "isFamilyAdmin" boolean, "isHidden" boolean);
\copy _s FROM 'person_types.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.person_types (id, name, "order", is_family_admin, is_hidden)
SELECT
    id,
    name,
    "order",
    "isFamilyAdmin",
    "isHidden"
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    "order",
    id,
    name
FROM public.shammas_levels WITH NO DATA;
\copy _s FROM 'shammas_levels.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.shammas_levels ("order", id, name) SELECT
    "order",
    id,
    name
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

-- study_years.id is GENERATED; only order + name are loaded.
CREATE TEMP TABLE _s AS SELECT
    "order",
    name
FROM public.study_years WITH NO DATA;
\copy _s FROM 'study_years.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.study_years ("order", name) SELECT
    "order",
    name
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

-- ---- geographic + program structure --------------------------------------
CREATE TEMP TABLE _s AS SELECT
    id,
    name,
    bounds,
    color,
    photo_updated_at,
    blurhash
FROM public.areas WITH NO DATA;
\copy _s FROM 'areas.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.areas (id, name, bounds, color, photo_updated_at, blurhash)
SELECT
    id,
    name,
    bounds,
    color,
    photo_updated_at,
    blurhash
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    id,
    name,
    line,
    color,
    photo_updated_at,
    blurhash
FROM public.streets WITH NO DATA;
\copy _s FROM 'streets.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.streets (id, name, line, color, photo_updated_at, blurhash)
SELECT
    id,
    name,
    line,
    color,
    photo_updated_at,
    blurhash
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

-- services.next_service_id self-references services; the single COPY loads the
-- whole batch before the FK is verified, so forward references are fine.
-- default_meeting_id is deliberately NOT set here: it points at history.meetings
-- while meetings.service_id points back at services. We break that cycle by
-- inserting services without it, importing meetings, then linking them below.
CREATE TEMP TABLE _s AS
SELECT
    id,
    name,
    study_year_from_id,
    study_year_to_id,
    next_service_id,
    default_meeting_id,
    color,
    photo_updated_at,
    blurhash
FROM public.services WITH NO DATA;
\copy _s FROM 'services.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash)
SELECT
    id,
    name,
    study_year_from_id,
    study_year_to_id,
    next_service_id,
    color,
    photo_updated_at,
    blurhash
FROM _s ON CONFLICT DO NOTHING;

-- Keep the service -> default_meeting link to apply after meetings are imported.
CREATE TEMP TABLE _service_default_meetings AS
SELECT
    id,
    default_meeting_id
FROM _s
WHERE default_meeting_id IS NOT null;
DROP TABLE _s;

CREATE TEMP TABLE _s AS
SELECT
    id,
    name,
    service_id,
    service_study_year,
    service_gender,
    color,
    photo_updated_at,
    blurhash
FROM public.classes WITH NO DATA;
\copy _s FROM 'classes.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash)
SELECT
    id,
    name,
    service_id,
    service_study_year,
    service_gender,
    color,
    photo_updated_at,
    blurhash
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS
SELECT
    id,
    name,
    service_id,
    service_study_year,
    service_gender,
    group_id,
    audience,
    is_archived,
    color
FROM history.meetings WITH NO DATA;
\copy _s FROM 'meetings.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color)
SELECT
    id,
    name,
    service_id,
    service_study_year,
    service_gender,
    group_id,
    audience,
    is_archived,
    color
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

-- Meetings now exist, so link each migrated service to its default meeting.
-- Guarded on IS NULL so an existing service's default meeting is never clobbered.
UPDATE public.services AS s
SET default_meeting_id = sdm.default_meeting_id
FROM _service_default_meetings AS sdm
WHERE
    sdm.id = s.id
    AND s.default_meeting_id IS null;
DROP TABLE _service_default_meetings;

CREATE TEMP TABLE _s AS SELECT
    area_id,
    street_id
FROM public.areas_streets WITH NO DATA;
\copy _s FROM 'areas_streets.csv' WITH (FORMAT csv, HEADER true)
INSERT INTO public.areas_streets (area_id, street_id) SELECT
    area_id,
    street_id
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

-- ---- families / stores / addresses / persons ------------------------------
CREATE TEMP TABLE _s AS
SELECT
    id,
    name,
    status,
    marriage_date,
    deceased_spouse_name,
    notes,
    color,
    photo_updated_at,
    blurhash
FROM public.families WITH NO DATA;
\copy _s FROM 'families.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.families (id, name, status, marriage_date, deceased_spouse_name, notes, color, photo_updated_at, blurhash)
SELECT
    id,
    name,
    status,
    marriage_date,
    deceased_spouse_name,
    notes,
    color,
    photo_updated_at,
    blurhash
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    parent_family_id,
    child_family_id
FROM public.families_families WITH NO DATA;
\copy _s FROM 'families_families.csv' WITH (FORMAT csv, HEADER true)
INSERT INTO public.families_families (parent_family_id, child_family_id) SELECT
    parent_family_id,
    child_family_id
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    id,
    name,
    admin_family,
    color,
    photo_updated_at,
    blurhash
FROM public.stores WITH NO DATA;
\copy _s FROM 'stores.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.stores (id, name, admin_family, color, photo_updated_at, blurhash)
SELECT
    id,
    name,
    admin_family,
    color,
    photo_updated_at,
    blurhash
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS
SELECT
    id,
    country_iso_code,
    district_id,
    area_id,
    street_id,
    substreet_name,
    geolocation,
    storey_number,
    house_number,
    apartment_number,
    special_landmark,
    family_id,
    store_id
FROM public.addresses WITH NO DATA;
\copy _s FROM 'addresses.csv' WITH (FORMAT csv, HEADER true)
INSERT INTO public.addresses (
    id, country_iso_code, district_id, area_id, street_id, substreet_name, geolocation,
    storey_number, house_number, apartment_number, special_landmark, family_id, store_id
)
SELECT
    id,
    country_iso_code,
    district_id,
    area_id,
    street_id,
    substreet_name,
    geolocation,
    storey_number,
    house_number,
    apartment_number,
    special_landmark,
    family_id,
    store_id
FROM _s
ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS
SELECT
    id,
    national_id,
    name,
    main_phone,
    other_phones,
    birthdate,
    gender,
    is_shammas,
    shammas_level_id,
    school_id,
    college_id,
    church_id,
    father_id,
    work_status,
    job_id,
    job_description,
    qualification_id,
    martial_status,
    person_type_id,
    state_id,
    is_servant,
    family_id,
    store_id,
    study_year_id,
    color,
    photo_updated_at,
    blurhash,
    notes
FROM public.persons WITH NO DATA;
\copy _s FROM 'persons.csv' WITH (FORMAT csv, HEADER true, FORCE_NOT_NULL("name"))
INSERT INTO public.persons (
    id, national_id, name, main_phone, other_phones, birthdate, gender, is_shammas, shammas_level_id,
    school_id, college_id, church_id, father_id, work_status, job_id, job_description, qualification_id,
    martial_status, person_type_id, state_id, is_servant, family_id, store_id, study_year_id, color,
    photo_updated_at, blurhash, notes
)
SELECT
    id,
    national_id,
    name,
    main_phone,
    other_phones,
    birthdate,
    gender,
    is_shammas,
    shammas_level_id,
    school_id,
    college_id,
    church_id,
    father_id,
    work_status,
    job_id,
    job_description,
    qualification_id,
    martial_status,
    person_type_id,
    state_id,
    is_servant,
    family_id,
    store_id,
    study_year_id,
    color,
    photo_updated_at,
    blurhash,
    notes
FROM _s
ON CONFLICT DO NOTHING;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    person_id,
    service_id
FROM public.persons_services WITH NO DATA;
\copy _s FROM 'persons_services.csv' WITH (FORMAT csv, HEADER true)
INSERT INTO public.persons_services (person_id, service_id) SELECT
    person_id,
    service_id
FROM _s ON CONFLICT DO NOTHING;
DROP TABLE _s;

COMMIT;
\echo 'Entity import complete.'

---------------------------------------------------------------------------
-- Pass 2: history. Separate transaction so a confession/kodas recorded_by FK
-- failure does not roll back the entity import.

-- NOTE: confession_history / kodas_history carry recorded_by = the placeholder
-- migrationRecordedByUid. That UID MUST exist in auth.users_data, or these two
-- COPYs fail (and only this transaction rolls back).
---------------------------------------------------------------------------
BEGIN;

CREATE TEMP TABLE _s AS SELECT
    "table",
    record_id,
    "time",
    is_father_visit
FROM history.visit_history WITH NO DATA;
\copy _s FROM 'visit_history.csv' WITH (FORMAT csv, HEADER true)
INSERT INTO history.visit_history ("table", record_id, "time", is_father_visit)
SELECT
    "table",
    record_id,
    "time",
    is_father_visit
FROM _s;
DROP TABLE _s;

CREATE TEMP TABLE _s AS SELECT
    person_id,
    "time"
FROM history.call_history WITH NO DATA;
\copy _s FROM 'call_history.csv' WITH (FORMAT csv, HEADER true)
INSERT INTO history.call_history (person_id, "time") SELECT
    person_id,
    "time"
FROM _s
ON CONFLICT DO NOTHING;
DROP TABLE _s;

-- Ensure all day_id values referenced in confession_history / kodas_history exist
-- in attendance_days for the day_id FK constraint (attendance_days PK column is "day").
CREATE TEMP TABLE _confession_src AS SELECT
    day_id,
    person_id,
    recorded_by
FROM history.confession_history WITH NO DATA;
\copy _confession_src FROM 'confession_history.csv' WITH (FORMAT csv, HEADER true)

CREATE TEMP TABLE _kodas_src AS SELECT
    day_id,
    person_id,
    recorded_by
FROM history.kodas_history WITH NO DATA;
\copy _kodas_src FROM 'kodas_history.csv' WITH (FORMAT csv, HEADER true)

INSERT INTO history.attendance_days (day)
SELECT DISTINCT day_id
FROM (
    SELECT day_id FROM _confession_src
    UNION
    SELECT day_id FROM _kodas_src
) AS src
WHERE
    day_id IS NOT null
    AND NOT EXISTS (
        SELECT 1 FROM history.attendance_days AS ad
        WHERE ad.day = src.day_id
    );

INSERT INTO history.confession_history (day_id, person_id, recorded_by) SELECT
    day_id,
    person_id,
    recorded_by
FROM _confession_src;
DROP TABLE _confession_src;

INSERT INTO history.kodas_history (day_id, person_id, recorded_by) SELECT
    day_id,
    person_id,
    recorded_by
FROM _kodas_src;
DROP TABLE _kodas_src;

COMMIT;
\echo 'History import complete.'

UPDATE persons SET color = null
WHERE color = 0;
UPDATE classes SET color = null
WHERE color = 0;
UPDATE services SET color = null
WHERE color = 0;
UPDATE families SET color = null
WHERE color = 0;
UPDATE stores SET color = null
WHERE color = 0;
UPDATE streets SET color = null
WHERE color = 0;
UPDATE areas SET color = null
WHERE color = 0;
