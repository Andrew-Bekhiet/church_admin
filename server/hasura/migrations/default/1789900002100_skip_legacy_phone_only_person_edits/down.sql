drop trigger if exists edit_history_on_update on public.persons;
drop trigger if exists edit_history on public.persons;

create trigger edit_history
after insert or update on public.persons
for each row
execute function history.edit_history_trigger();
