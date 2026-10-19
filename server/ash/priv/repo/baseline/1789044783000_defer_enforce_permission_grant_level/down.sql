drop trigger check_users_permissions_level_consistency on auth.users_permissions;

create trigger check_users_permissions_level_consistency
before insert or update on auth.users_permissions
for each row execute function auth.check_users_permissions_level_consistency();
