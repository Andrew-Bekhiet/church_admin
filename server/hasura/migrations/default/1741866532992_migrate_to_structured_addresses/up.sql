-- Wrap everything in a transaction for safety
BEGIN;

CREATE TABLE IF NOT EXISTS public.districts
(
    id uuid NOT NULL DEFAULT gen_random_uuid(),
    name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT districts_pk PRIMARY KEY (id),
    CONSTRAINT districts_unique_name UNIQUE (name)
);

CREATE TABLE IF NOT EXISTS public.addresses
(
    id uuid NOT NULL DEFAULT gen_random_uuid(),
    country_iso_code text COLLATE pg_catalog."default" NOT NULL DEFAULT 'EG'::text,
    district_id uuid,
    area_id uuid NOT NULL,
    street_id uuid NOT NULL,
    substreet_name text COLLATE pg_catalog."default",
    geolocation geography(Point,4326),
    storey_number smallint,
    house_number smallint,
    apartment_number smallint,
    special_landmark text COLLATE pg_catalog."default",
    family_id uuid,
    store_id uuid,
    CONSTRAINT addresses_pk PRIMARY KEY (id),
    CONSTRAINT addresses_areas_fk FOREIGN KEY (area_id)
        REFERENCES public.areas (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT addresses_districts_fk FOREIGN KEY (district_id)
        REFERENCES public.districts (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT addresses_families_fk FOREIGN KEY (family_id)
        REFERENCES public.families (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT addresses_stores_fk FOREIGN KEY (store_id)
        REFERENCES public.stores (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT addresses_streets_fk FOREIGN KEY (street_id)
        REFERENCES public.streets (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT addresses_family_or_store_check CHECK ((family_id IS NOT NULL) <> (store_id IS NOT NULL))
);

CREATE UNIQUE INDEX IF NOT EXISTS addresses_family_id_idx
    ON public.addresses USING btree
    (family_id ASC NULLS LAST);
CREATE UNIQUE INDEX IF NOT EXISTS addresses_store_id_idx
    ON public.addresses USING btree
    (store_id ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS addresses_street_id_idx
    ON public.addresses USING btree
    (street_id ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS addresses_area_id_idx
    ON public.addresses USING btree
    (area_id ASC NULLS LAST);
CREATE INDEX IF NOT EXISTS addresses_geolocation_idx
    ON public.addresses USING gist
    (geolocation);

-- Create temporary tables for the migration
CREATE TEMPORARY TABLE street_mapping (
    old_id uuid,
    new_id uuid,
    cleaned_name text
);

-- Step 1: Create cleaned versions of streets and insert into temp table
WITH cleaned_streets AS (
    SELECT 
        id,
        regexp_replace(
    regexp_replace(
        regexp_replace(
            regexp_replace(
                regexp_replace(NAME, '(شارع)|(الشارع)', ''),
                '(^[^-]+-\s?)|(^\s+)|(\s+$)',
                ''
            ),
            'ه$',
            'ة'
        ),
        'أ|إ|آ',
        'ا'
    ),
    'ى',
    'ي'
) AS cleaned_name,
        line,
        color,
        photo_updated_at,
        blurhash
    FROM streets
)
INSERT INTO street_mapping (old_id, cleaned_name)
SELECT id, cleaned_name FROM cleaned_streets;

-- Step 2: Generate new street IDs for unique cleaned names
WITH unique_streets AS (
    SELECT 
        DISTINCT ON (cleaned_name) 
        cleaned_name,
        gen_random_uuid() AS new_id
    FROM street_mapping
)
UPDATE street_mapping sm
SET new_id = us.new_id
FROM unique_streets us
WHERE sm.cleaned_name = us.cleaned_name;

SELECT *
FROM street_mapping
ORDER BY cleaned_name;
UPDATE street_mapping
SET cleaned_name = 'بنها', new_id = (select new_id from street_mapping where old_id = '98e47fd2-0333-4a2f-91e8-49197fdb367e')
WHERE old_id = '98e47fd2-0333-4a2f-91e8-49197fdb367e';

-- Step 3: Create new combined streets with flattened line handling and proper geography/geometry casting
INSERT INTO streets (id, name, line, color, photo_updated_at, blurhash)
SELECT 
    m.new_id,
    m.cleaned_name,
    -- Improved line handling with flattening for MultiLineStrings and proper casting:
    CASE 
        WHEN ST_GeometryType(ST_LineMerge(ST_Union(s.line::geometry))) = 'ST_LineString' THEN 
            -- If normal merging works, use it
            (ST_LineMerge(ST_Union(s.line::geometry)))::geography
        WHEN ST_GeometryType(ST_LineMerge(ST_SnapToGrid(ST_Union(s.line::geometry), 0.0001))) = 'ST_LineString' THEN
            -- Try snapping to grid to connect close vertices
            (ST_LineMerge(ST_SnapToGrid(ST_Union(s.line::geometry), 0.0001)))::geography
        ELSE
            -- Flatten the MultiLineString by extracting all points and creating a new LineString
            (ST_MakeLine(
                (SELECT array_agg(geom ORDER BY path)
                FROM (
                    SELECT (dp).geom, (dp).path
                    FROM (
                        SELECT ST_DumpPoints(ST_LineMerge(ST_Union(s.line::geometry))) AS dp
                    ) points
                ) ordered_points
            )))::geography
    END AS line,
    (array_agg(s.color) FILTER (WHERE s.color IS NOT NULL))[1] AS color,
    MAX(s.photo_updated_at) AS photo_updated_at,
    (array_agg(s.blurhash) FILTER (WHERE s.blurhash IS NOT NULL))[1] AS blurhash
FROM street_mapping m
JOIN streets s ON m.old_id = s.id
GROUP BY m.new_id, m.cleaned_name;

-- Step 4: Update areas_streets with new street IDs
INSERT INTO areas_streets (area_id, street_id)
SELECT DISTINCT
    as_old.area_id,
    sm.new_id
FROM areas_streets as_old
JOIN street_mapping sm ON as_old.street_id = sm.old_id
ON CONFLICT (area_id, street_id) DO NOTHING;
-- Step 5: Migrate streets_families to addresses table 
-- Use geolocation to determine the closest area when streets span multiple areas
INSERT INTO addresses (
    country_iso_code,
    area_id,
    street_id,
    geolocation,
    special_landmark,
    family_id
)
WITH family_area_candidates AS (
    SELECT 
        f.id AS family_id,
        f.geolocation,
        f.address AS special_landmark,
        sm.new_id AS street_id,
        a.id AS area_id,
        -- Calculate distance between family and area bounds
        CASE 
            WHEN f.geolocation IS NOT NULL AND a.bounds IS NOT NULL THEN 
                ST_Distance(f.geolocation::geometry, a.bounds)
            ELSE NULL
        END AS distance_to_area,
        -- Assign row number for each family ordered by distance to area
        ROW_NUMBER() OVER (
            PARTITION BY f.id 
            ORDER BY 
                CASE 
                    WHEN f.geolocation IS NOT NULL AND a.bounds IS NOT NULL THEN 
                        ST_Distance(f.geolocation::geometry, a.bounds)
                    ELSE NULL
                END NULLS LAST,
                a.id -- Deterministic fallback if distances are NULL or equal
        ) AS area_rank
    FROM families f
    JOIN streets_families sf ON f.id = sf.family_id
    JOIN street_mapping sm ON sf.street_id = sm.old_id
    JOIN areas_streets ast ON ast.street_id = sf.street_id
    JOIN areas a ON ast.area_id = a.id
)
SELECT 
    'EG',
    area_id,
    street_id,
    geolocation,
    special_landmark,
    family_id
FROM family_area_candidates
WHERE area_rank = 1; -- Only take the closest area for each family

-- Rest of the script remains the same
-- Step 6: Migrate stores to addresses table
-- Use geolocation to determine the closest area when streets span multiple areas
INSERT INTO addresses (
    country_iso_code,
    area_id,
    street_id,
    geolocation,
    special_landmark,
    store_id
)
WITH store_area_candidates AS (
    SELECT 
        s.id AS store_id,
        s.geolocation,
        s.address AS special_landmark,
        sm.new_id AS street_id,
        a.id AS area_id,
        -- Calculate distance between store and area bounds
        CASE 
            WHEN s.geolocation IS NOT NULL AND a.bounds IS NOT NULL THEN 
                ST_Distance(s.geolocation::geometry, a.bounds)
            ELSE NULL
        END AS distance_to_area,
        -- Assign row number for each store ordered by distance to area
        ROW_NUMBER() OVER (
            PARTITION BY s.id 
            ORDER BY 
                CASE 
                    WHEN s.geolocation IS NOT NULL AND a.bounds IS NOT NULL THEN 
                        ST_Distance(s.geolocation::geometry, a.bounds)
                    ELSE NULL
                END NULLS LAST,
                a.id -- Deterministic fallback if distances are NULL or equal
        ) AS area_rank
    FROM stores s
    JOIN streets_stores ss ON s.id = ss.store_id
    JOIN street_mapping sm ON ss.street_id = sm.old_id
    JOIN areas_streets ast ON ast.street_id = ss.street_id
    JOIN areas a ON ast.area_id = a.id
)
SELECT 
    'EG',
    area_id,
    street_id,
    geolocation,
    special_landmark,
    store_id
FROM store_area_candidates
WHERE area_rank = 1; -- Only take the closest area for each store

select areas.name area, streets.name street, families.name family, stores.name store, addresses.special_landmark, addresses.geolocation from addresses
join areas on areas.id = addresses.area_id
join streets on streets.id = addresses.street_id
left join families on families.id = addresses.family_id
left join stores on stores.id = addresses.store_id
order by area, street, family, store;


-- Step 7: Improved verification that compares old relationships with new addresses
CREATE TEMPORARY TABLE migration_verification AS
SELECT 
    -- Count families that had street and area associations in old structure
    (SELECT COUNT(DISTINCT sf.family_id) 
     FROM streets_families sf
     JOIN areas_streets ast ON sf.street_id = ast.street_id) AS families_with_street_and_area,
     
    -- Count families with addresses in new structure
    (SELECT COUNT(*) FROM addresses WHERE family_id IS NOT NULL) AS families_with_addresses,
    
    -- Count stores that had street and area associations in old structure
    (SELECT COUNT(DISTINCT ss.store_id) 
     FROM streets_stores ss
     JOIN areas_streets ast ON ss.street_id = ast.street_id) AS stores_with_street_and_area,
     
    -- Count stores with addresses in new structure
    (SELECT COUNT(*) FROM addresses WHERE store_id IS NOT NULL) AS stores_with_addresses,
    
    -- Street counts for further verification
    (SELECT COUNT(*) FROM (SELECT DISTINCT cleaned_name FROM street_mapping) s) AS unique_street_names,
    (SELECT COUNT(DISTINCT new_id) FROM street_mapping) AS new_streets_created,
    (SELECT COUNT(DISTINCT street_id) FROM areas_streets WHERE street_id IN (SELECT new_id FROM street_mapping)) AS streets_in_areas_streets
;

-- Only proceed with cleanup if verification checks pass
DO $$
DECLARE
    missing_families INT;
    missing_stores INT;
    v_record RECORD;
BEGIN
    SELECT * INTO v_record FROM migration_verification;
    
    -- Get counts of missing entities based on old structure relationships
    missing_families := v_record.families_with_street_and_area - v_record.families_with_addresses;
    missing_stores := v_record.stores_with_street_and_area - v_record.stores_with_addresses;
    
    -- Log verification results for debugging
    RAISE NOTICE 'Verification results: % families with street/area, % families with addresses, % missing', 
        v_record.families_with_street_and_area, v_record.families_with_addresses, missing_families;
    RAISE NOTICE 'Verification results: % stores with street/area, % stores with addresses, % missing', 
        v_record.stores_with_street_and_area, v_record.stores_with_addresses, missing_stores;
    RAISE NOTICE 'Streets: % unique names resulted in % new streets, % streets in areas_streets',
        v_record.unique_street_names, v_record.new_streets_created, v_record.streets_in_areas_streets;
    
    -- Fail if any entities are missing
    IF missing_families > 0 OR missing_stores > 0 THEN
        RAISE EXCEPTION 'Migration verification failed: % families and % stores were not properly migrated', 
            missing_families, missing_stores;
    END IF;
    
    -- Continue with cleanup as before
    -- Step 8: Remove old relationship tables
    DELETE FROM streets_families;
    DELETE FROM streets_stores;
    
    -- Step 11: Delete old streets that have been migrated to new ones
    DELETE FROM streets 
    WHERE id IN (
        SELECT old_id FROM street_mapping
        WHERE old_id != new_id
    );
    
    -- Step 12: Remove areas_streets entries pointing to deleted streets
    DELETE FROM areas_streets 
    WHERE street_id NOT IN (SELECT id FROM streets);
    
    -- Drop temporary tables
    DROP TABLE IF EXISTS street_mapping;
    DROP TABLE IF EXISTS migration_verification;
END$$;

ALTER TABLE IF EXISTS public.stores RENAME COLUMN address TO address_text;
ALTER TABLE IF EXISTS public.persons RENAME COLUMN address TO address_text;
ALTER TABLE IF EXISTS public.families RENAME COLUMN address TO address_text;

ALTER TABLE IF EXISTS public.stores DROP CONSTRAINT IF EXISTS stores_check_family_or_geolocation;

CREATE OR REPLACE FUNCTION public.check_store_admin_family_or_address()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    STABLE NOT LEAKPROOF
AS $BODY$
DECLARE hasura_session JSON;
begin
if new.admin_family is null and not exists(select 1 from addresses where store_id = new.id) then
raise exception 'Store must belong to an admin family or have an address';
else return new;
end if;
END;
$BODY$;

CREATE OR REPLACE FUNCTION public.check_address_street_same_area()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    STABLE NOT LEAKPROOF
AS $BODY$
DECLARE hasura_session JSON;
begin
if not exists(select 1 from areas_streets where area_id = new.area_id and street_id = new.street_id) then
raise exception 'Address must belong to the same area as the street';
else return new;
end if;
END;
$BODY$;


CREATE CONSTRAINT TRIGGER check_store_admin_family_or_address
    AFTER INSERT OR UPDATE 
    ON public.stores
    DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW
    EXECUTE FUNCTION public.check_store_admin_family_or_address();
CREATE CONSTRAINT TRIGGER check_address_street_same_area
    AFTER INSERT OR UPDATE 
    ON public.addresses
    DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW
    EXECUTE FUNCTION public.check_address_street_same_area();
DROP TRIGGER IF EXISTS sync_store_streets ON public.stores;
DROP TRIGGER IF EXISTS check_store_has_street ON public.stores;

DROP INDEX IF EXISTS public.families_locations_index;
DROP TRIGGER IF EXISTS sync_family_streets ON public.families;
DROP TRIGGER IF EXISTS check_family_street_same_area ON public.families;
DROP TRIGGER IF EXISTS check_family_has_street ON public.families;

DROP TRIGGER IF EXISTS sync_street_families ON public.streets;
DROP TRIGGER IF EXISTS sync_street_stores ON public.streets;

DROP INDEX IF EXISTS public.areas_idx_id_bounds;

DROP FUNCTION IF EXISTS sync_store_streets();
DROP FUNCTION IF EXISTS check_store_has_street();
DROP FUNCTION IF EXISTS sync_family_streets();
DROP FUNCTION IF EXISTS check_family_street_same_area();
DROP FUNCTION IF EXISTS check_family_has_street();
DROP FUNCTION IF EXISTS sync_street_families();
DROP FUNCTION IF EXISTS sync_street_stores();

CREATE OR REPLACE VIEW public.classes_persons
 AS
 SELECT c.id AS class_id,
    p.id AS person_id,
    p.family_id
   FROM classes c
     JOIN persons p ON c.service_study_year = p.study_year_id AND (c.service_gender IS NULL OR c.service_gender = p.gender);

CREATE OR REPLACE VIEW auth.users_permissions_by_entity_id
 AS
 SELECT users_permissions.uid,
    'any'::text AS entity_type,
    NULL::uuid AS entity_id,
    bool_or(users_permissions.permission = 'writeAllData'::text) AS allow_edit,
    bool_or(users_permissions.permission = 'manageAllUsers'::text) AS admin_on_users
   FROM auth.users_permissions
  GROUP BY users_permissions.uid
 HAVING bool_or(users_permissions.permission = 'readAllData'::text)
UNION ALL
 SELECT DISTINCT uao.uid,
    'area'::text AS entity_type,
    uao.admin_on_area AS entity_id,
    uao.area_allow_edit AS allow_edit,
    uao.area_admin_on_users AS admin_on_users
   FROM auth.users_admin_on uao
  WHERE uao.admin_on_area IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'street'::text AS entity_type,
    areas_streets.street_id AS entity_id,
    uao.area_allow_edit AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
UNION ALL
 SELECT DISTINCT uao.uid,
    'service'::text AS entity_type,
    uao.admin_on_service AS entity_id,
    uao.service_allow_edit AS allow_edit,
    uao.service_admin_on_users AS admin_on_users
   FROM auth.users_admin_on uao
  WHERE uao.admin_on_service IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'class'::text AS entity_type,
    c.id AS entity_id,
    uao.service_allow_edit AS allow_edit,
    uao.service_admin_on_users AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN classes c ON c.service_id = uao.admin_on_service AND (uao.service_gender IS NULL OR c.service_gender = uao.service_gender) AND (uao.service_study_year IS NULL OR c.service_study_year = uao.service_study_year)
UNION ALL
 SELECT DISTINCT uao.uid,
    'class'::text AS entity_type,
    c.id AS entity_id,
    false AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
     JOIN addresses ON addresses.street_id = areas_streets.street_id
     JOIN persons p ON p.family_id = addresses.family_id
     JOIN classes c ON c.service_study_year = p.study_year_id AND (c.service_gender IS NULL OR c.service_gender = p.gender)
UNION ALL
 SELECT DISTINCT uao.uid,
    'group'::text AS entity_type,
    uao.admin_on_group AS entity_id,
    uao.group_allow_edit AS allow_edit,
    uao.group_admin_on_users AS admin_on_users
   FROM auth.users_admin_on uao
  WHERE uao.admin_on_group IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'group'::text AS entity_type,
    pg.group_id AS entity_id,
    false AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN addresses ON addresses.area_id = uao.admin_on_area
     JOIN persons ON persons.family_id = addresses.family_id
     JOIN persons_groups pg ON pg.person_id = persons.id
UNION ALL
 SELECT DISTINCT uao.uid,
    'family'::text AS entity_type,
    addresses.family_id AS entity_id,
    uao.area_allow_edit AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN addresses ON addresses.area_id = uao.admin_on_area
  WHERE addresses.family_id IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'family'::text AS entity_type,
    p.family_id AS entity_id,
    uao.service_allow_edit AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN persons_services ps ON ps.service_id = uao.admin_on_service
     JOIN persons p ON p.id = ps.person_id AND (uao.service_gender IS NULL OR p.gender = uao.service_gender) AND (uao.service_study_year IS NULL OR p.study_year_id = uao.service_study_year)
UNION ALL
 SELECT DISTINCT uao.uid,
    'family'::text AS entity_type,
    p.family_id AS entity_id,
    uao.group_allow_edit AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN persons_groups pg ON pg.group_id = uao.admin_on_group
     JOIN persons p ON p.id = pg.person_id
UNION ALL
 SELECT DISTINCT uao.uid,
    'store'::text AS entity_type,
    addresses.store_id AS entity_id,
    uao.area_allow_edit AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN addresses ON addresses.area_id = uao.admin_on_area
  WHERE addresses.store_id IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'person'::text AS entity_type,
    persons.id AS entity_id,
    uao.area_allow_edit AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
     JOIN addresses ON addresses.street_id = areas_streets.street_id
     JOIN persons ON persons.family_id = addresses.family_id
UNION ALL
 SELECT DISTINCT uao.uid,
    'person'::text AS entity_type,
    persons.id AS entity_id,
    uao.service_allow_edit AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN persons_services ps ON ps.service_id = uao.admin_on_service
     JOIN persons ON persons.id = ps.person_id AND (uao.service_gender IS NULL OR persons.gender = uao.service_gender) AND (uao.service_study_year IS NULL OR persons.study_year_id = uao.service_study_year)
UNION ALL
 SELECT DISTINCT uao.uid,
    'person'::text AS entity_type,
    persons.id AS entity_id,
    uao.group_allow_edit AS allow_edit,
    false AS admin_on_users
   FROM auth.users_admin_on uao
     JOIN persons_groups pg ON pg.group_id = uao.admin_on_group
     JOIN persons ON persons.id = pg.person_id;

COMMIT;
ROLLBACK;
