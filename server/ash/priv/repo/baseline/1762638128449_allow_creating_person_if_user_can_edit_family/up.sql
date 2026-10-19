drop index if exists idx_persons_family_id;
create index if not exists idx_persons_family_id on persons (family_id) where family_id is not NULL;
drop index if exists idx_persons_store_id;
create index if not exists idx_persons_store_id on persons (store_id) where store_id is not NULL;
drop index if exists idx_persons_gender_study_year_family;
create index if not exists idx_persons_gender_study_year_family on persons (gender, study_year_id, id) include (family_id);
drop index if exists idx_persons_family_id_covering;
create index if not exists idx_persons_family_id_covering on persons (family_id, id, study_year_id, gender) where family_id is not NULL;

alter table auth.users_admin_on add column if not exists service_write_related_families boolean not null default FALSE;
alter table auth.users_admin_on add column if not exists group_write_related_families boolean not null default FALSE;

create or replace function check_row_insertion_permission() returns trigger
security definer
language plpgsql
as
$$
DECLARE
    hasura_uid           uuid;
    required_entity_type text;
    any_entity_type      text;
BEGIN
    IF current_setting('hasura.user'::text, true) is NULL or
       (current_setting('hasura.user'::text, true)::json ->> 'x-hasura-role') = 'admin' THEN
        return new;
    END IF;

    hasura_uid := (current_setting('hasura.user'::text, true)::json ->> 'x-hasura-user-id')::uuid;
    required_entity_type := TG_ARGV[0];
    any_entity_type := COALESCE(TG_ARGV[1], 'any');

    if required_entity_type = 'person' then
        if exists(select 1
                  from auth.users_permissions_by_entity_id
                  where uid = hasura_uid
                      and allow_edit = true
                      and (entity_type = any_entity_type and entity_id is null)
                     or (entity_type = 'family' and entity_id = new.family_id)
            ) then
            return new;
        else
            raise exception 'Permission denies inserting % with id % for user %, any_entity_type: %', required_entity_type, new.id, hasura_uid, any_entity_type;
        end if;
    elseif exists(select 1
                  from auth.users_permissions_by_entity_id
                  where uid = hasura_uid
                      and allow_edit = true
                      and (entity_type = any_entity_type and entity_id is null)
                     or (entity_type = required_entity_type and entity_id = new.id)
        ) then
        return new;
    else
        raise exception 'Permission denies inserting % with id % for user %, any_entity_type: %', required_entity_type, new.id, hasura_uid, any_entity_type;
    end if;
END;
$$;

create or replace view auth.users_permissions_by_entity_id (
    uid,
    entity_type,
    "table",
    entity_id,
    allow_edit,
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
        select uao.* from auth.users_admin_on as uao
        inner join approved_users on uao.uid = approved_users.uid
    ),

    users_global_permissions as (
        select
            permissions.uid,
            bool_or(permissions.permission = 'readAllData') as read_all_data,
            bool_or(permissions.permission = 'readAllData') and bool_or(permissions.permission = 'writeAllData') as write_all_data,
            bool_or(permissions.permission = 'readAllData') and bool_or(permissions.permission = 'writeAllData') and bool_or(permissions.permission = 'manageAllUsers') as manage_all_users
        from approved_users
        inner join auth.users_permissions as permissions on approved_users.uid = permissions.uid
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
                coalesce(admin_user.area_admin_on_users, FALSE)
                and admin_user.admin_on_area = managed_user.admin_on_area
                or coalesce(admin_user.group_admin_on_users, FALSE)
                and admin_user.admin_on_group = managed_user.admin_on_group
                or coalesce(admin_user.service_admin_on_users, FALSE)
                and admin_user.admin_on_service = managed_user.admin_on_service
        where
            admin_user.uid <> managed_user.uid
            and (
                coalesce(admin_user.area_admin_on_users, FALSE)
                or coalesce(admin_user.group_admin_on_users, FALSE)
                or coalesce(admin_user.service_admin_on_users, FALSE)
            )
    ),

    admin_on_services as (
        select
            uid,
            admin_on_service as service_id,
            service_study_year,
            service_gender,
            service_allow_edit as allow_edit,
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
                    or admin_on_services.service_study_year = c.service_study_year
                )
    ),

    admin_on_groups as (
        select
            uao.uid,
            uao.admin_on_group as group_id,
            uao.group_allow_edit as allow_edit,
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
            uao.permission_id
        from approved_users_admin_on as uao
        where uao.admin_on_area is not NULL
    ),

    admin_on_streets as (
        select
            aoa.uid,
            areas_streets.street_id,
            aoa.allow_edit,
            aoa.permission_id
        from admin_on_areas as aoa
        inner join areas_streets on aoa.area_id = areas_streets.area_id
    ),

    admin_on_families as (
        select
            aoa.uid,
            addresses.family_id,
            aoa.allow_edit,
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
        aop.permission_id,
        'User can view classes of persons through admin on area -> families' as hint
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
        aos.permission_id,
        'User can view classes of persons through admin on area -> stores' as hint
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
        aop.permission_id,
        'User can view groups of persons through admin on area -> families' as hint
    from admin_on_persons_through_families as aop
    inner join persons_groups as pg on aop.person_id = pg.person_id
    union all
    select
        aos.uid,
        'group'::text as entity_type,
        'groups'::name as "table",
        pg.group_id as entity_id,
        FALSE as allow_edit,
        aos.permission_id,
        'User can view groups of persons through admin on area -> stores' as hint
    from admin_on_persons_through_stores as aos
    inner join persons_groups as pg on aos.person_id = pg.person_id
    union all
    select
        f.uid,
        'family'::text as entity_type,
        'families'::name as "table",
        f.family_id as entity_id,
        f.service_write_related_families as allow_edit,
        f.permission_id,
        'User can access the family of a person through admin on service' as hint
    from admin_on_families_through_services as f
    union all
    select
        f.uid,
        'family'::text as entity_type,
        'families'::name as "table",
        f.family_id as entity_id,
        f.group_write_related_families as allow_edit,
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
        f.permission_id,
        'User can access family members of a person through admin on service' as hint
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
        f.permission_id,
        'User can access family members of a person through admin on group' as hint
    from admin_on_families_through_groups as f
    inner join persons as p on f.family_id = p.family_id
);
