create or replace view public.families_admins_phones as
select
    p.family_id,
    json_object_agg(pt.name, p.main_phone order by pt.is_family_admin desc, pt."order") as aggregated_phones
from public.persons as p
join public.person_types as pt on pt.id = p.person_type_id
where pt.is_family_admin is true and p.main_phone is not null and p.main_phone <> ''
group by p.family_id
order by count(p.main_phone) desc;

drop trigger if exists persons_sync_legacy_phones_on_update on public.persons;
drop trigger if exists persons_sync_legacy_phones_on_insert on public.persons;
drop function if exists public.legacy_phones_sync_from_person();
drop trigger if exists contacts_sync_legacy_phones on public.contacts;
drop function if exists public.legacy_phones_sync_from_contact();
drop function if exists public.legacy_phones_refresh(uuid, uuid);
drop function if exists public.legacy_phones_of(uuid);
drop function if exists public.legacy_phones_entries(uuid);
drop function if exists public.legacy_phones_family_contacts(uuid);
drop function if exists public.legacy_phones_sync_skipped();
drop function if exists public.family_admin_type_of_phone_label(text);
drop function if exists public.legacy_phones_fold_label(text);
drop function if exists public.person_type_phone_label(text);
drop function if exists public.phone_to_legacy(text);
drop function if exists public.phone_to_e164(text);
