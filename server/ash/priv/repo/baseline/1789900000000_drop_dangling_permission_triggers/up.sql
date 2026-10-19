drop trigger if exists check_persons_tags_insertion on public.persons_tags;
drop trigger if exists check_store_admin_family_update on public.stores;

drop function if exists public.check_persons_tags_insertion();
drop function if exists public.check_store_admin_family_update();
drop function if exists public.check_persons_insertion();
drop function if exists public.check_persons_groups_insertion();
drop function if exists public.check_persons_services_insertion();
