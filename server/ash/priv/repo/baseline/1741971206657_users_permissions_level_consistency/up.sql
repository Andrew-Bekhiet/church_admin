CREATE OR REPLACE FUNCTION auth.check_users_permissions_level_consistency()
RETURNS trigger
LANGUAGE plpgsql
COST 100
STABLE NOT LEAKPROOF
AS $BODY$
DECLARE
    hasura_session JSON;
BEGIN
    -- manageAllUsers requires writeAllData requires readAllData
    IF new.permission = 'manageAllUsers' THEN
        IF NOT EXISTS (
            SELECT 1
            FROM auth.users_permissions
            WHERE uid = new.uid AND permission = 'writeAllData'
        ) THEN
            RAISE EXCEPTION 'manageAllUsers permission requires writeAllData';
        ELSIF NOT EXISTS (
            SELECT 1
            FROM auth.users_permissions
            WHERE uid = new.uid AND permission = 'readAllData'
        ) THEN
            RAISE EXCEPTION 'manageAllUsers permission requires both writeAllData and readAllData';
        END IF;

    ELSIF new.permission = 'writeAllData' THEN
        IF NOT EXISTS (
            SELECT 1
            FROM auth.users_permissions
            WHERE uid = new.uid AND permission = 'readAllData'
        ) THEN
            RAISE EXCEPTION 'writeAllData permission requires readAllData';
        END IF;
    END IF;
    
    RETURN NEW;
END;
$BODY$;

ALTER TABLE auth.users_admin_on
DROP CONSTRAINT users_admin_on_admin_edit_logic,
ADD CONSTRAINT users_admin_on_admin_edit_logic CHECK (
    (NOT COALESCE(service_allow_edit, false) OR admin_on_service IS NOT NULL) AND 
    (NOT COALESCE(group_allow_edit, false) OR admin_on_group IS NOT NULL) AND 
    (NOT COALESCE(area_allow_edit, false) OR admin_on_area IS NOT NULL) AND
    (NOT COALESCE(service_admin_on_users, false) OR COALESCE(service_allow_edit, false)) AND
    (NOT COALESCE(group_admin_on_users, false) OR COALESCE(group_allow_edit, false)) AND
    (NOT COALESCE(area_admin_on_users, false) OR COALESCE(area_allow_edit, false))
);

ALTER TABLE auth.users_admin_on
DROP CONSTRAINT users_admin_on_area_service_group,
ADD CONSTRAINT users_admin_on_area_service_group CHECK (
    ((admin_on_area IS NOT NULL)::int + (admin_on_service IS NOT NULL)::int + (admin_on_group IS NOT NULL)::int) = 1
);

CREATE TRIGGER check_users_permissions_level_consistency
BEFORE INSERT OR UPDATE
ON auth.users_permissions
FOR EACH ROW
EXECUTE FUNCTION auth.check_users_permissions_level_consistency();
