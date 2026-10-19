alter table public.classes
add column if not exists service_study_year_to integer;

alter table public.classes disable trigger edit_history;

update public.classes
set service_study_year_to = service_study_year
where service_study_year_to is NULL;

alter table public.classes enable trigger edit_history;

alter table public.classes
alter column service_study_year_to set not null;

alter table public.classes
drop constraint if exists classes_service_study_year_to_fkey;

alter table public.classes
add constraint classes_service_study_year_to_fkey
foreign key (service_study_year_to) references public.study_years ("order")
on update cascade on delete restrict;

alter table public.classes
drop constraint if exists classes_service_study_year_range_check;

alter table public.classes
add constraint classes_service_study_year_range_check
check (service_study_year <= service_study_year_to);

create or replace view public.classes_persons as
select
    c.id as class_id,
    p.id as person_id,
    p.family_id
from classes as c
inner join persons_services as ps on c.service_id = ps.service_id
inner join persons as p
    on
        ps.person_id = p.id
        and p.study_year_id
        between c.service_study_year and c.service_study_year_to
        and (c.service_gender is NULL or c.service_gender = p.gender);

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
            uao.group_write_related_families,
            uao.service_allow_record_servants_attendance,
            uao.group_allow_record_servants_attendance
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
            admin_on_services.permission_id,
            admin_on_services.allow_edit
            and scope_covers_class.covers as allow_edit,
            admin_on_services.allow_export
            and scope_covers_class.covers as allow_export
        from admin_on_services
        inner join classes as c
            on
                admin_on_services.service_id = c.service_id
                and (
                    admin_on_services.service_gender is NULL
                    or c.service_gender is NULL
                    or admin_on_services.service_gender = c.service_gender
                )
                and (
                    admin_on_services.service_study_year is NULL
                    or admin_on_services.service_study_year
                    between c.service_study_year and c.service_study_year_to
                )
        cross join lateral (
            select
                (
                    admin_on_services.service_gender is NULL
                    or admin_on_services.service_gender
                    is not distinct from c.service_gender
                )
                and (
                    admin_on_services.service_study_year is NULL
                    or (
                        c.service_study_year
                        = admin_on_services.service_study_year
                        and c.service_study_year_to
                        = admin_on_services.service_study_year
                    )
                ) as covers
        ) as scope_covers_class
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
    -- Unapproved user can read own user data
    select
        users_data.uid,
        'user'::text as entity_type,
        'users'::name as "table",
        users_data.uid::uuid as entity_id,
        FALSE as allow_edit,
        FALSE as allow_export,
        NULL::uuid as permission_id,
        'Unapproved user can read own user data' as hint
    from auth.users_data
    left join approved_users on auth.users_data.uid = approved_users.uid
    where approved_users.uid is NULL
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
            aop.study_year_id
            between c.service_study_year and c.service_study_year_to
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
            aos.study_year_id
            between c.service_study_year and c.service_study_year_to
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
    where f.group_write_related_families is TRUE
    union all
    -- recorder can read a servant's person through a shared service admin scope
    select
        recorder.uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        attended_person.id as entity_id,
        FALSE as allow_edit,
        FALSE as allow_export,
        recorder.permission_id,
        'Recorder can read servant person through shared service' as hint
    from approved_users_admin_on as recorder
    inner join approved_users_admin_on as attended
        on
            recorder.admin_on_service = attended.admin_on_service
            and recorder.uid <> attended.uid
    inner join persons as attended_person on attended.uid = attended_person.uid
    where
        recorder.admin_on_service is not NULL
        and COALESCE(recorder.service_allow_record_servants_attendance, FALSE)
        and (
            recorder.service_study_year is NULL
            or attended.service_study_year is NULL
            or recorder.service_study_year = attended.service_study_year
        )
        and (
            recorder.service_gender is NULL
            or attended.service_gender is NULL
            or recorder.service_gender = attended.service_gender
        )
    union all
    -- recorder can read a servant's person through a shared group admin scope
    select
        recorder.uid,
        'person'::text as entity_type,
        'persons'::name as "table",
        attended_person.id as entity_id,
        FALSE as allow_edit,
        FALSE as allow_export,
        recorder.permission_id,
        'Recorder can read servant person through shared group' as hint
    from approved_users_admin_on as recorder
    inner join approved_users_admin_on as attended
        on
            recorder.admin_on_group = attended.admin_on_group
            and recorder.uid <> attended.uid
    inner join persons as attended_person on attended.uid = attended_person.uid
    where
        recorder.admin_on_group is not NULL
        and COALESCE(recorder.group_allow_record_servants_attendance, FALSE)
);


