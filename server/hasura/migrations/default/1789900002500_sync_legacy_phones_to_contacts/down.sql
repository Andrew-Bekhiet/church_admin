create or replace trigger persons_sync_legacy_phones_on_update
after update of family_id, person_type_id, deleted_at on public.persons
for each row
when (
    (old.family_id, old.person_type_id, old.deleted_at)
    is distinct from (new.family_id, new.person_type_id, new.deleted_at)
)
execute function public.legacy_phones_sync_from_person();

create or replace function public.legacy_phones_sync_from_person()
returns trigger
language plpgsql
as $$
begin
    if public.legacy_phones_sync_skipped() then
        return null;
    end if;

    perform set_config('church_admin.legacy_phones_syncing', 'on', true);

    perform public.legacy_phones_refresh(new.id, new.family_id);

    if tg_op = 'UPDATE' and old.family_id is distinct from new.family_id then
        perform public.legacy_phones_refresh(null, old.family_id);
    end if;

    perform set_config('church_admin.legacy_phones_syncing', 'off', true);

    return null;
end;
$$;

drop function if exists public.legacy_phones_reverse(public.persons, text, jsonb);
drop function if exists public.legacy_phones_to_e164_or_raise(text);
drop function if exists public.legacy_phones_canonical(text);
