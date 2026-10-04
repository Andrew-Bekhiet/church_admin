drop trigger if exists merge_contact_into_same_owner_phone on public.contacts;
drop function if exists public.merge_contact_into_same_owner_phone();
drop trigger if exists keep_one_main_contact_per_owner on public.contacts;
drop function if exists public.keep_one_main_contact_per_owner();

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
    end if;

    return new;
end;
$$;
