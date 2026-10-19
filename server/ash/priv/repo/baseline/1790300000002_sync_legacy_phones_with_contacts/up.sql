create or replace view public.legacy_persons_phones as
select
    p.id as person_id,
    own_main.phone::text as main_phone,
    coalesce(entries.other_phones, '{}'::jsonb) as other_phones
from public.persons as p
left join public.contacts as own_main
    on p.id = own_main.person_id and own_main.is_main_phone
left join lateral (
    with unnumbered as (
        select
            coalesce(own.label, 'رقم الهاتف') as base_label,
            own.phone::text as phone,
            own.is_main_phone,
            own.created_at,
            own.id
        from public.contacts as own
        where own.person_id = p.id and not own.is_main_phone
        union all
        select
            'رقم الهاتف (' || admin_type.name || ')' as base_label,
            relative.phone::text,
            relative.is_main_phone,
            relative.created_at,
            relative.id
        from public.resolved_contacts as relative
        inner join public.person_types as admin_type
            on
                relative.effective_person_type_id = admin_type.id
                and admin_type.is_family_admin
        where
            relative.effective_family_id = p.family_id
            and relative.person_id is distinct from p.id
    ),

    numbered as (
        select
            unnumbered.base_label,
            unnumbered.phone,
            row_number() over (
                partition by unnumbered.base_label
                order by
                    unnumbered.is_main_phone desc,
                    unnumbered.created_at asc,
                    unnumbered.id asc
            ) as label_position
        from unnumbered
    )

    select
        jsonb_object_agg(
            case
                when numbered.label_position = 1 then numbered.base_label
                else (
                    select numbered.base_label || ' ' || suffix
                    from generate_series(
                        2,
                        numbered.label_position
                        + (select count(*)::int from unnumbered)
                    ) as suffix
                    where numbered.base_label || ' ' || suffix not in (
                        select taken.base_label from unnumbered as taken
                    )
                    order by suffix
                    offset numbered.label_position - 2
                    limit 1
                )
            end,
            numbered.phone
        ) as other_phones
    from numbered
) as entries on true;

create or replace function public.legacy_refresh_persons_phones(
    affected_person_ids uuid [], affected_family_ids uuid []
)
returns void
language sql
as $$
    update public.persons as p
    set
        main_phone = projected.main_phone,
        other_phones = projected.other_phones
    from public.legacy_persons_phones as projected
    where projected.person_id = p.id
        and (p.id = any(affected_person_ids) or p.family_id = any(affected_family_ids))
        and (p.main_phone, p.other_phones)
        is distinct from (projected.main_phone, projected.other_phones)
$$;

alter table public.persons disable trigger edit_history;
alter table public.persons disable trigger persons_container_check;

select public.legacy_refresh_persons_phones(
    array(select p.id from public.persons as p), '{}'
);

alter table public.persons enable trigger persons_container_check;
alter table public.persons enable trigger edit_history;

create or replace function public.legacy_sync_persons_phones_from_contacts()
returns trigger
language plpgsql
as $$
begin
    perform public.legacy_refresh_persons_phones(
        array[new.person_id, old.person_id],
        array[new.family_id, old.family_id] || array(
            select p.family_id from public.persons as p
            where p.id in (new.person_id, old.person_id)
        )
    );

    return null;
end;
$$;

drop trigger if exists legacy_sync_persons_phones on public.contacts;
create trigger legacy_sync_persons_phones
after insert or update or delete on public.contacts
for each row
execute function public.legacy_sync_persons_phones_from_contacts();

create or replace function public.legacy_sync_family_phones()
returns trigger
language plpgsql
as $$
begin
    perform public.legacy_refresh_persons_phones(
        array[new.id],
        array[new.family_id, case when tg_op = 'UPDATE' then old.family_id end]
    );

    return null;
end;
$$;

drop trigger if exists legacy_sync_family_phones_on_insert on public.persons;
create trigger legacy_sync_family_phones_on_insert
after insert on public.persons
for each row
execute function public.legacy_sync_family_phones();

drop trigger if exists legacy_sync_family_phones_on_update on public.persons;
create trigger legacy_sync_family_phones_on_update
after update of family_id, person_type_id, deleted_at on public.persons
for each row
when (
    old.family_id is distinct from new.family_id
    or old.person_type_id is distinct from new.person_type_id
    or old.deleted_at is distinct from new.deleted_at
)
execute function public.legacy_sync_family_phones();

