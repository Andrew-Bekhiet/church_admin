DELETE FROM auth.users_permissions
WHERE permission = 'recordAllHistory' OR permission = 'changeOldHistory';

DELETE FROM auth.permissions
WHERE name = 'recordHistory' OR name = 'changeOldHistory';

INSERT INTO auth.permissions (name) VALUES ('recordAllAttendance');
