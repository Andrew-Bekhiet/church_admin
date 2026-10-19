insert into auth.permissions (name)
values ('maintenanceNotifications')
on conflict (name) do nothing;
