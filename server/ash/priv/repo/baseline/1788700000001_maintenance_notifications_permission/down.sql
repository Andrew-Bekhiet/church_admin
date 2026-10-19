delete from auth.users_permissions
where permission = 'maintenanceNotifications';

delete from auth.permissions
where name = 'maintenanceNotifications';
