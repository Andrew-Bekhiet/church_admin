drop view if exists auth.users_attendance_permissions;

delete from auth.users_permissions
where
    permission = 'recordAllAttendance' or permission = 'recordAllServantsAttendance';

delete from auth.permissions
where name = 'recordAllAttendance' or name = 'recordAllServantsAttendance';

insert into auth.permissions (name) values ('recordHistory'),
('changeOldHistory') on conflict do nothing;

alter table auth.users_admin_on
drop column if exists service_allow_record_attendance;
alter table auth.users_admin_on
drop column if exists service_allow_record_servants_attendance;
alter table auth.users_admin_on
drop column if exists group_allow_record_attendance;
alter table auth.users_admin_on
drop column if exists group_allow_record_servants_attendance;

alter table "auth"."users_admin_on" drop constraint "users_admin_on_admin_edit_logic";
alter table "auth"."users_admin_on" add constraint "users_admin_on_admin_edit_logic" check (
    (not COALESCE(service_allow_edit, FALSE) or admin_on_service is not NULL)
    and (not COALESCE(group_allow_edit, FALSE) or admin_on_group is not NULL)
    and (not COALESCE(area_allow_edit, FALSE) or admin_on_area is not NULL)
    and (
        not COALESCE(service_allow_export, FALSE)
        or admin_on_service is not NULL
    )
    and (not COALESCE(group_allow_export, FALSE) or admin_on_group is not NULL)
    and (not COALESCE(area_allow_export, FALSE) or admin_on_area is not NULL)
    and (
        not COALESCE(service_admin_on_users, FALSE)
        or COALESCE(service_allow_edit, FALSE)
    )
    and (
        not COALESCE(group_admin_on_users, FALSE)
        or COALESCE(group_allow_edit, FALSE)
    )
    and (
        not COALESCE(area_admin_on_users, FALSE)
        or COALESCE(area_allow_edit, FALSE)
    )
);
drop view if exists auth.users_permissions_by_entity_id;
create or replace view auth.users_permissions_by_entity_id (
    uid,
    entity_type,
    "table",
    entity_id,
    allow_edit,
    allow_export,
    permission_id,
    hint
) as (
    with approved_users as (
        select
            uid,
            permission
        from auth.users_permissions
        where permission = 'approved'
    ),

    approved_users_admin_on as (
        select
            uao.permission_id,
            uao.uid,
            uao.admin_on_service,
            uao.service_gender,
            uao.service_study_year,
            uao.service_allow_edit,
            uao.service_allow_export,
            uao.service_admin_on_users,
            uao.admin_on_group,
            uao.group_allow_edit,
            uao.group_admin_on_users,
            uao.group_allow_export,
            uao.admin_on_area,
            uao.area_allow_edit,
            uao.area_admin_on_users,
            uao.area_allow_export,
            uao.service_write_related_families,
            uao.group_write_related_families
        from auth.users_admin_on as uao
        inner join approved_users on uao.uid = approved_users.uid
    ),

    users_global_permissions as (
        select
            permissions.uid,
            BOOL_OR(permissions.permission = 'readAllData') as read_all_data,
            BOOL_OR(permissions.permission = 'readAllData')
            and BOOL_OR(permissions.permission = 'writeAllData')
                as write_all_data,
            BOOL_OR(permissions.permission = 'readAllData')
            and BOOL_OR(permissions.permission = 'exportAllData')
                as export_all_data,
            BOOL_OR(permissions.permission = 'readAllData')
            and BOOL_OR(permissions.permission = 'writeAllData')
            and BOOL_OR(permissions.permission = 'manageAllUsers')
                as manage_all_users
        from approved_users
        inner join
            auth.users_permissions as permissions
            on approved_users.uid = permissions.uid
        group by permissions.uid
    ),

    admin_on_users as (
        select
            admin_user.uid as admin_user_uid,
            managed_user.uid as managed_user_uid,
            admin_user.permission_id
        from approved_users_admin_on as admin_user
        inner join auth.users_admin_on as managed_user
            on
                COALESCE(admin_user.area_admin_on_users, FALSE)
                and admin_user.admin_on_area = managed_user.admin_on_area
                or COALESCE(admin_user.group_admin_on_users, FALSE)
                and admin_user.admin_on_group = managed_user.admin_on_group
                or COALESCE(admin_user.service_admin_on_users, FALSE)
                and admin_user.admin_on_service = managed_user.admin_on_service
        where
            admin_user.uid <> managed_user.uid
            and (
                COALESCE(admin_user.area_admin_on_users, FALSE)
                or COALESCE(admin_user.group_admin_on_users, FALSE)
                or COALESCE(admin_user.service_admin_on_users, FALSE)
            )
    ),

    admin_on_services as (
        select
            uid,
            admin_on_service as service_id,
            service_study_year,
            service_gender,
            service_allow_edit as allow_edit,
            service_allow_export as allow_export,
            service_write_related_families,
            permission_id
        from approved_users_admin_on
        where admin_on_service is not NULL
    ),

    admin_on_classes as (
        select
            admin_on_services.uid,
            c.id as class_id,
            admin_on_services.allow_edit,
            admin_on_services.allow_export,
            admin_on_services.permission_id
        from admin_on_services
        inner join classes as c
            on
                admin_on_services.service_id = c.service_id
                and (
                    admin_on_services.service_gender is NULL
                    or admin_on_services.service_gender = c.service_gender
                )
                and (
                    admin_on_services.service_study_year is NULL
                    or admin_on_services.service_study_year
                    = c.service_study_year
                )
    ),

    admin_on_groups as (
        select
            uao.uid,
            uao.admin_on_group as group_id,
            uao.group_allow_edit as allow_edit,
            uao.group_allow_export as allow_export,
            uao.group_write_related_families,
            uao.permission_id
        from approved_users_admin_on as uao
        where uao.admin_on_group is not NULL
    ),

    admin_on_areas as (
        select
            uao.uid,
            uao.admin_on_area as area_id,
            uao.area_allow_edit as allow_edit,
            uao.area_allow_export as allow_export,
            uao.permission_id
        from approved_users_admin_on as uao
        where uao.admin_on_area is not NULL
    ),

    admin_on_streets as (
        select
            aoa.uid,
            areas_streets.street_id,
            aoa.allow_edit,
            aoa.allow_export,
            aoa.permission_id
        from admin_on_areas as aoa
        inner join areas_streets on aoa.area_id = areas_streets.area_id
    ),

    admin_on_families as (
        select
            aoa.uid,
            addresses.family_id,
            aoa.allow_edit,
            aoa.allow_export,
            aoa.permission_id
        from admin_on_areas as aoa
        inner join addresses on aoa.area_id = addresses.area_id
        where addresses.family_id is not NULL
    ),

    admin_on_stores as (
        select
            aoa.uid,
            addresses.store_id,
            aoa.allow_edit,
            aoa.allow_export,
            aoa.permission_id
        from admin_on_areas as aoa
        inner join addresses on aoa.area_id = addresses.area_id
        where addresses.store_id is not NULL
    ),

    admin_on_persons_through_services as (
        select
            aos.uid,
            p.id as person_id,
            aos.allow_edit,
            aos.allow_export,
            aos.permission_id,
            aos.service_gender,
            aos.service_study_year,
            aos.service_write_related_families,
            p.family_id
        from admin_on_services as aos
        inner join persons_services as ps on aos.service_id = ps.service_id
        inner join persons as p
            on
                ps.person_id = p.id
        where (
            aos.service_gender is NULL
            or aos.service_gender = p.gender
        )
        and (
            aos.service_study_year is NULL
            or aos.service_study_year = p.study_year_id
        )
    ),

    admin_on_persons_through_groups as (
        select
            aog.uid,
            pg.person_id,
            aog.allow_edit,
            aog.allow_export,
            aog.group_write_related_families,
            aog.permission_id
        from admin_on_groups as aog
        inner join persons_groups as pg on aog.group_id = pg.group_id
    ),

    admin_on_persons_through_families as (
        select
            aof.uid,
            p.id as person_id,
            aof.allow_edit,
            FALSE as allow_export,
            aof.permission_id,
            p.study_year_id,
            p.gender
        from admin_on_families as aof
        inner join persons as p on aof.family_id = p.family_id
    ),

    admin_on_persons_through_stores as (
        select
            aos.uid,
            p.id as person_id,
            aos.allow_edit,
            FALSE as allow_export,
            aos.permission_id,
            p.study_year_id,
            p.gender
        from admin_on_stores as aos
        inner join persons as p on aos.store_id = p.store_id
    ),

    admin_on_families_through_services as (
        select
            aop.uid,
            aop.family_id,
            aop.permission_id,
            aop.service_write_related_families
        from admin_on_persons_through_services as aop
        where aop.family_id is not NULL
    ),

    admin_on_families_through_groups as (
        select
            aop.uid,
            p.family_id,
            aop.permission_id,
            aop.group_write_related_families
        from admin_on_persons_through_groups as aop
        inner join persons as p on aop.person_id = p.id
        where p.family_id is not NULL
    )

    -- manage all users
    select
        uid,
        'any-user'::text as entity_type,
        'users'::name as "table",
        NULL::uuid as entity_id,
        TRUE as allow_edit,
        FALSE as allow_export,
        NULL as permission_id,
        'User can manage all users' as hint
    from users_global_permissions
    where manage_all_users is TRUE
    union all
    -- read/write all data
    select
        uid,
        'any'::text as entity_type,
        NULL::name as "table",
        NULL::uuid as entity_id,
        write_all_data as allow_edit,
        export_all_data as allow_export,
        NULL::uuid as permission_id,
        'User can read/write all data' as hint
    from users_global_permissions
    where read_all_data is TRUE
    union all
    -- admin on users
    select
        admin_user_uid as "uid",
        'user'::text as entity_type,
        'users'::name as "table",
        managed_user_uid as entity_id,
        TRUE as allow_edit,
        FALSE as allow_export,
        permission_id,
        'User can manage users on areas, groups, services' as hint
    from admin_on_users
    union all
    -- users can read all approved users
    select
        uid,
        'any-user'::text as entity_type,
        'users'::name as "table",
        NULL::uuid as entity_id,
        FALSE as allow_edit,
        FALSE as allow_export,
        NULL::uuid as permission_id,
        'User can read all approved users' as hint
    from approved_users
    union all
    -- user's own person
    select
        persons.uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        persons.id as entity_id,
        TRUE as allow_edit,
        FALSE as allow_export,
        NULL::uuid as permission_id,
        'User can edit own person' as hint
    from persons
    inner join approved_users on persons.uid = approved_users.uid
    union all
    -- admin on services
    select
        uid,
        'service'::text as entity_type,
        'services'::name as "table",
        service_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        NULL as hint
    from admin_on_services
    union all
    -- admin on classes
    select
        uid,
        'class'::text as entity_type,
        'classes'::name as "table",
        class_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        NULL as hint
    from admin_on_classes
    union all
    -- admin on groups
    select
        uid,
        'group'::text as entity_type,
        'groups'::name as "table",
        group_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        NULL as hint
    from admin_on_groups
    union all
    -- admin on areas
    select
        uid,
        'area'::text as entity_type,
        'areas'::name as "table",
        area_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        NULL as hint
    from admin_on_areas
    union all
    -- admin on streets
    select
        uid,
        'street'::text as entity_type,
        'streets'::name as "table",
        street_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        NULL as hint
    from admin_on_streets
    union all
    -- admin on families
    select
        uid,
        'family'::text as entity_type,
        'families'::name as "table",
        family_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        NULL as hint
    from admin_on_families
    union all
    -- admin on stores
    select
        uid,
        'store'::text as entity_type,
        'stores'::name as "table",
        store_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        NULL as hint
    from admin_on_stores
    union all
    -- admin on persons
    select
        uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        person_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        'User is admin on parent service' as hint
    from admin_on_persons_through_services
    union all
    select
        uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        person_id as entity_id,
        allow_edit,
        allow_export,
        permission_id,
        'User is admin on parent group' as hint
    from admin_on_persons_through_groups
    union all
    select
        uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        person_id as entity_id,
        allow_edit,
        FALSE as allow_export,
        permission_id,
        'User is admin on parent family' as hint
    from admin_on_persons_through_families
    union all
    select
        uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        person_id as entity_id,
        allow_edit,
        FALSE as allow_export,
        permission_id,
        'User is admin on parent store' as hint
    from admin_on_persons_through_stores
    union all
    select
        aop.uid,
        'class'::text as entity_type,
        'classes'::name as "table",
        c.id as entity_id,
        FALSE as allow_edit,
        FALSE as allow_export,
        aop.permission_id,
        'User can view classes of persons through admin on area -> families'
            as hint
    from admin_on_persons_through_families as aop
    inner join classes as c
        on
            aop.study_year_id = c.service_study_year
            and (c.service_gender is NULL or aop.gender = c.service_gender)
    union all
    select
        aos.uid,
        'class'::text as entity_type,
        'classes'::name as "table",
        c.id as entity_id,
        FALSE as allow_edit,
        FALSE as allow_export,
        aos.permission_id,
        'User can view classes of persons through admin on area -> stores'
            as hint
    from admin_on_persons_through_stores as aos
    inner join classes as c
        on
            aos.study_year_id = c.service_study_year
            and (c.service_gender is NULL or aos.gender = c.service_gender)
    union all
    select
        aop.uid,
        'group'::text as entity_type,
        'groups'::name as "table",
        pg.group_id as entity_id,
        FALSE as allow_edit,
        FALSE as allow_export,
        aop.permission_id,
        'User can view groups of persons through admin on area -> families'
            as hint
    from admin_on_persons_through_families as aop
    inner join persons_groups as pg on aop.person_id = pg.person_id
    union all
    select
        aos.uid,
        'group'::text as entity_type,
        'groups'::name as "table",
        pg.group_id as entity_id,
        FALSE as allow_edit,
        FALSE as allow_export,
        aos.permission_id,
        'User can view groups of persons through admin on area -> stores'
            as hint
    from admin_on_persons_through_stores as aos
    inner join persons_groups as pg on aos.person_id = pg.person_id
    union all
    select
        f.uid,
        'family'::text as entity_type,
        'families'::name as "table",
        f.family_id as entity_id,
        f.service_write_related_families as allow_edit,
        FALSE as allow_export,
        f.permission_id,
        'User can access the family of a person through admin on service'
            as hint
    from admin_on_families_through_services as f
    union all
    select
        f.uid,
        'family'::text as entity_type,
        'families'::name as "table",
        f.family_id as entity_id,
        f.group_write_related_families as allow_edit,
        FALSE as allow_export,
        f.permission_id,
        'User can access the family of a person through admin on group' as hint
    from admin_on_families_through_groups as f
    union all
    select
        f.uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        p.id as entity_id,
        f.service_write_related_families as allow_edit,
        FALSE as allow_export,
        f.permission_id,
        'User can access family members of a person through admin on service'
            as hint
    from admin_on_families_through_services as f
    inner join persons as p on f.family_id = p.family_id
    where f.service_write_related_families is TRUE
    union all
    select
        f.uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        p.id as entity_id,
        f.group_write_related_families as allow_edit,
        FALSE as allow_export,
        f.permission_id,
        'User can access family members of a person through admin on group'
            as hint
    from admin_on_families_through_groups as f
    inner join persons as p on f.family_id = p.family_id
);

