do $$
declare
    unmigrated_persons bigint;
begin
    select count(*) into unmigrated_persons
    from public.persons as p
    where
        (
            public.legacy_normalize_phone(p.main_phone) is not null
            and not exists (
                select 1 from public.contacts as c
                where
                    c.person_id = p.id
                    and c.phone = public.legacy_normalize_phone(p.main_phone)
            )
        )
        or exists (
            select 1
            from public.legacy_phone_entries(p.other_phones) as entry
            where not exists (
                select 1 from public.resolved_contacts as rc
                where
                    rc.phone = entry.phone
                    and (
                        rc.person_id = p.id
                        or (
                            entry.role_person_type_id is not null
                            and rc.effective_family_id = p.family_id
                            and rc.effective_person_type_id
                            = entry.role_person_type_id
                        )
                    )
            )
        );

    if unmigrated_persons > 0 then
        raise exception 'Cannot drop legacy phones: % person(s) hold a number in persons.main_phone or persons.other_phones with no matching row in contacts',
            unmigrated_persons;
    end if;
end $$;

drop trigger if exists legacy_sync_contacts_on_update on public.persons;
drop trigger if exists legacy_sync_contacts_on_insert on public.persons;
drop function if exists public.legacy_sync_contacts_from_person_phones();
drop trigger if exists legacy_sync_family_phones_on_update on public.persons;
drop trigger if exists legacy_sync_family_phones_on_insert on public.persons;
drop function if exists public.legacy_sync_family_phones();
drop trigger if exists legacy_sync_persons_phones on public.contacts;
drop function if exists public.legacy_sync_persons_phones_from_contacts();
drop function if exists public.legacy_refresh_persons_phones(uuid [], uuid []);
drop view if exists public.legacy_persons_phones;
drop view if exists public.families_admins_phones;

drop view if exists history.meeting_roster;
drop view if exists deleted.persons;

alter table public.persons
drop column if exists main_phone,
drop column if exists other_phones;

create view history.meeting_roster (
    meeting_id,
    person_id,
    as_servant,
    service_id,
    group_id,
    name,
    gender,
    study_year_id,
    study_year_name,
    color,
    photo_updated_at,
    blurhash,
    phones
) as
with served_in_groups as (
    select
        m.id as meeting_id,
        p.id as person_id,
        false as as_servant,
        m.service_id,
        m.group_id,
        p.name,
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
    r.gender,
    r.study_year_id::integer as study_year_id,
    sy.name as study_year_name,
    r.color,
    r.photo_updated_at,
    r.blurhash,
    array(
        select own.phone::text
        from public.contacts as own
        where own.person_id = r.person_id

        union

        select unclaimed.phone::text
        from public.contacts as unclaimed
        inner join public.person_types as unclaimed_type
            on unclaimed.person_type_id = unclaimed_type.id
        where
            unclaimed.family_id = roster_person.family_id
            and unclaimed_type.is_family_admin

        union

        select claimed.phone::text
        from public.persons as family_admin
        inner join public.person_types as family_admin_type
            on family_admin.person_type_id = family_admin_type.id
        inner join public.contacts as claimed
            on family_admin.id = claimed.person_id
        where
            family_admin.family_id = roster_person.family_id
            and family_admin.deleted_at is null
            and family_admin_type.is_family_admin
    ) as phones
from roster as r
left join public.study_years as sy on r.study_year_id = sy."order"
inner join public.persons as roster_person on r.person_id = roster_person.id;

create or replace view deleted.persons as
select
    id,
    name,
    birthdate,
    gender,
    is_shammas,
    shammas_level_id,
    school_id,
    college_id,
    church_id,
    father_id,
    is_student,
    job_id,
    job_description,
    qualification_id,
    person_type_id,
    state_id,
    is_servant,
    notes,
    uid,
    family_id,
    store_id,
    study_year_id,
    color,
    photo_updated_at,
    blurhash,
    national_id,
    work_status,
    martial_status,
    serving_church_id,
    service_type,
    deleted_at,
    deleted_by
from public.persons
where deleted_at is not null;

drop function if exists public.legacy_phone_entries(jsonb);
drop function if exists public.legacy_phone_label_person_type_name(text);
drop function if exists public.legacy_normalize_phone(text);