create or replace function operations.plan_study_year_roll()
returns void
language plpgsql
set client_min_messages = warning
as $$
begin
    drop table if exists _study_year_roll_ladder;
    drop table if exists _persons_study_year_roll;
    drop table if exists _persons_next_service_roll;
    drop table if exists _persons_services_after_roll;
    drop table if exists _stranded_persons_groups_roll;
    drop table if exists _classes_roll;
    drop table if exists _servant_scopes_roll;

    create temporary table _study_year_roll_ladder on commit drop as
    select "order" as study_year,
           lead("order") over (order by "order") as next_study_year
    from public.study_years;

    create temporary table _persons_study_year_roll on commit drop as
    select person.id as person_id,
           ladder.next_study_year,
           (ladder.next_study_year is null) as graduating
    from public.persons person
    join _study_year_roll_ladder ladder on ladder.study_year = person.study_year_id;

    create temporary table _persons_next_service_roll on commit drop as
    with leaving as (
        select membership.rel_id,
               membership.person_id,
               membership.service_id as source_service_id,
               service.next_service_id as destination_service_id
        from public.persons_services membership
        join _persons_study_year_roll person on person.person_id = membership.person_id
        join public.services service on service.id = membership.service_id
        where operations.study_year_outgrows_service(
            person.next_study_year, service.study_year_to_id
        )
    ),
    ranked as (
        select leaving.*,
               row_number() over (
                   partition by leaving.person_id, leaving.destination_service_id
                   order by leaving.rel_id
               ) as arrival_rank,
               exists (
                   select 1
                   from public.persons_services staying
                   where staying.person_id = leaving.person_id
                     and staying.service_id = leaving.destination_service_id
                     and not exists (
                         select 1 from leaving other where other.rel_id = staying.rel_id
                     )
               ) as destination_already_held
        from leaving
    )
    select rel_id,
           person_id,
           source_service_id,
           destination_service_id,
           case
               when destination_service_id is null then 'drop'
               when destination_already_held or arrival_rank > 1 then 'dedupe'
               else 'move'
           end as action
    from ranked;

    create temporary table _persons_services_after_roll on commit drop as
    select membership.person_id, membership.service_id
    from public.persons_services membership
    where not exists (
        select 1 from _persons_next_service_roll leaving
        where leaving.rel_id = membership.rel_id
    )
    union
    select moving.person_id, moving.destination_service_id
    from _persons_next_service_roll moving
    where moving.action = 'move';

    create temporary table _stranded_persons_groups_roll on commit drop as
    select membership.person_id, membership.group_id
    from public.persons_groups membership
    join public.groups grp on grp.id = membership.group_id
    where exists (
        select 1 from _persons_next_service_roll leaving
        where leaving.person_id = membership.person_id
          and leaving.source_service_id = grp.service_id
    )
    and not exists (
        select 1 from _persons_services_after_roll staying
        where staying.person_id = membership.person_id
          and staying.service_id = grp.service_id
    );

    create temporary table _classes_roll on commit drop as
    with cohort as (
        select cls.id as class_id,
               ladder.next_study_year,
               service.next_service_id,
               next_service.study_year_from_id as next_service_first_study_year,
               operations.study_year_outgrows_service(
                   ladder.next_study_year, service.study_year_to_id
               ) as outgrows_service
        from public.classes cls
        join public.services service on service.id = cls.service_id
        join _study_year_roll_ladder ladder on ladder.study_year = cls.service_study_year
        left join public.services next_service on next_service.id = service.next_service_id
        where cls.deleted_at is null
          and cls.service_study_year = cls.service_study_year_to
    ),
    planned as (
        select class_id,
               next_study_year,
               next_service_id,
               next_service_first_study_year,
               case
                   when outgrows_service
                        and next_service_id is not null
                        and next_service_first_study_year is null then 'delete'
                   when outgrows_service
                        and next_service_id is not null
                        and next_study_year is not null then 'relocate'
                   when not outgrows_service and next_study_year is not null then 'advance'
               end as action
        from cohort
    )
    select * from planned where action is not null;

    create temporary table _servant_scopes_roll on commit drop as
    select scope.permission_id,
           case
               when ladder.next_study_year is not null
                    and not operations.study_year_outgrows_service(
                        ladder.next_study_year, service.study_year_to_id
                    )
                   then ladder.next_study_year
               else service.study_year_from_id
           end as study_year_after_roll
    from auth.users_admin_on scope
    join public.services service on service.id = scope.admin_on_service
    join _study_year_roll_ladder ladder on ladder.study_year = scope.service_study_year;
