drop view if exists deleted.persons;

alter table public.persons add column if not exists main_phone text;
alter table public.persons add column if not exists other_phones jsonb not null default '{}'::jsonb;

create view deleted.persons as
select * from public.persons where deleted_at is not null;

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

create or replace function public.legacy_phones_canonical(p_value text)
returns text
language sql
immutable
as $$
    select nullif(coalesce(public.phone_to_e164(p_value), btrim(p_value)), '');
$$;

create or replace function public.legacy_phones_to_e164_or_raise(p_value text)
returns text
language plpgsql
as $$
declare
    v_phone text := public.phone_to_e164(p_value);
begin
    if v_phone is null then
        raise exception 'contacts/invalid-phone' using errcode = '22023';
    end if;

    return v_phone;
end;
$$;

create or replace function public.legacy_phones_diff_entries(
    p_other jsonb,
    p_family_role_eligible boolean,
    p_hint jsonb default null
)
returns table (nkey text, key text, value text, person_type_id uuid)
language sql
stable
as $$
    select distinct on (r.nkey) r.nkey, r.key, r.value, r.person_type_id
    from (
        select
            coalesce('role:' || t.person_type_id::text, 'key:' || e.key) as nkey,
            e.key,
            e.value,
            t.person_type_id
        from jsonb_each_text(coalesce(p_other, '{}'::jsonb)) as e
        cross join lateral (
            select case
                when p_family_role_eligible then public.family_admin_type_of_phone_label(e.key)
            end as person_type_id
        ) as t
    ) as r
    order by r.nkey, ((p_hint ->> r.key) is not distinct from r.value), r.key;
$$;

create or replace function public.legacy_phones_reverse(p_new public.persons, p_old_main text, p_old_other jsonb)
returns void
language plpgsql
as $$
declare
    v_entries jsonb;
    v_is_admin boolean := coalesce(
        (select pt.is_family_admin from public.person_types as pt where pt.id = p_new.person_type_id),
        false
    );
    v_family_role_eligible boolean := p_new.family_id is not null and not v_is_admin;
    v_key text;
    v_value text;
    v_type_id uuid;
    v_is_removed boolean;
    v_contact_id uuid;
begin
    select coalesce(jsonb_object_agg(e.key, e.contact_id), '{}'::jsonb)
    into v_entries
    from public.legacy_phones_entries(p_new.id) as e
    where e.key is not null;

    if public.legacy_phones_canonical(p_new.main_phone) is distinct from public.legacy_phones_canonical(p_old_main) then
        delete from public.contacts where person_id = p_new.id and is_main_phone;

        if public.legacy_phones_canonical(p_new.main_phone) is not null then
            insert into public.contacts (person_id, phone, is_main_phone)
            values (p_new.id, public.legacy_phones_to_e164_or_raise(p_new.main_phone), true);
        end if;
    end if;

    for v_key, v_value, v_type_id, v_is_removed in
        select
            coalesce(n.key, o.key),
            n.value,
            coalesce(n.person_type_id, o.person_type_id),
            n.nkey is null
        from public.legacy_phones_diff_entries(p_old_other, v_family_role_eligible) as o
        full join public.legacy_phones_diff_entries(p_new.other_phones, v_family_role_eligible, p_old_other) as n
            on n.nkey = o.nkey
        where n.nkey is null
            or public.legacy_phones_canonical(n.value) is distinct from public.legacy_phones_canonical(o.value)
        order by n.nkey is null desc
    loop
        v_contact_id := coalesce(
            (v_entries ->> v_key)::uuid,
            (
                select fc.id
                from public.legacy_phones_family_contacts(p_new.family_id) as fc
                where fc.person_type_id = v_type_id
                order by fc.is_main_phone desc, fc.created_at, fc.id
                limit 1
            )
        );

        if v_is_removed or public.legacy_phones_canonical(v_value) is null then
            delete from public.contacts where id = v_contact_id;
        elsif v_contact_id is not null then
            update public.contacts
            set phone = public.legacy_phones_to_e164_or_raise(v_value)
            where id = v_contact_id;
        elsif v_type_id is not null then
            insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
            values (p_new.family_id, v_type_id, public.legacy_phones_to_e164_or_raise(v_value), true);
        else
            insert into public.contacts (person_id, label, phone)
            values (p_new.id, v_key, public.legacy_phones_to_e164_or_raise(v_value));
        end if;
    end loop;
