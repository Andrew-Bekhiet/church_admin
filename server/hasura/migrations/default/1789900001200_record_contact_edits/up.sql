create or replace function history.record_contact_edit()
returns trigger
language plpgsql
security definer
set search_path = ''
as $$
declare
    v_contact public.contacts := case when tg_op = 'DELETE' then old else new end;
begin
    if coalesce(current_setting('church_admin.skip_contact_edit_history', true), '') = 'on' then
        return null;
    end if;

    if v_contact.person_id is not null then
        insert into history.edit_history ("table", record_id)
        select 'persons', p.id
        from public.persons as p
        where p.id = v_contact.person_id;
    else
        insert into history.edit_history ("table", record_id)
        select 'families', f.id
        from public.families as f
        where f.id = v_contact.family_id;
    end if;

    return null;
end;
$$;

create or replace trigger contacts_record_edit
after insert or update or delete on public.contacts
for each row
execute function history.record_contact_edit();