create or replace function auth.user_can_record_history(
    user_uid uuid
) returns boolean
language sql stable security definer
as $$
select exists(
        select 1
        from auth.users_permissions p
        where p.uid = user_uid
            and p.permission = 'recordHistory'
        limit 1
    );
$$;

create or replace function history.user_allowed_to_write_day(
    day history.attendance_days, hasura_session json
) returns boolean
language sql stable security definer
as $$
select auth.user_can_record_history((hasura_session ->> 'x-hasura-user-id')::uuid);
$$;

create or replace function history.user_allowed_to_write_day_constraint(
    constraint history.attendance_days_constraints,
    hasura_session json
) returns boolean
language sql stable security definer
as $$
select auth.user_can_record_history((hasura_session ->> 'x-hasura-user-id')::uuid)
    and (
        auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        or exists (
            (
                select 1
                from auth.users_admin_on permissions
                where permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                    and permissions.admin_on_group = constraint.group_id
                limit 1
            )
            union
            (
                select 1
                from auth.users_admin_on permissions
                where permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                    and permissions.admin_on_service = constraint.service_id
                    and (
                        permissions.service_study_year is null
                        or constraint.service_study_year = permissions.service_study_year
                    )
                    and (
                        permissions.service_gender is null
                        or constraint.service_gender = permissions.service_gender
                    )
                limit 1
            )
        )
    );
$$;

create or replace function history.user_allowed_to_write_attendance_record(
    attendance history.attendance_history,
    hasura_session json
) returns boolean
language sql stable security definer
as $$
select auth.user_can_record_history((hasura_session ->> 'x-hasura-user-id')::uuid)
    and exists (
        select constraint.day_id
        from history.attendance_days_constraints as constraint
        inner join persons as person on person.id = attendance.person_id
        where constraint.day_id = attendance.day_id
            and constraint.service_id = attendance.service_id
            and (
                constraint.service_study_year is null
                or person.study_year_id = constraint.service_study_year
            )
            and (
                constraint.service_gender is null
                or person.gender = constraint.service_gender
            )
            and (
                attendance.group_id is null
                or constraint.group_id = attendance.group_id
            )
    )
    and (
        auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        or (
            auth.user_can_edit_service(
                (select services from services where id = attendance.service_id),
                hasura_session
            )
            and (
                attendance.group_id is null
                or auth.user_can_edit_group(
                    (select groups from groups where id = attendance.group_id),
                    hasura_session
                )
            )
            and auth.user_can_edit_person(
                (select persons from persons where id = attendance.person_id),
                hasura_session
            )
        )
    );
$$;
