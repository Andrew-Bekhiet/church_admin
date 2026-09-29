create or replace function public.phone_to_e164(p_phone text)
returns text
language sql
immutable
as $$
    select case when v.phone ~ '^\+[1-9][0-9]{6,14}$' then v.phone end
    from (
        select case
            when s.digits like '+%' then s.digits
            when s.digits like '00%' then '+' || substr(s.digits, 3)
            when s.digits like '0%' then '+20' || substr(s.digits, 2)
            else '+20' || s.digits
        end as phone
        from (select regexp_replace(coalesce(p_phone, ''), '[\s\-\.\(\)]', '', 'g') as digits) as s
    ) as v;
$$;

create or replace function public.phone_to_legacy(p_phone text)
returns text
language sql
immutable
as $$
    select case when p_phone like '+20%' then substr(p_phone, 4) else p_phone end;
$$;

create or replace function public.person_type_phone_label(p_type_name text)
returns text
language sql
immutable
as $$
    select 'رقم الهاتف (' || case when p_type_name like 'ال%' then p_type_name else 'ال' || p_type_name end || ')';
$$;

create or replace function public.legacy_phones_fold_label(p_text text)
returns text
language sql
immutable
as $$
    select regexp_replace(translate(btrim(p_text), 'أإآةى', 'اايهي'), '^ال', '');
$$;

create or replace function public.family_admin_type_of_phone_label(p_label text)
returns uuid
language sql
stable
as $$
    select pt.id
    from public.person_types as pt
    where pt.is_family_admin
        and public.legacy_phones_fold_label(pt.name)
            = public.legacy_phones_fold_label(substring(p_label from '^\s*رقم الهاتف\s*\((.*)\)\s*$'))
    order by pt."order", pt.id
    limit 1;
$$;

create or replace function public.legacy_phones_sync_skipped()
returns boolean
language sql
stable
as $$
    select coalesce(current_setting('church_admin.skip_legacy_phones_sync', true), '') = 'on'
        or coalesce(current_setting('church_admin.legacy_phones_syncing', true), '') = 'on';
$$;

create or replace function public.legacy_phones_family_contacts(p_family_id uuid)
returns table (
    id uuid,
    person_type_id uuid,
    phone text,
    is_main_phone boolean,
    created_at timestamptz
)
language sql
stable
as $$
    select c.id, c.person_type_id, c.phone, c.is_main_phone, c.created_at
    from public.contacts as c
    join public.person_types as pt on pt.id = c.person_type_id
    where c.family_id = p_family_id and c.person_id is null and pt.is_family_admin
    union all
    select c.id, p.person_type_id, c.phone, c.is_main_phone, c.created_at
    from public.persons as p
    join public.person_types as pt on pt.id = p.person_type_id
    join public.contacts as c on c.person_id = p.id
    where p.family_id = p_family_id and p.deleted_at is null and pt.is_family_admin;
$$;

create or replace function public.legacy_phones_entries(p_person_id uuid)
returns table (key text, contact_id uuid, phone text, is_main_phone boolean)
language sql
stable
as $$
    select null::text, c.id, c.phone, true
    from public.contacts as c
    where c.person_id = p_person_id and c.is_main_phone
    union all
    select k.key, k.id, k.phone, false
    from (
        select distinct on (e.key) e.key, e.id, e.phone
        from (
            select
                coalesce(
                    o.label,
                    'رقم الهاتف ' || row_number() over (partition by o.label is null order by o.created_at, o.id)
                ) as key,
                o.id,
                o.phone,
                0 as rank,
                o.created_at
            from public.contacts as o
            where o.person_id = p_person_id and not o.is_main_phone
            union all
            select public.person_type_phone_label(pt.name), f.id, f.phone, 1, f.created_at
            from public.persons as p
            left join public.person_types as own_pt on own_pt.id = p.person_type_id
            cross join lateral (
                select distinct on (fc.person_type_id) fc.*
                from public.legacy_phones_family_contacts(p.family_id) as fc
                order by fc.person_type_id, fc.is_main_phone desc, fc.created_at, fc.id
            ) as f
            join public.person_types as pt on pt.id = f.person_type_id
            where p.id = p_person_id and not coalesce(own_pt.is_family_admin, false)
        ) as e
        order by e.key, e.rank, e.created_at
    ) as k;
