drop trigger if exists claim_family_contacts_on_update on public.persons;
drop trigger if exists claim_family_contacts_on_insert on public.persons;
drop function if exists public.claim_family_contacts_for_sole_member();
drop view if exists public.persons_main_contacts;
drop view if exists public.resolved_contacts;
drop table if exists public.contacts;
drop function if exists public.claim_contact_for_sole_family_member();
drop domain if exists public.e164_phone;
