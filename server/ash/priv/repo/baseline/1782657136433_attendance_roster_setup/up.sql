create index if not exists users_admin_on_admin_on_group_idx
on auth.users_admin_on using btree (admin_on_group)
where admin_on_group is not null;

create index if not exists users_admin_on_admin_on_service_idx
on auth.users_admin_on using btree (
    admin_on_service, service_study_year, service_gender
)
where admin_on_service is not null;

create index if not exists attendance_history_roster_lookup_idx
on history.attendance_history using btree (
    meeting_id, person_id, as_servant, datetime
);

do $$
begin
    if exists (
        select 1
        from pg_constraint
        where
            conrelid = 'history.attendance_history'::regclass
            and conname = 'attendance_history_meeting_person_day_idx'
    ) then
        alter table history.attendance_history
        drop constraint attendance_history_meeting_person_day_idx;
    end if;
end
$$;

drop index if exists history.attendance_history_meeting_person_day_idx;

create unique index attendance_history_meeting_person_day_idx
on history.attendance_history (
    ((datetime at time zone 'UTC')::date),
    meeting_id,
    person_id,
    as_servant
);

do $$
begin
    execute format(
        'alter database %I set search_path to %s',
        current_database(),
        '"$user", public, topology, history'
    );
    execute format('alter database %I set jit = off', current_database());
end
$$;

create view history.meeting_roster (
    meeting_id,
    person_id,
    as_servant,
    service_id,
    group_id,
    name,
    main_phone,
    gender,
    study_year_id,
    study_year_name,
    color,
    photo_updated_at,
    blurhash
) as
with served_in_groups as (
    select
        m.id as meeting_id,
        p.id as person_id,
        false as as_servant,
        m.service_id,
        m.group_id,
        p.name,
        p.main_phone,
        p.gender,
        p.study_year_id,
        p.color,
        p.photo_updated_at,
        p.blurhash
    from history.meetings as m
    inner join public.persons_groups as pg on m.group_id = pg.group_id
    inner join public.persons as p on pg.person_id = p.id
    where
        m.group_id is not null
        and m.is_archived is false
        and m.audience <> 'onlyServants'::history.meeting_audience
        and p.deleted_at is null
),

served_in_services as (
    select
        m.id as meeting_id,
        p.id as person_id,
        false as as_servant,
        m.service_id,
        m.group_id,
        p.name,
        p.main_phone,
        p.gender,
        p.study_year_id,
        p.color,
        p.photo_updated_at,
        p.blurhash
    from history.meetings as m
    inner join public.persons_services as ps on m.service_id = ps.service_id
    inner join public.persons as p on ps.person_id = p.id
    where
        m.service_id is not null
        and m.is_archived is false
        and m.audience <> 'onlyServants'::history.meeting_audience
        and p.deleted_at is null
        and (
            m.service_study_year is null
            or m.service_study_year = p.study_year_id
        )
        and (
            m.service_gender is null
            or m.service_gender = p.gender
        )
),

servants_on_groups as (
    select
        m.id as meeting_id,
        p.id as person_id,
        true as as_servant,
        m.service_id,
        m.group_id,
        p.name,
        p.main_phone,
        p.gender,
        p.study_year_id,
        p.color,
        p.photo_updated_at,
        p.blurhash
    from history.meetings as m
    inner join auth.users_admin_on as uao on m.group_id = uao.admin_on_group
    inner join public.persons as p on uao.uid = p.uid
    where
        m.group_id is not null
        and m.is_archived is false
        and m.audience <> 'onlyPersons'::history.meeting_audience
        and p.deleted_at is null
        and exists (
            select 1
            from auth.users_permissions as up
            where up.uid = uao.uid and up.permission = 'approved'
        )
),

servants_on_services as (
    select distinct
        m.id as meeting_id,
        p.id as person_id,
        true as as_servant,
        m.service_id,
        m.group_id,
        p.name,
        p.main_phone,
        p.gender,
        p.study_year_id,
        p.color,
        p.photo_updated_at,
        p.blurhash
    from history.meetings as m
    inner join auth.users_admin_on as uao on m.service_id = uao.admin_on_service
    inner join public.persons as p on uao.uid = p.uid
    where
        m.service_id is not null
        and m.is_archived is false
        and m.audience <> 'onlyPersons'::history.meeting_audience
        and p.deleted_at is null
        and exists (
            select 1
            from auth.users_permissions as up
            where up.uid = uao.uid and up.permission = 'approved'
        )
        and (
            uao.service_study_year is null
            or m.service_study_year is null
            or uao.service_study_year = m.service_study_year
        )
        and (
            uao.service_gender is null
            or m.service_gender is null
            or uao.service_gender = m.service_gender
        )
),

roster as (
    select * from served_in_groups
    union all
    select * from served_in_services
    union all
    select * from servants_on_groups
    union all
    select * from servants_on_services
)

select
    r.meeting_id,
    r.person_id,
    r.as_servant,
    r.service_id,
    r.group_id,
    r.name,
    r.main_phone,
    r.gender,
    r.study_year_id::integer as study_year_id,
    sy.name as study_year_name,
    r.color,
    r.photo_updated_at,
    r.blurhash
from roster as r
left join public.study_years as sy on r.study_year_id = sy."order";