$$;

create or replace function public.legacy_phones_of(p_person_id uuid)
returns table (main_phone text, other_phones jsonb)
language sql
stable
as $$
    select
        public.phone_to_legacy(max(e.phone) filter (where e.is_main_phone)),
        coalesce(
            jsonb_object_agg(e.key, public.phone_to_legacy(e.phone)) filter (where not e.is_main_phone),
            '{}'::jsonb
        )
    from public.legacy_phones_entries(p_person_id) as e;
$$;

create or replace function public.legacy_phones_refresh(p_person_id uuid, p_family_id uuid)
returns void
language sql
as $$
    with targets as (
        select p_person_id as id
        where p_person_id is not null
        union
        select m.id
        from public.persons as m
        where m.family_id = p_family_id and m.deleted_at is null
    )
    update public.persons as p
    set main_phone = l.main_phone, other_phones = l.other_phones
    from targets as t
    cross join lateral public.legacy_phones_of(t.id) as l
    where p.id = t.id
        and (p.main_phone, p.other_phones) is distinct from (l.main_phone, l.other_phones);
$$;

create or replace function public.legacy_phones_sync_from_contact()
returns trigger
language plpgsql
as $$
begin
    if public.legacy_phones_sync_skipped() then
        return null;
    end if;

    perform set_config('church_admin.legacy_phones_syncing', 'on', true);

    if tg_op <> 'INSERT'
        and (tg_op = 'DELETE' or (old.person_id, old.family_id) is distinct from (new.person_id, new.family_id)) then
        perform public.legacy_phones_refresh(
            old.person_id,
            coalesce(old.family_id, (select p.family_id from public.persons as p where p.id = old.person_id))
        );
    end if;

    if tg_op <> 'DELETE' then
        perform public.legacy_phones_refresh(
            new.person_id,
            coalesce(new.family_id, (select p.family_id from public.persons as p where p.id = new.person_id))
        );
    end if;

    perform set_config('church_admin.legacy_phones_syncing', 'off', true);

    return null;
end;
$$;

create or replace trigger contacts_sync_legacy_phones
after insert or update or delete on public.contacts
for each row
execute function public.legacy_phones_sync_from_contact();

create or replace function public.legacy_phones_sync_from_person()
returns trigger
language plpgsql
as $$
begin
    if public.legacy_phones_sync_skipped() then
        return null;
    end if;

    perform set_config('church_admin.legacy_phones_syncing', 'on', true);

    perform public.legacy_phones_refresh(new.id, new.family_id);

    if tg_op = 'UPDATE' and old.family_id is distinct from new.family_id then
        perform public.legacy_phones_refresh(null, old.family_id);
    end if;

    perform set_config('church_admin.legacy_phones_syncing', 'off', true);

    return null;
end;
$$;

create or replace trigger persons_sync_legacy_phones_on_insert
after insert on public.persons
for each row
execute function public.legacy_phones_sync_from_person();

create or replace trigger persons_sync_legacy_phones_on_update
after update of family_id, person_type_id, deleted_at on public.persons
for each row
when (
    (old.family_id, old.person_type_id, old.deleted_at)
    is distinct from (new.family_id, new.person_type_id, new.deleted_at)
)
execute function public.legacy_phones_sync_from_person();

create or replace view public.families_admins_phones as
select
    rc.effective_family_id as family_id,
    json_object_agg(pt.name, public.phone_to_legacy(rc.phone) order by pt.is_family_admin desc, pt."order") as aggregated_phones
from public.resolved_contacts as rc
join public.person_types as pt on pt.id = rc.effective_person_type_id
where pt.is_family_admin and rc.is_main_phone and rc.effective_family_id is not null
group by rc.effective_family_id
order by count(rc.phone) desc;
