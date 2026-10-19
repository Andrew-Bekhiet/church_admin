CREATE FUNCTION "history"."edit_history_trigger"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
declare
    temp_record_id uuid;

begin
    if TG_TABLE_NAME = any(
        array [ 'persons_groups' :: name,
        'persons_services' :: name,
        'persons_tags' :: name ]
    ) then
    if TG_TABLE_NAME = 'persons_tags' :: name then temp_record_id := coalesce(new."tag_id", old."tag_id");

    elsif TG_TABLE_NAME = 'persons_services' :: name then temp_record_id := coalesce(new."service_id", old."service_id");

    elsif TG_TABLE_NAME = 'persons_groups' :: name then temp_record_id := coalesce(new."group_id", old."group_id");

    end if;

    INSERT INTO
        history.edit_history("table", record_id)
    SELECT
        CASE
            WHEN TG_TABLE_NAME = 'persons_tags' :: name THEN 'tags' :: name
            WHEN TG_TABLE_NAME = 'persons_services' :: name THEN 'services' :: name
            WHEN TG_TABLE_NAME = 'persons_groups' :: name THEN 'groups' :: name
        end,
        temp_record_id;

    INSERT INTO
        history.edit_history("table", record_id)
    SELECT
        'persons' :: name,
        coalesce(new."person_id", old."person_id");

elsif TG_TABLE_NAME = any(
    array [ ('users_permissions' :: name),
    ('users_data' :: name),
    ('users_admin_on' :: name),
    ('families_families' :: name) ]
) then
    if TG_TABLE_NAME = 'users_permissions' :: name
    or TG_TABLE_NAME = 'users_admin_on' :: name
    or TG_TABLE_NAME = 'users_data' :: name then temp_record_id := coalesce(new .uid, old .uid);

    elsif TG_TABLE_NAME = 'families_families' :: name then temp_record_id := coalesce(new .parent_family_id, old .parent_family_id);

    end if;

    INSERT INTO
        history.edit_history("table", record_id)
    SELECT
        CASE
            WHEN TG_TABLE_NAME = 'users_permissions' :: name THEN 'users' :: name
            WHEN TG_TABLE_NAME = 'users_admin_on' :: name THEN 'users' :: name
            WHEN TG_TABLE_NAME = 'users_data' :: name THEN 'users' :: name
            WHEN TG_TABLE_NAME = 'families_families' :: name THEN 'families' :: name
        END,
        temp_record_id;

else
    INSERT INTO
        history.edit_history("table", record_id)
    SELECT
        TG_TABLE_NAME,
        coalesce(
            (
                (
                    row_to_json(NEW) ->>(
                        SELECT
                            attname
                        FROM
                            pg_index
                            JOIN pg_attribute ON attrelid = indrelid
                            AND attnum = ANY(indkey)
                        WHERE
                            indrelid = TG_RELID
                            AND indisprimary
                    )
                )
            ) :: uuid,
            (
                (
                    row_to_json(old) ->>(
                        SELECT
                            attname
                        FROM
                            pg_index
                            JOIN pg_attribute ON attrelid = indrelid
                            AND attnum = ANY(indkey)
                        WHERE
                            indrelid = TG_RELID
                            AND indisprimary
                    )
                )
            ) :: uuid
        );

end if;

return new;

end;

$$;

CREATE FUNCTION "public"."set_current_timestamp_updated_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
declare _new record;
begin _new := new;
_new."updated_at" = now();
return _new;
end;
$$;

CREATE OR REPLACE FUNCTION soft_delete_trigger()
RETURNS TRIGGER AS $$
DECLARE
    hasura_user_session text := current_setting('hasura.user'::text, true);
BEGIN
    -- If hasura.user is not set (e.g., admin operation from psql)
    -- or if the role is 'admin', allow the hard delete to proceed.
    IF hasura_user_session IS NULL OR ((hasura_user_session::json) ->> 'x-hasura-role') = 'admin' THEN
        RETURN OLD;
    END IF;

    -- For other users, perform a soft delete.
    -- Update the row to mark it as deleted
    EXECUTE format('UPDATE %I SET deleted_at = now(), deleted_by = $1 WHERE id = $2', TG_TABLE_NAME)
    USING ((hasura_user_session::json) ->> 'x-hasura-user-id')::uuid, OLD.id;

    -- Cancel the original DELETE operation
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
