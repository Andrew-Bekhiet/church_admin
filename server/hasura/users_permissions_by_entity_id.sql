CREATE
OR REPLACE VIEW auth.users_permissions_by_entity_id as
SELECT
      uid,
      'any' as entity_type,
      null as entity_id,
      bool_or (permission = 'writeAllData') as allow_edit,
      bool_or (permission = 'manageAllUsers') as admin_on_users
from
      auth.users_permissions
group by
      uid
having
      bool_or (permission = 'readAllData')
UNION ALL
-- Areas directly through users_admin_on
SELECT DISTINCT
      uao.uid,
      'area' AS entity_type,
      uao.admin_on_area AS entity_id,
      uao.area_allow_edit as allow_edit,
      uao.area_admin_on_users as admin_on_users
FROM
      auth.users_admin_on uao
WHERE
      uao.admin_on_area IS NOT NULL
UNION ALL
-- Streets through users_admin_on -> areas_streets
SELECT DISTINCT
      uao.uid,
      'street' AS entity_type,
      areas_streets.street_id AS entity_id,
      uao.area_allow_edit as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
UNION ALL
-- Services directly through users_admin_on
SELECT DISTINCT
      uao.uid,
      'service' AS entity_type,
      uao.admin_on_service AS entity_id,
      uao.service_allow_edit as allow_edit,
      uao.service_admin_on_users as admin_on_users
FROM
      auth.users_admin_on uao
WHERE
      uao.admin_on_service IS NOT NULL
UNION ALL
-- Classes through users_admin_on -> classes
SELECT DISTINCT
      uao.uid,
      'class' AS entity_type,
      c.id AS entity_id,
      uao.service_allow_edit as allow_edit,
      uao.service_admin_on_users as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN classes c ON c.service_id = uao.admin_on_service
      AND (
            uao.service_gender IS NULL
            OR c.service_gender = uao.service_gender
      )
      AND (
            uao.service_study_year IS NULL
            OR c.service_study_year = uao.service_study_year
      )
UNION ALL
-- Classes through areas: users_admin_on -> areas_streets -> addresses -> persons -> classes
SELECT DISTINCT
      uao.uid,
      'class' AS entity_type,
      c.id AS entity_id,
      FALSE as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
      JOIN addresses ON addresses.street_id = areas_streets.street_id
      JOIN persons p ON p.family_id = addresses.family_id
      JOIN classes c ON c.service_study_year = p.study_year_id
      AND (
            c.service_gender IS null
            OR c.service_gender = p.gender
      )
UNION ALL
-- Groups directly through users_admin_on
SELECT DISTINCT
      uao.uid,
      'group' AS entity_type,
      uao.admin_on_group AS entity_id,
      uao.group_allow_edit as allow_edit,
      uao.group_admin_on_users as admin_on_users
FROM
      auth.users_admin_on uao
WHERE
      uao.admin_on_group IS NOT NULL
UNION ALL
-- Groups through areas: users_admin_on -> addresses -> persons -> groups
SELECT DISTINCT
      uao.uid,
      'group' AS entity_type,
      pg.group_id AS entity_id,
      FALSE as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN addresses ON addresses.area_id = uao.admin_on_area
      JOIN persons ON persons.family_id = addresses.family_id
      JOIN persons_groups pg ON pg.person_id = persons.id
UNION ALL
-- Families through users_admin_on -> addresses
SELECT DISTINCT
      uao.uid,
      'family' AS entity_type,
      addresses.family_id AS entity_id,
      uao.area_allow_edit as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN addresses ON addresses.area_id = uao.admin_on_area
WHERE
      addresses.family_id IS NOT NULL
UNION ALL
-- Families through users_admin_on -> persons_services -> persons
SELECT DISTINCT
      uao.uid,
      'family' AS entity_type,
      p.family_id AS entity_id,
      uao.service_allow_edit as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN persons_services ps ON ps.service_id = uao.admin_on_service
      JOIN persons p ON p.id = ps.person_id
      AND (
            uao.service_gender IS NULL
            OR p.gender = uao.service_gender
      )
      AND (
            uao.service_study_year IS NULL
            OR p.study_year_id = uao.service_study_year
      )
UNION ALL
-- Families through users_admin_on -> persons_groups -> persons
SELECT DISTINCT
      uao.uid,
      'family' AS entity_type,
      p.family_id AS entity_id,
      uao.group_allow_edit as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN persons_groups pg ON pg.group_id = uao.admin_on_group
      JOIN persons p ON p.id = pg.person_id
UNION ALL
-- Stores through users_admin_on -> addresses
SELECT DISTINCT
      uao.uid,
      'store' AS entity_type,
      addresses.store_id AS entity_id,
      uao.area_allow_edit as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN addresses ON addresses.area_id = uao.admin_on_area
WHERE
      addresses.store_id IS NOT NULL
UNION ALL
-- Persons through users_admin_on -> areas_streets -> addresses -> persons
SELECT DISTINCT
      uao.uid,
      'person' AS entity_type,
      persons.id AS entity_id,
      uao.area_allow_edit as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN areas_streets ON areas_streets.area_id = uao.admin_on_area
      JOIN addresses ON addresses.street_id = areas_streets.street_id
      JOIN persons ON persons.family_id = addresses.family_id
UNION ALL
-- Persons through users_admin_on -> persons_services -> persons
SELECT DISTINCT
      uao.uid,
      'person' AS entity_type,
      persons.id AS entity_id,
      uao.service_allow_edit as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN persons_services ps ON ps.service_id = uao.admin_on_service
      JOIN persons ON persons.id = ps.person_id
      AND (
            uao.service_gender IS NULL
            OR persons.gender = uao.service_gender
      )
      AND (
            uao.service_study_year IS NULL
            OR persons.study_year_id = uao.service_study_year
      )
UNION ALL
-- Persons through users_admin_on -> persons_groups -> persons
SELECT DISTINCT
      uao.uid,
      'person' AS entity_type,
      persons.id AS entity_id,
      uao.group_allow_edit as allow_edit,
      FALSE as admin_on_users
FROM
      auth.users_admin_on uao
      JOIN persons_groups pg ON pg.group_id = uao.admin_on_group
      JOIN persons ON persons.id = pg.person_id;