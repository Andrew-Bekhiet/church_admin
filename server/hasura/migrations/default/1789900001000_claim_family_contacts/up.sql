create or replace function public.sole_live_person_of_family_type(p_family_id uuid, p_person_type_id uuid)
returns uuid
language sql
stable
as $$
    select (array_agg(p.id))[1]
    from public.persons as p
    where p.family_id = p_family_id
        and p.person_type_id = p_person_type_id
        and p.deleted_at is null
    having count(*) = 1;
$$;

create or replace function public.claim_family_contacts(p_family_id uuid, p_person_type_id uuid)
returns void
language plpgsql
as $$
declare
    v_person_id uuid := public.sole_live_person_of_family_type(p_family_id, p_person_type_id);
    v_has_main boolean;
begin
    if v_person_id is null then
        return;
    end if;

    delete from public.contacts as unclaimed
    where unclaimed.person_id is null
        and unclaimed.family_id = p_family_id
        and unclaimed.person_type_id = p_person_type_id
        and exists (
            select 1
            from public.contacts as owned
            where owned.person_id = v_person_id
                and owned.phone = unclaimed.phone
        );

    v_has_main := exists (
        select 1
        from public.contacts as owned
        where owned.person_id = v_person_id and owned.is_main_phone
    );

    update public.contacts
    set
        person_id = v_person_id,
        family_id = null,
        person_type_id = null,
        is_main_phone = is_main_phone and not v_has_main
    where person_id is null
        and family_id = p_family_id
        and person_type_id = p_person_type_id;
end;
$$;

create or replace function public.claim_contact_on_insert()
returns trigger
language plpgsql
as $$
declare
    v_person_id uuid := coalesce(new.person_id, public.sole_live_person_of_family_type(new.family_id, new.person_type_id));
    v_existing_id uuid;
begin
    select c.id
    into v_existing_id
    from public.contacts as c
    where c.id <> new.id
        and c.phone = new.phone
        and (
            (v_person_id is not null and c.person_id = v_person_id)
            or (
                v_person_id is null
                and c.person_id is null
                and c.family_id = new.family_id
                and c.person_type_id = new.person_type_id
            )
        );

    if v_existing_id is not null then
        if new.is_main_phone then
            update public.contacts as c
            set is_main_phone = false
            where c.is_main_phone
                and c.id <> v_existing_id
                and (
                    (v_person_id is not null and c.person_id = v_person_id)
                    or (
                        v_person_id is null
                        and c.person_id is null
                        and c.family_id = new.family_id
                        and c.person_type_id = new.person_type_id
                    )
                );
        end if;

        update public.contacts as c
        set
            label = coalesce(c.label, new.label),
            is_main_phone = c.is_main_phone or new.is_main_phone
        where c.id = v_existing_id;

        return null;
    end if;

    if new.person_id is null and v_person_id is not null then
        new.is_main_phone := new.is_main_phone and not exists (
            select 1
            from public.contacts as owned
            where owned.person_id = v_person_id and owned.is_main_phone
        );
        new.person_id := v_person_id;
        new.family_id := null;
        new.person_type_id := null;
    end if;

    return new;
end;
$$;

create or replace trigger contacts_claim_before_insert
before insert on public.contacts
for each row
execute function public.claim_contact_on_insert();

create or replace function public.assert_unclaimed_contact_type_is_family_admin()
returns trigger
language plpgsql
as $$
begin
    if not coalesce(
        (select pt.is_family_admin from public.person_types as pt where pt.id = new.person_type_id),
        false
    ) then
        raise exception 'contacts/unclaimed-type-not-family-admin' using errcode = '23514';
    end if;

    return new;
end;
$$;

create or replace trigger contacts_guard_unclaimed_type
before insert or update of person_id, person_type_id on public.contacts
for each row
when (new.person_id is null)
execute function public.assert_unclaimed_contact_type_is_family_admin();

create or replace function public.claim_family_contacts_on_person_change()
returns trigger
language plpgsql
as $$
begin
    perform public.claim_family_contacts(new.family_id, new.person_type_id);

    if tg_op = 'UPDATE'
        and (old.family_id, old.person_type_id) is distinct from (new.family_id, new.person_type_id) then
        perform public.claim_family_contacts(old.family_id, old.person_type_id);
    end if;

    return null;
end;
$$;

create or replace trigger persons_claim_family_contacts_on_insert
after insert on public.persons
for each row
execute function public.claim_family_contacts_on_person_change();

create or replace trigger persons_claim_family_contacts_on_update
after update of family_id, person_type_id, deleted_at on public.persons
for each row
when (
    (old.family_id, old.person_type_id, old.deleted_at)
    is distinct from (new.family_id, new.person_type_id, new.deleted_at)
)
execute function public.claim_family_contacts_on_person_change();

create or replace view public.resolved_contacts as
select
    c.id,
    c.person_id,
    c.family_id,
    c.person_type_id,
    c.label,
    c.phone,
    c.is_main_phone,
    c.created_at,
    c.updated_at,
    coalesce(c.family_id, p.family_id) as effective_family_id,
    coalesce(c.person_type_id, p.person_type_id) as effective_person_type_id
from public.contacts as c
left join public.persons as p on p.id = c.person_id and p.deleted_at is null;

create or replace view public.main_contacts as
select
    c.id,
    c.person_id,
    c.phone
from public.contacts as c
where c.is_main_phone and c.person_id is not null;
