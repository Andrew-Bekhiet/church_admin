create or replace function public.import_legacy_phones()
returns void
language plpgsql
as $$
declare
    v_unconvertible bigint;
begin
    drop table if exists legacy_phone_entries;

    create temp table legacy_phone_entries on commit drop as
    select
        p.id as person_id,
        p.family_id,
        p.deleted_at is null and p.family_id is not null and not coalesce(pt.is_family_admin, false) as may_use_role,
        e.key,
        public.phone_to_e164(e.value) as phone
    from public.persons as p
    left join public.person_types as pt on pt.id = p.person_type_id
    cross join lateral (
        select null::text as key, p.main_phone as value
        union all
        select o.key, o.value
        from jsonb_each_text(
            case when jsonb_typeof(p.other_phones) = 'object' then p.other_phones else '{}'::jsonb end
        ) as o
    ) as e
    where nullif(btrim(e.value), '') is not null;

    select count(*) into v_unconvertible from legacy_phone_entries where phone is null;

    if v_unconvertible > 0 then
        raise exception 'import_legacy_phones: % legacy phone value(s) do not convert to E.164', v_unconvertible
            using errcode = '22023';
    end if;

    with labelled as (
        select k.key, public.family_admin_type_of_phone_label(k.key) as role_type_id
        from (select distinct e.key from legacy_phone_entries as e where e.may_use_role and e.key is not null) as k
    ),
    sole_members as (
        select m.family_id, m.person_type_id, (array_agg(m.id))[1] as person_id
        from public.persons as m
        where m.deleted_at is null
            and m.family_id in (select e.family_id from legacy_phone_entries as e where e.may_use_role)
        group by m.family_id, m.person_type_id
        having count(*) = 1
    ),
    targets as (
        select
            case when l.role_type_id is null then e.person_id else s.person_id end as owner_person_id,
            case when l.role_type_id is not null and s.person_id is null then e.family_id end as owner_family_id,
            case when s.person_id is null then l.role_type_id end as owner_type_id,
            case when e.key is not null and l.role_type_id is null then e.key end as label,
            e.phone,
            e.key,
            case when e.key is null then 0 when l.role_type_id is null then 1 else 2 end as priority
        from legacy_phone_entries as e
        left join labelled as l on l.key = e.key and e.may_use_role
        left join sole_members as s on s.family_id = e.family_id and s.person_type_id = l.role_type_id
    ),
    deduped as (
        select distinct on (t.owner_person_id, t.owner_family_id, t.owner_type_id, t.phone)
            t.owner_person_id,
            t.owner_family_id,
            t.owner_type_id,
            t.label,
            t.phone,
            t.priority,
            count(*) over (partition by t.owner_person_id, t.owner_family_id, t.owner_type_id, t.phone) as copies
        from targets as t
        order by t.owner_person_id, t.owner_family_id, t.owner_type_id, t.phone, t.priority, t.key
    ),
    ranked as (
        select
            d.*,
            d.priority <> 1 and row_number() over (
                partition by d.owner_person_id, d.owner_family_id, d.owner_type_id
                order by d.priority = 1, d.priority, d.copies desc, d.phone
            ) = 1 as is_main
        from deduped as d
    )
    insert into public.contacts (person_id, family_id, person_type_id, label, phone, is_main_phone)
    select
        r.owner_person_id,
        r.owner_family_id,
        r.owner_type_id,
        r.label,
        r.phone,
        r.is_main and not exists (
            select 1
            from public.contacts as m
            where m.is_main_phone
                and m.person_id is not distinct from r.owner_person_id
                and m.family_id is not distinct from r.owner_family_id
                and m.person_type_id is not distinct from r.owner_type_id
        )
    from ranked as r
    on conflict do nothing;
end;
$$;

do $$
begin
    perform set_config('church_admin.skip_legacy_phones_sync', 'on', true);
    perform public.import_legacy_phones();
    perform set_config('church_admin.skip_legacy_phones_sync', 'off', true);
end;
$$;
