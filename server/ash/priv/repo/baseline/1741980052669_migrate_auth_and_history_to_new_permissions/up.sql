DROP VIEW IF EXISTS auth.users_permissions_by_entity_id;

ALTER TABLE auth.users_admin_on
    ALTER COLUMN service_study_year TYPE integer;

CREATE OR REPLACE VIEW auth.users_permissions_by_entity_id
AS SELECT users_permissions.uid,
    'any'::text AS entity_type,
    NULL::name AS "table",
    NULL::uuid AS entity_id,
    bool_or(users_permissions.permission = 'writeAllData'::text) AS allow_edit
   FROM auth.users_permissions
  GROUP BY users_permissions.uid
 HAVING bool_or(users_permissions.permission = 'readAllData'::text)
UNION ALL
 SELECT users_permissions.uid,
    'any-user'::text AS entity_type,
    'users'::name AS "table",
    NULL::uuid AS entity_id,
    bool_or(users_permissions.permission = 'manageAllUsers'::text) AS allow_edit
   FROM auth.users_permissions
  GROUP BY users_permissions.uid
 HAVING bool_or(users_permissions.permission = 'writeAllData'::text) AND bool_or(users_permissions.permission = 'readAllData'::text)
UNION ALL
 SELECT DISTINCT uao.uid,
    'area'::text AS entity_type,
    'areas'::name AS "table",
    uao.admin_on_area AS entity_id,
    uao.area_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
  WHERE uao.admin_on_area IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'street'::text AS entity_type,
    'streets'::name AS "table",
    areas_streets.street_id AS entity_id,
    uao.area_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
UNION ALL
 SELECT DISTINCT uao.uid,
    'service'::text AS entity_type,
    'services'::name AS "table",
    uao.admin_on_service AS entity_id,
    uao.service_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
  WHERE uao.admin_on_service IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'class'::text AS entity_type,
    'classes'::name AS "table",
    c.id AS entity_id,
    uao.service_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN classes c ON c.service_id = uao.admin_on_service AND (uao.service_gender IS NULL OR c.service_gender = uao.service_gender) AND (uao.service_study_year IS NULL OR c.service_study_year = uao.service_study_year)
UNION ALL
 SELECT DISTINCT uao.uid,
    'class'::text AS entity_type,
    'classes'::name AS "table",
    c.id AS entity_id,
    false AS allow_edit
   FROM auth.users_admin_on uao
     JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
     JOIN addresses ON addresses.street_id = areas_streets.street_id
     JOIN persons p ON p.family_id = addresses.family_id
     JOIN classes c ON c.service_study_year = p.study_year_id AND (c.service_gender IS NULL OR c.service_gender = p.gender)
UNION ALL
 SELECT DISTINCT uao.uid,
    'group'::text AS entity_type,
    'groups'::name AS "table",
    uao.admin_on_group AS entity_id,
    uao.group_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
  WHERE uao.admin_on_group IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'group'::text AS entity_type,
    'groups'::name AS "table",
    pg.group_id AS entity_id,
    false AS allow_edit
   FROM auth.users_admin_on uao
     JOIN addresses ON addresses.area_id = uao.admin_on_area
     JOIN persons ON persons.family_id = addresses.family_id
     JOIN persons_groups pg ON pg.person_id = persons.id
UNION ALL
 SELECT DISTINCT uao.uid,
    'family'::text AS entity_type,
    'families'::name AS "table",
    addresses.family_id AS entity_id,
    uao.area_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN addresses ON addresses.area_id = uao.admin_on_area
  WHERE addresses.family_id IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'family'::text AS entity_type,
    'families'::name AS "table",
    p.family_id AS entity_id,
    uao.service_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN persons_services ps ON ps.service_id = uao.admin_on_service
     JOIN persons p ON p.id = ps.person_id AND (uao.service_gender IS NULL OR p.gender = uao.service_gender) AND (uao.service_study_year IS NULL OR p.study_year_id = uao.service_study_year)
UNION ALL
 SELECT DISTINCT uao.uid,
    'family'::text AS entity_type,
    'families'::name AS "table",
    p.family_id AS entity_id,
    uao.group_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN persons_groups pg ON pg.group_id = uao.admin_on_group
     JOIN persons p ON p.id = pg.person_id
UNION ALL
 SELECT DISTINCT uao.uid,
    'store'::text AS entity_type,
    'stores'::name AS "table",
    addresses.store_id AS entity_id,
    uao.area_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN addresses ON addresses.area_id = uao.admin_on_area
  WHERE addresses.store_id IS NOT NULL
UNION ALL
 SELECT DISTINCT uao.uid,
    'person'::text AS entity_type,
    'persons'::name AS "table",
    persons.id AS entity_id,
    uao.area_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
     JOIN addresses ON addresses.street_id = areas_streets.street_id
     JOIN persons ON persons.family_id = addresses.family_id
UNION ALL
 SELECT DISTINCT uao.uid,
    'person'::text AS entity_type,
    'persons'::name AS "table",
    persons.id AS entity_id,
    uao.service_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN persons_services ps ON ps.service_id = uao.admin_on_service
     JOIN persons ON persons.id = ps.person_id AND (uao.service_gender IS NULL OR persons.gender = uao.service_gender) AND (uao.service_study_year IS NULL OR persons.study_year_id = uao.service_study_year)
UNION ALL
 SELECT DISTINCT uao.uid,
    'person'::text AS entity_type,
    'persons'::name AS "table",
    persons.id AS entity_id,
    uao.group_allow_edit AS allow_edit
   FROM auth.users_admin_on uao
     JOIN persons_groups pg ON pg.group_id = uao.admin_on_group
     JOIN persons ON persons.id = pg.person_id
UNION ALL
 SELECT DISTINCT admin_user.uid,
    'user'::text AS entity_type,
    'users'::name AS "table",
    managed_user.uid AS entity_id,
    true AS allow_edit
   FROM auth.users_admin_on admin_user
     JOIN auth.users_admin_on managed_user ON COALESCE(admin_user.area_admin_on_users, false) AND admin_user.admin_on_area = managed_user.admin_on_area OR COALESCE(admin_user.group_admin_on_users, false) AND admin_user.admin_on_group = managed_user.admin_on_group OR COALESCE(admin_user.service_admin_on_users, false) AND admin_user.admin_on_service = managed_user.admin_on_service
  WHERE admin_user.uid <> managed_user.uid AND (COALESCE(admin_user.area_admin_on_users, false) OR COALESCE(admin_user.group_admin_on_users, false) OR COALESCE(admin_user.service_admin_on_users, false));
