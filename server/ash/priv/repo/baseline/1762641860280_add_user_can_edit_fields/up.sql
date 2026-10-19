drop function if exists "public"."user_allowed_to_write_area";
drop function if exists "public"."user_allowed_to_read_area";
drop function if exists "public"."user_allowed_to_write_class";
drop function if exists "public"."user_allowed_to_read_class";
drop function if exists "public"."user_allowed_to_write_family";
drop function if exists "public"."user_allowed_to_read_family";
drop function if exists "public"."user_allowed_to_write_group";
drop function if exists "public"."user_allowed_to_read_group";
drop function if exists "public"."user_allowed_to_write_person";
drop function if exists "public"."user_allowed_to_read_person";
drop function if exists "public"."user_allowed_to_write_service";
drop function if exists "public"."user_allowed_to_read_service";
drop function if exists "public"."user_allowed_to_write_store";
drop function if exists "public"."user_allowed_to_read_store";
drop function if exists "public"."user_allowed_to_write_street";
drop function if exists "public"."user_allowed_to_read_street";

CREATE OR REPLACE FUNCTION "auth"."user_can_edit_area"("area" "public"."areas", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT EXISTS(
        SELECT 1
        FROM auth.users_permissions_by_entity_id
        WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND allow_edit is true
            AND (entity_type = 'any' AND entity_id IS NULL
              OR entity_type = 'area' AND entity_id = area.id
            )
    );
$$;


CREATE OR REPLACE FUNCTION "auth"."user_can_edit_class"("_class" "public"."classes", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT EXISTS(
        SELECT 1
        FROM auth.users_permissions_by_entity_id
        WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND allow_edit is true
            AND (entity_type = 'any' AND entity_id IS NULL
              OR entity_type = 'class' AND entity_id = _class.id
            )
    );
$$;


CREATE OR REPLACE FUNCTION "auth"."user_can_edit_family"("family" "public"."families", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT EXISTS(
        SELECT 1
        FROM auth.users_permissions_by_entity_id
        WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND allow_edit is true
            AND (entity_type = 'any' AND entity_id IS NULL
              OR entity_type = 'family' AND entity_id = family.id
            )
    );
$$;


CREATE OR REPLACE FUNCTION "auth"."user_can_edit_group"("_group" "public"."groups", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT EXISTS(
        SELECT 1
        FROM auth.users_permissions_by_entity_id
        WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND allow_edit is true
            AND (entity_type = 'any' AND entity_id IS NULL
              OR entity_type = 'group' AND entity_id = _group.id
            )
    );
$$;


CREATE OR REPLACE FUNCTION "auth"."user_can_edit_person"("person" "public"."persons", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT person.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
        OR EXISTS(
            SELECT 1
            FROM auth.users_permissions_by_entity_id
            WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND allow_edit is true
                AND (entity_type = 'any' AND entity_id IS NULL
                  OR entity_type = 'person' AND entity_id = person.id
                )
        );
$$;


CREATE OR REPLACE FUNCTION "auth"."user_can_edit_service"("service" "public"."services", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT EXISTS(
        SELECT 1
        FROM auth.users_permissions_by_entity_id
        WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND allow_edit is true
            AND (entity_type = 'any' AND entity_id IS NULL
              OR entity_type = 'service' AND entity_id = service.id
            )
    );
$$;


CREATE OR REPLACE FUNCTION "auth"."user_can_edit_store"("store" "public"."stores", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT EXISTS(
        SELECT 1
        FROM auth.users_permissions_by_entity_id
        WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND allow_edit is true
            AND (entity_type = 'any' AND entity_id IS NULL
              OR entity_type = 'store' AND entity_id = store.id
            )
    );
$$;


CREATE OR REPLACE FUNCTION "auth"."user_can_edit_street"("street" "public"."streets", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT EXISTS(
        SELECT 1
        FROM auth.users_permissions_by_entity_id
        WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND allow_edit is true
            AND (entity_type = 'any' AND entity_id IS NULL
              OR entity_type = 'street' AND entity_id = street.id
            )
    );
$$;

CREATE OR REPLACE FUNCTION "auth"."user_can_edit_user"("user_data" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT EXISTS(
        SELECT 1
        FROM auth.users_permissions_by_entity_id
        WHERE uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND allow_edit is true
            AND (entity_type = 'any' AND entity_id IS NULL
              OR entity_type = 'user' AND entity_id = "user_data".uid
            )
    );
$$;
