delete from public.contacts;
drop function if exists public.legacy_phone_entries(jsonb);
drop function if exists public.legacy_phone_label_person_type_name(text);
drop function if exists public.legacy_normalize_phone(text);
