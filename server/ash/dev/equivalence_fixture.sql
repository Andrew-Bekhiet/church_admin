-- Two users for a smoke run of dev/equivalence.sh, loaded after the enums seed
-- (which carries the study years): `service_reader` (approved, read grant on the service) and
-- `area_editor` (approved, edit grant on the area). Fixed ids so a run can
-- name the users.
begin;

set constraints all deferred;

select set_config('hasura.user', '{"x-hasura-role":"admin"}', true);

insert into services (id, name)
values ('00000000-0000-4000-8000-000000000101', 'service');

insert into areas (id, name)
values ('00000000-0000-4000-8000-000000000201', 'area');

insert into families (id, name)
values
('00000000-0000-4000-8000-000000000301', 'family in area'),
('00000000-0000-4000-8000-000000000302', 'family of service member');

insert into streets (id, name)
values ('00000000-0000-4000-8000-000000000211', 'street');

insert into areas_streets (area_id, street_id)
values (
    '00000000-0000-4000-8000-000000000201',
    '00000000-0000-4000-8000-000000000211'
);

insert into addresses (id, family_id, area_id, street_id)
values (
    '00000000-0000-4000-8000-000000000401',
    '00000000-0000-4000-8000-000000000301',
    '00000000-0000-4000-8000-000000000201',
    '00000000-0000-4000-8000-000000000211'
);

insert into auth.users_data (uid, name)
values
('00000000-0000-4000-8000-000000000001', 'service reader'),
('00000000-0000-4000-8000-000000000002', 'area editor');

insert into auth.users_permissions (uid, permission)
values
('00000000-0000-4000-8000-000000000001', 'approved'),
('00000000-0000-4000-8000-000000000002', 'approved');

insert into auth.users_admin_on (uid, admin_on_service)
values (
    '00000000-0000-4000-8000-000000000001',
    '00000000-0000-4000-8000-000000000101'
);

insert into auth.users_admin_on (uid, admin_on_area, area_allow_edit)
values (
    '00000000-0000-4000-8000-000000000002',
    '00000000-0000-4000-8000-000000000201',
    true
);

insert into persons (
    id, name, gender, study_year_id, family_id, uid, deleted_at
)
values
(
    '00000000-0000-4000-8000-000000000501',
    'service member',
    true,
    1,
    '00000000-0000-4000-8000-000000000302',
    null,
    null
),
(
    '00000000-0000-4000-8000-000000000502',
    'area resident',
    false,
    2,
    '00000000-0000-4000-8000-000000000301',
    null,
    null
),
(
    '00000000-0000-4000-8000-000000000503',
    'service reader',
    true,
    null,
    null,
    '00000000-0000-4000-8000-000000000001',
    null
),
(
    '00000000-0000-4000-8000-000000000504',
    'deleted member',
    true,
    1,
    '00000000-0000-4000-8000-000000000302',
    null,
    now()
);

insert into persons_services (person_id, service_id)
values
(
    '00000000-0000-4000-8000-000000000501',
    '00000000-0000-4000-8000-000000000101'
),
(
    '00000000-0000-4000-8000-000000000504',
    '00000000-0000-4000-8000-000000000101'
);

commit;
