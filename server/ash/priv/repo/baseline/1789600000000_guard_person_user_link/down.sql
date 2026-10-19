drop trigger if exists assert_caller_can_change_person_user_link on public.persons;

drop function if exists public.assert_caller_can_change_person_user_link();
