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
