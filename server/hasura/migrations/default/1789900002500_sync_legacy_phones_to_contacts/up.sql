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

create or replace trigger persons_sync_legacy_phones_on_update
after update of main_phone, other_phones, family_id, person_type_id, deleted_at on public.persons
for each row
when (
    (old.main_phone, old.other_phones, old.family_id, old.person_type_id, old.deleted_at)
    is distinct from (new.main_phone, new.other_phones, new.family_id, new.person_type_id, new.deleted_at)
)
execute function public.legacy_phones_sync_from_person();
