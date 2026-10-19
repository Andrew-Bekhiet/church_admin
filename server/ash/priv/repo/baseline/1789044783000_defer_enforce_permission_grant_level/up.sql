drop trigger check_users_permissions_level_consistency on auth.users_permissions;

create constraint trigger check_users_permissions_level_consistency
after insert or update
on auth.users_permissions
deferrable initially deferred
for each row
execute procedure auth.check_users_permissions_level_consistency();
