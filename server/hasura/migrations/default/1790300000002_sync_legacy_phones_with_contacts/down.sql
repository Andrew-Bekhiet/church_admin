create or replace view public.families_admins_phones as
select
    p.family_id,
    json_object_agg(
        pt.name, p.main_phone order by pt.is_family_admin desc, pt.order asc
    ) as aggregated_phones
from public.persons as p
inner join public.person_types as pt on p.person_type_id = pt.id
where
    pt.is_family_admin is true
    and p.main_phone is not null
    and p.main_phone <> ''
group by p.family_id
order by count(p.main_phone) desc;

drop trigger if exists legacy_sync_contacts_on_update on public.persons;
drop trigger if exists legacy_sync_contacts_on_insert on public.persons;
drop function if exists public.legacy_sync_contacts_from_person_phones();
drop trigger if exists legacy_sync_family_phones_on_update on public.persons;
drop trigger if exists legacy_sync_family_phones_on_insert on public.persons;
drop function if exists public.legacy_sync_family_phones();
drop trigger if exists legacy_sync_persons_phones on public.contacts;
drop function if exists public.legacy_sync_persons_phones_from_contacts();
drop function if exists public.legacy_refresh_persons_phones(uuid [], uuid []);
drop view if exists public.legacy_persons_phones;
