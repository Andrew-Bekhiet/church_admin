drop trigger if exists set_public_contacts_updated_at on public.contacts;
create trigger set_public_contacts_updated_at
before update on public.contacts
for each row execute function public.set_current_timestamp_updated_at();

create or replace function public.claim_contact_for_sole_family_member()
returns trigger
language plpgsql
as $$
declare
    sole_member_id uuid;
begin
    select (array_agg(p.id))[1] into sole_member_id
    from public.persons as p
    where p.family_id = new.family_id
        and p.person_type_id = new.person_type_id
        and p.deleted_at is null
    having count(*) = 1;

    if sole_member_id is not null then
        new.person_id := sole_member_id;
        new.family_id := null;
        new.person_type_id := null;
        new.is_main_phone := new.is_main_phone and not exists (
            select 1 from public.contacts as own
            where own.person_id = sole_member_id and own.is_main_phone
        );
    end if;

    return new;
end;
$$;

drop trigger if exists claim_contact_for_sole_family_member on public.contacts;
create trigger claim_contact_for_sole_family_member
before insert on public.contacts
for each row
when (new.person_id is null)
execute function public.claim_contact_for_sole_family_member();

create or replace function public.keep_one_main_contact_per_owner()
returns trigger
language plpgsql
as $$
begin
    update public.contacts as other
    set is_main_phone = false
    where other.is_main_phone
        and other.id <> new.id
        and (
            other.person_id = new.person_id
            or (
                other.person_id is null
                and new.person_id is null
                and other.family_id = new.family_id
                and other.person_type_id = new.person_type_id
            )
        );

    return new;
end;
$$;

drop trigger if exists keep_one_main_contact_per_owner on public.contacts;
create trigger keep_one_main_contact_per_owner
before insert or update of is_main_phone on public.contacts
for each row
when (new.is_main_phone)
execute function public.keep_one_main_contact_per_owner();

create or replace function public.merge_contact_into_same_owner_phone()
returns trigger
language plpgsql
as $$
begin
    update public.contacts as existing
    set
        label = coalesce(new.label, existing.label),
        is_main_phone = existing.is_main_phone or new.is_main_phone
    where existing.phone = new.phone
        and (
            existing.person_id = new.person_id
            or (
                existing.person_id is null
                and new.person_id is null
                and existing.family_id = new.family_id
                and existing.person_type_id = new.person_type_id
            )
        );

    if found then
        return null;
    end if;

    return new;
end;
$$;

drop trigger if exists merge_contact_into_same_owner_phone on public.contacts;
create trigger merge_contact_into_same_owner_phone
before insert on public.contacts
for each row
execute function public.merge_contact_into_same_owner_phone();

create or replace function public.claim_family_contacts_for_sole_member()
returns trigger
language plpgsql
as $$
begin
    if new.family_id is null
        or new.person_type_id is null
        or new.deleted_at is not null
        or (
            select count(*) from public.persons as p
            where p.family_id = new.family_id
                and p.person_type_id = new.person_type_id
                and p.deleted_at is null
        ) <> 1 then
        return null;
    end if;

    delete from public.contacts as unclaimed
    where unclaimed.person_id is null
        and unclaimed.family_id = new.family_id
        and unclaimed.person_type_id = new.person_type_id
        and exists (
            select 1 from public.contacts as own
            where own.person_id = new.id and own.phone = unclaimed.phone
        );

    update public.contacts
    set
        person_id = new.id,
        family_id = null,
        person_type_id = null,
        is_main_phone = is_main_phone and not exists (
            select 1 from public.contacts as own
            where own.person_id = new.id and own.is_main_phone
        )
    where person_id is null
        and family_id = new.family_id
        and person_type_id = new.person_type_id;

    return null;
end;
$$;

drop trigger if exists claim_family_contacts_on_insert on public.persons;
create trigger claim_family_contacts_on_insert
after insert on public.persons
for each row
execute function public.claim_family_contacts_for_sole_member();

drop trigger if exists claim_family_contacts_on_update on public.persons;
create trigger claim_family_contacts_on_update
after update of family_id, person_type_id, deleted_at on public.persons
for each row
when (
    old.family_id is distinct from new.family_id
    or old.person_type_id is distinct from new.person_type_id
    or old.deleted_at is distinct from new.deleted_at
)
execute function public.claim_family_contacts_for_sole_member();
