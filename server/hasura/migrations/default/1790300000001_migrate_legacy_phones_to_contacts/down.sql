do $$
declare
    unheld_contacts bigint;
begin
    select count(*) into unheld_contacts
    from public.contacts as c
    where not exists (
        select 1 from public.persons as p
        where (p.id = c.person_id or (c.person_id is null and p.family_id = c.family_id))
            and (
                public.legacy_normalize_phone(p.main_phone) = c.phone
                or exists (
                    select 1 from public.legacy_phone_entries(p.other_phones) as entry
                    where entry.phone = c.phone
                )
            )
    );

    if unheld_contacts > 0 then
        raise exception 'Cannot roll back: % contact(s) have no copy in persons.main_phone or persons.other_phones',
            unheld_contacts;
    end if;
end $$;

delete from public.contacts;
drop function if exists public.legacy_phone_entries(jsonb);
drop function if exists public.legacy_phone_label_person_type_name(text);
drop function if exists public.legacy_normalize_phone(text);
