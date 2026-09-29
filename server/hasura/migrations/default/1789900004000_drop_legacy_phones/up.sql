do $$
begin
    if exists (
        select 1
        from public.persons as p
        cross join lateral (
            select nullif(btrim(p.main_phone), '') as value
            union all
            select nullif(btrim(o.value), '')
            from jsonb_each_text(
                case when jsonb_typeof(p.other_phones) = 'object' then p.other_phones else '{}'::jsonb end
            ) as o
        ) as v
        where v.value is not null
            and not exists (
                select 1
                from public.resolved_contacts as c
                where (c.person_id = p.id or c.effective_family_id = p.family_id)
                    and c.phone = public.phone_to_e164(v.value)
            )
    ) then
        raise exception 'Cannot drop legacy phones: persons hold numbers that have no matching contact';
    end if;
end $$;

drop trigger if exists persons_sync_legacy_phones_on_update on public.persons;
drop trigger if exists persons_sync_legacy_phones_on_insert on public.persons;
drop trigger if exists contacts_sync_legacy_phones on public.contacts;

drop trigger if exists edit_history_on_update on public.persons;
drop trigger if exists edit_history on public.persons;

create trigger edit_history
after insert or update on public.persons
for each row
execute function history.edit_history_trigger();

drop view if exists public.families_admins_phones;
drop view if exists history.meeting_roster;
drop view if exists deleted.persons;

alter table public.persons drop column if exists main_phone;
alter table public.persons drop column if exists other_phones;

create view deleted.persons as
select * from public.persons where deleted_at is not null;

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
    r.blurhash
from roster as r
left join public.study_years as sy on r.study_year_id = sy."order";

drop function if exists public.import_legacy_phones();
drop function if exists public.legacy_phones_sync_from_person();
drop function if exists public.legacy_phones_sync_from_contact();
drop function if exists public.legacy_phones_reverse(public.persons, text, jsonb);
drop function if exists public.legacy_phones_diff_entries(jsonb, boolean, jsonb);
drop function if exists public.legacy_phones_to_e164_or_raise(text);
drop function if exists public.legacy_phones_canonical(text);
drop function if exists public.legacy_phones_refresh(uuid, uuid);
drop function if exists public.legacy_phones_of(uuid);
drop function if exists public.legacy_phones_entries(uuid);
drop function if exists public.legacy_phones_family_contacts(uuid);
drop function if exists public.legacy_phones_sync_skipped();
drop function if exists public.family_admin_type_of_phone_label(text);
drop function if exists public.legacy_phones_fold_label(text);
drop function if exists public.person_type_phone_label(text);
drop function if exists public.phone_to_legacy(text);
drop function if exists public.phone_to_e164(text);