create or replace function public.legacy_sync_contacts_from_person_phones()
returns trigger
language plpgsql
as $$
declare
    old_main text := public.legacy_normalize_phone(case when tg_op = 'UPDATE' then old.main_phone end);
    new_main text := public.legacy_normalize_phone(new.main_phone);
    old_phones jsonb := case when tg_op = 'UPDATE' then old.other_phones else '{}'::jsonb end;
begin
    if exists (
        select 1 from public.legacy_persons_phones as projected
        where projected.person_id = new.id
            and projected.main_phone is not distinct from new_main
            and projected.other_phones = (
                select coalesce(jsonb_object_agg(entry.label, entry.phone), '{}'::jsonb)
                from public.legacy_phone_entries(new.other_phones) as entry
            )
    ) then
        return null;
    end if;

    if new_main is distinct from old_main then
        update public.contacts
        set is_main_phone = false
        where person_id = new.id and is_main_phone;

        delete from public.contacts
        where person_id = new.id
            and phone = old_main
            and old_main not in (
                select entry.phone from public.legacy_phone_entries(new.other_phones) as entry
            );

        if new_main is not null then
            insert into public.contacts (person_id, phone, is_main_phone)
            values (new.id, new_main::public.e164_phone, true)
            on conflict (person_id, phone) do update set is_main_phone = true;
        end if;
    end if;

    delete from public.contacts as c
    using (
        select * from public.legacy_phone_entries(old_phones)
        except
        select * from public.legacy_phone_entries(new.other_phones)
    ) as removed
    where removed.phone is distinct from new_main
        and removed.phone not in (
            select entry.phone from public.legacy_phone_entries(new.other_phones) as entry
        )
        and (
            (
                (removed.role_person_type_id is null or new.family_id is null)
                and c.person_id = new.id
                and c.phone = removed.phone
            )
            or (
                c.person_id is null
                and c.family_id = new.family_id
                and c.person_type_id = removed.role_person_type_id
                and c.phone = removed.phone
            )
        );

    insert into public.contacts (person_id, label, phone)
    select distinct on (added.phone) new.id, added.label, added.phone::public.e164_phone
    from (
        select * from public.legacy_phone_entries(new.other_phones)
        except
        select * from public.legacy_phone_entries(old_phones)
    ) as added
    where (added.role_person_type_id is null or new.family_id is null)
        and added.phone is distinct from new_main
    order by added.phone, added.label
    on conflict (person_id, phone) do update set label = excluded.label;

    insert into public.contacts (family_id, person_type_id, phone)
    select distinct new.family_id, added.role_person_type_id, added.phone::public.e164_phone
    from (
        select * from public.legacy_phone_entries(new.other_phones)
        except
        select * from public.legacy_phone_entries(old_phones)
    ) as added
    where added.role_person_type_id is not null
        and new.family_id is not null
        and not exists (
            select 1 from public.resolved_contacts as relative
            where relative.effective_family_id = new.family_id
                and relative.effective_person_type_id = added.role_person_type_id
                and relative.phone = added.phone
        )
    on conflict do nothing;

    perform public.legacy_refresh_persons_phones(array[new.id], '{}');

    return null;
end;
$$;

drop trigger if exists legacy_sync_contacts_on_insert on public.persons;
create trigger legacy_sync_contacts_on_insert
after insert on public.persons
for each row
execute function public.legacy_sync_contacts_from_person_phones();

drop trigger if exists legacy_sync_contacts_on_update on public.persons;
create trigger legacy_sync_contacts_on_update
after update of main_phone, other_phones on public.persons
for each row
when (
    old.main_phone is distinct from new.main_phone
    or old.other_phones is distinct from new.other_phones
)
execute function public.legacy_sync_contacts_from_person_phones();

create or replace view public.families_admins_phones as
select
    first_per_role.effective_family_id as family_id,
    json_object_agg(
        admin_type.name, first_per_role.phone order by admin_type.order
    )
        as aggregated_phones
from (
    select distinct on (rc.effective_family_id, rc.effective_person_type_id)
        rc.effective_family_id,
        rc.effective_person_type_id,
        rc.phone::text as phone
    from public.resolved_contacts as rc
    where rc.effective_family_id is not null
    order by
        rc.effective_family_id asc,
        rc.effective_person_type_id asc,
        rc.is_main_phone desc,
        rc.created_at asc
) as first_per_role
inner join public.person_types as admin_type
    on
        first_per_role.effective_person_type_id = admin_type.id
        and admin_type.is_family_admin
group by first_per_role.effective_family_id;
