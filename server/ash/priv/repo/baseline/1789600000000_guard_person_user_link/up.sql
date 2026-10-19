create or replace function public.assert_caller_can_change_person_user_link()
returns trigger
language plpgsql
security definer
set search_path to 'pg_catalog', 'auth', 'public'
as $function$
declare
    v_session json := nullif(current_setting('hasura.user', true), '')::json;
    v_caller uuid := nullif(v_session ->> 'x-hasura-user-id', '')::uuid;
begin
    if v_caller is null then
        return new;
    end if;

    if exists (
        select 1
        from auth.users_data as u
        where u.uid in (old.uid, new.uid)
            and u.uid <> v_caller
            and not auth.user_can_edit_user(u, v_session)
    ) then
        raise exception 'person/user-link-not-permitted'
            using errcode = '42501';
    end if;

    return new;
end;
$function$;

drop trigger if exists assert_caller_can_change_person_user_link on public.persons;

create trigger assert_caller_can_change_person_user_link
before update of uid on public.persons
for each row
when (old.uid is distinct from new.uid)
execute function public.assert_caller_can_change_person_user_link();