end;
$$;

create or replace function public.legacy_phones_sync_from_person()
returns trigger
language plpgsql
as $$
begin
    if public.legacy_phones_sync_skipped() then
        return null;
    end if;

    perform set_config('church_admin.legacy_phones_syncing', 'on', true);

    if (tg_op = 'INSERT' or (old.main_phone, old.other_phones) is distinct from (new.main_phone, new.other_phones))
        and not exists (
            select 1
            from public.legacy_phones_of(new.id) as l
            where (l.main_phone, l.other_phones) is not distinct from (new.main_phone, new.other_phones)
        ) then
        perform public.legacy_phones_reverse(
            new,
            case when tg_op = 'UPDATE' then old.main_phone end,
            case when tg_op = 'UPDATE' then old.other_phones else '{}'::jsonb end
        );
    end if;

    perform public.legacy_phones_refresh(new.id, new.family_id);

    if tg_op = 'UPDATE' and old.family_id is distinct from new.family_id then
        perform public.legacy_phones_refresh(null, old.family_id);
    end if;

    perform set_config('church_admin.legacy_phones_syncing', 'off', true);

    return null;
end;
$$;

create or replace function public.import_legacy_phones()
returns void
language plpgsql
as $$
declare
    v_unconvertible bigint;
begin
    perform set_config('church_admin.skip_contact_edit_history', 'on', true);

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

    perform set_config('church_admin.skip_contact_edit_history', 'off', true);
end;
$$;


drop trigger if exists edit_history on public.persons;

create trigger edit_history
after insert on public.persons
for each row
execute function history.edit_history_trigger();

create trigger edit_history_on_update
after update on public.persons
for each row
when (
    to_jsonb(old) - 'main_phone' - 'other_phones'
    is distinct from to_jsonb(new) - 'main_phone' - 'other_phones'
)
execute function history.edit_history_trigger();

update public.persons as p
set (main_phone, other_phones) = (
    select l.main_phone, l.other_phones from public.legacy_phones_of(p.id) as l
);

create or replace trigger contacts_sync_legacy_phones
after insert or update or delete on public.contacts
for each row
execute function public.legacy_phones_sync_from_contact();

create or replace trigger persons_sync_legacy_phones_on_insert
after insert on public.persons
for each row
execute function public.legacy_phones_sync_from_person();

create or replace trigger persons_sync_legacy_phones_on_update
after update of main_phone, other_phones, family_id, person_type_id, deleted_at on public.persons
for each row
when (
    (old.main_phone, old.other_phones, old.family_id, old.person_type_id, old.deleted_at)
    is distinct from (new.main_phone, new.other_phones, new.family_id, new.person_type_id, new.deleted_at)
)
execute function public.legacy_phones_sync_from_person();

create or replace view public.families_admins_phones as
select
    role_phones.family_id,
    json_object_agg(pt.name, public.phone_to_legacy(role_phones.phone) order by pt.is_family_admin desc, pt."order") as aggregated_phones
from (
    select distinct on (rc.effective_family_id, rc.effective_person_type_id)
        rc.effective_family_id as family_id,
        rc.effective_person_type_id as person_type_id,
        rc.phone
    from public.resolved_contacts as rc
    where rc.effective_family_id is not null
    order by rc.effective_family_id, rc.effective_person_type_id, rc.is_main_phone desc, rc.created_at, rc.id
) as role_phones
join public.person_types as pt on pt.id = role_phones.person_type_id
where pt.is_family_admin
group by role_phones.family_id
order by count(role_phones.phone) desc;

drop view if exists history.meeting_roster;

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
