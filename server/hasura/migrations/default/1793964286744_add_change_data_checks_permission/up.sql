insert into auth.permissions (name)
values ('changeDataChecks')
on conflict (name) do nothing;

insert into auth.users_permissions (uid, permission)
select
    uid,
    'changeDataChecks' as permission
from auth.users_permissions
where permission = 'writeAllData'
on conflict (uid, permission) do nothing;
