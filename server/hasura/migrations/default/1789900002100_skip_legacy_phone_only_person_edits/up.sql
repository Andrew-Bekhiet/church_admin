drop trigger if exists edit_history on public.persons;

create trigger edit_history
after insert on public.persons
for each row
execute function history.edit_history_trigger();

create trigger edit_history_on_update
after update on public.persons
for each row
when (
    to_jsonb(old) - 'main_phone' - 'other_phones'
    is distinct from to_jsonb(new) - 'main_phone' - 'other_phones'
)
execute function history.edit_history_trigger();
