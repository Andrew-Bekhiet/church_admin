drop function if exists public.family_inserted_in_current_transaction(public.families);
drop function if exists public.person_inserted_in_current_transaction(public.persons);
drop trigger if exists remember_family_inserted_in_transaction on public.families;
drop trigger if exists remember_person_inserted_in_transaction on public.persons;
drop function if exists public.remember_row_inserted_in_transaction();
