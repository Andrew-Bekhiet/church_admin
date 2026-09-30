delete from public.contacts;
drop function if exists public.legacy_phone_entries(jsonb);
drop function if exists public.legacy_normalize_phone(text);
