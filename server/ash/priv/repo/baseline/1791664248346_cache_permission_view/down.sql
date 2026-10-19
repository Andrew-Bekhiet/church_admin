drop trigger if exists sync_users_permissions_by_entity_id_cache
on public.persons_services;
drop trigger if exists sync_users_permissions_by_entity_id_cache
on public.persons_groups;
drop trigger if exists sync_users_permissions_by_entity_id_cache
on public.persons;
drop trigger if exists sync_users_permissions_by_entity_id_cache
on public.classes;
drop trigger if exists sync_users_permissions_by_entity_id_cache
on public.areas_streets;
drop trigger if exists sync_users_permissions_by_entity_id_cache
on public.addresses;
drop trigger if exists sync_users_permissions_by_entity_id_cache
on auth.users_permissions;
drop trigger if exists sync_users_permissions_by_entity_id_cache
on auth.users_data;
drop trigger if exists sync_users_permissions_by_entity_id_cache
on auth.users_admin_on;

drop function if exists auth.sync_users_permissions_by_entity_id_cache();

drop table if exists auth.users_permissions_by_entity_id_cache;
