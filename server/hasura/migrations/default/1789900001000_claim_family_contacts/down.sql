drop view if exists public.main_contacts;
drop view if exists public.resolved_contacts;
drop trigger if exists persons_claim_family_contacts on public.persons;
drop function if exists public.claim_family_contacts_on_person_change();
drop trigger if exists contacts_claim_before_insert on public.contacts;
drop function if exists public.claim_contact_on_insert();
drop function if exists public.claim_family_contacts(uuid, uuid);
drop function if exists public.sole_live_person_of_family_type(uuid, uuid);
