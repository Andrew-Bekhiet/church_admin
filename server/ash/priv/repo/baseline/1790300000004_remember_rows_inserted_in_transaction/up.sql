create or replace function public.remember_row_inserted_in_transaction()
returns trigger
language plpgsql
as $$
declare
    setting_name text := 'church_admin.inserted_' || tg_table_name;
begin
    if current_setting('hasura.user', true) is null then
        return null;
    end if;

    perform set_config(
        setting_name,
        coalesce(current_setting(setting_name, true), '') || new.id::text || ',',
        true
    );

    return null;
end;
$$;

drop trigger if exists remember_person_inserted_in_transaction
on public.persons;
create trigger remember_person_inserted_in_transaction
after insert on public.persons
for each row
execute function public.remember_row_inserted_in_transaction();

drop trigger if exists remember_family_inserted_in_transaction
on public.families;
create trigger remember_family_inserted_in_transaction
after insert on public.families
for each row
execute function public.remember_row_inserted_in_transaction();

create or replace function public.person_inserted_in_current_transaction(
    person public.persons
)
returns boolean
language sql
stable
as $$
    select position(
        person.id::text || ','
        in coalesce(current_setting('church_admin.inserted_persons', true), '')
    ) > 0
$$;

create or replace function public.family_inserted_in_current_transaction(
    family public.families
)
returns boolean
language sql
stable
as $$
    select position(
        family.id::text || ','
        in coalesce(current_setting('church_admin.inserted_families', true), '')
    ) > 0
$$;