end;
$$;

create or replace function operations.apply_study_year_roll_plan()
returns table (step text, affected_rows bigint)
language plpgsql
as $$
declare
    v_rows bigint;
begin
    update public.persons person
    set study_year_id = null,
        work_status = case
            when person.work_status = 'student' then 'unemployed'
            else person.work_status
        end
    from _persons_study_year_roll plan
    where plan.person_id = person.id and plan.graduating;
    get diagnostics v_rows = row_count;
    return query select 'graduate_top_cohort_persons'::text, v_rows;

    update public.persons person
    set study_year_id = plan.next_study_year
    from _persons_study_year_roll plan
    where plan.person_id = person.id and not plan.graduating;
    get diagnostics v_rows = row_count;
    return query select 'advance_persons_study_years'::text, v_rows;

    delete from public.persons_services membership
    using _persons_next_service_roll plan
    where membership.rel_id = plan.rel_id and plan.action = 'drop';
    get diagnostics v_rows = row_count;
    return query
    select 'drop_persons_services_memberships_without_next_service'::text, v_rows;

    delete from public.persons_services membership
    using _persons_next_service_roll plan
    where membership.rel_id = plan.rel_id and plan.action = 'dedupe';
    get diagnostics v_rows = row_count;
    return query select 'dedupe_converging_persons_services_memberships'::text, v_rows;

    delete from public.persons_services membership
    using _persons_next_service_roll plan
    where membership.rel_id = plan.rel_id and plan.action = 'move';

    insert into public.persons_services (person_id, service_id)
    select plan.person_id, plan.destination_service_id
    from _persons_next_service_roll plan
    where plan.action = 'move';
    get diagnostics v_rows = row_count;
    return query
    select 'advance_persons_services_memberships_to_next_service'::text, v_rows;

    delete from public.persons_groups membership
    using _stranded_persons_groups_roll plan
    where membership.person_id = plan.person_id and membership.group_id = plan.group_id;
    get diagnostics v_rows = row_count;
    return query select 'drop_stranded_persons_groups_memberships'::text, v_rows;

    update public.classes cls
    set service_study_year = plan.next_study_year,
        service_study_year_to = plan.next_study_year
    from _classes_roll plan
    where cls.id = plan.class_id and plan.action = 'advance';
    get diagnostics v_rows = row_count;
    return query select 'advance_classes_study_years'::text, v_rows;

    update public.classes cls
    set service_id = plan.next_service_id,
        service_study_year = plan.next_service_first_study_year,
        service_study_year_to = plan.next_service_first_study_year
    from _classes_roll plan
    where cls.id = plan.class_id and plan.action = 'relocate';
    get diagnostics v_rows = row_count;
    return query select 'relocate_classes_to_next_service'::text, v_rows;

    update public.classes cls
    set deleted_at = now()
    from _classes_roll plan
    where cls.id = plan.class_id and plan.action = 'delete';
    get diagnostics v_rows = row_count;
    return query select 'delete_classes_whose_next_service_has_no_grades'::text, v_rows;

    update auth.users_admin_on scope
    set service_study_year = plan.study_year_after_roll
    from _servant_scopes_roll plan
    where scope.permission_id = plan.permission_id and plan.study_year_after_roll is not null;
    get diagnostics v_rows = row_count;
    return query select 'advance_servant_scopes_study_years'::text, v_rows;

    select count(*) into v_rows
    from _servant_scopes_roll plan
    where plan.study_year_after_roll is null;
    return query select 'servant_scopes_left_unchanged'::text, v_rows;

    select count(*) into v_rows
    from public.services service
    where service.deleted_at is null
      and service.study_year_from_id is not null
      and not exists (
          select 1 from public.classes cls
          where cls.service_id = service.id
            and service.study_year_from_id
                between cls.service_study_year and cls.service_study_year_to
            and cls.deleted_at is null
      );
    return query select 'services_missing_first_grade_class'::text, v_rows;
end;
$$;
