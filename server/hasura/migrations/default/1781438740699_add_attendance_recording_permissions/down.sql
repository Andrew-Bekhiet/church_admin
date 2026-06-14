DELETE FROM auth.permissions
WHERE name = 'recordAllAttendance' OR name = 'changeOldAttendance';

INSERT INTO auth.permissions (name) VALUES ('recordHistory'), ('changeOldHistory');
