create or replace function public.mark_linked_person_as_servant()
returns trigger
language plpgsql
as $function$
begin
    if new.uid is not null then
        new.is_servant := true;
    end if;

    return new;
end;
$function$;

drop trigger if exists mark_linked_person_as_servant on public.persons;

create trigger mark_linked_person_as_servant
before insert or update of uid on public.persons
for each row
execute function public.mark_linked_person_as_servant();

update public.persons
set is_servant = true
where uid is not null and is_servant is not true;
