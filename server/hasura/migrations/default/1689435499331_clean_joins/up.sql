CREATE OR REPLACE FUNCTION "public"."check_person_group_service_rel"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
    hasura_session json;
BEGIN
    IF (EXISTS (
        SELECT
            1
        FROM
            "groups" g
	    JOIN persons_services ps ON g.service_id = ps.service_id AND
		ps.person_id = NEW.person_id
        WHERE
            g.id = NEW.group_id)) THEN
        RETURN new;
    ELSE
        RAISE EXCEPTION 'Person must be in the group parent service to be inserted in the group';
    END IF;
END;
$$;

CREATE OR REPLACE FUNCTION "public"."persons_groups_check"() RETURNS "trigger"
    LANGUAGE "plpgsql" STABLE
    AS $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM "groups" AS g
        JOIN persons_services AS ps ON g.service_id = ps.service_id
        WHERE g.id = NEW.group_id AND ps.person_id = NEW.person_id
        LIMIT 1
    ) THEN
        RETURN new;
    ELSE
        RAISE EXCEPTION 'Person must be in the same service as the group';
    END IF;
END;
$$;

CREATE OR REPLACE FUNCTION "public"."persons_groups_check"("person_group" "public"."persons_groups", "hasura_session" "json") RETURNS boolean
    LANGUAGE "plpgsql" STABLE
    AS $$
BEGIN
    RETURN EXISTS(
        SELECT
            1
        FROM
            "groups" AS g
            JOIN persons_services AS ps ON g.service_id = ps.service_id
        WHERE
            g.id = NEW.group_id
            AND ps.person_id = NEW.person_id
        LIMIT 1);
END;
$$;


CREATE OR REPLACE FUNCTION "public"."user_allowed_to_change_user_data"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        _user.uid <>(hasura_session ->> 'x-hasura-user-id')::uuid
        AND(auth.user_can_manage_all_users((hasura_session ->> 'x-hasura-user-id')::uuid)
            OR(EXISTS(
                    SELECT
                        1
                    FROM
                        auth.users_admin_on manager_permissions
                        JOIN auth.users_admin_on user_permissions ON manager_permissions."admin_on_group" = user_permissions."admin_on_group"
                    WHERE
                        manager_permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                        AND user_permissions.uid = _user.uid
                        AND manager_permissions."admin_on_group" IS NOT NULL
                        AND manager_permissions."group_admin_on_users" = TRUE
                    LIMIT 1)
                OR EXISTS(
                    SELECT
                        1
                    FROM
                        auth.users_admin_on manager_permissions
                        JOIN auth.users_admin_on user_permissions ON manager_permissions."admin_on_service" = user_permissions."admin_on_service"
                    WHERE
                        manager_permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                        AND user_permissions.uid = _user.uid
                        AND manager_permissions."admin_on_service" IS NOT NULL
                        AND manager_permissions."service_admin_on_users" = TRUE
                    LIMIT 1)
                OR EXISTS(
                    SELECT
                        1
                    FROM
                        auth.users_admin_on manager_permissions
                        JOIN auth.users_admin_on user_permissions ON manager_permissions."admin_on_area" = user_permissions."admin_on_area"
                    WHERE
                        manager_permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                        AND user_permissions.uid = _user.uid
                        AND manager_permissions."admin_on_area" IS NOT NULL
                        AND manager_permissions."area_admin_on_users" = TRUE
                    LIMIT 1)));
$$;


--
-- TOC entry 1170 (class 1255 OID 66827)
-- Name: user_allowed_to_change_user_permissions("auth"."users_admin_on", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE OR REPLACE FUNCTION "public"."user_allowed_to_change_user_permissions"("_user" "auth"."users_admin_on", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        _user.uid <> (hasura_session ->> 'x-hasura-user-id')::uuid
        AND (
            auth.user_can_manage_all_users((hasura_session ->> 'x-hasura-user-id')::uuid)
            OR EXISTS (
                SELECT 1
                FROM auth.users_admin_on manager_permissions
                JOIN auth.users_admin_on user_permissions
                    ON manager_permissions."admin_on_group" = user_permissions."admin_on_group"
                WHERE manager_permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                    AND user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_group" IS NOT NULL
                    AND manager_permissions."group_admin_on_users" = TRUE
                LIMIT 1
            )
            OR EXISTS (
                SELECT 1
                FROM auth.users_admin_on manager_permissions
                JOIN auth.users_admin_on user_permissions
                    ON manager_permissions."admin_on_service" = user_permissions."admin_on_service"
                WHERE manager_permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                    AND user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_service" IS NOT NULL
                    AND manager_permissions."service_admin_on_users" = TRUE
                LIMIT 1
            )
            OR EXISTS (
                SELECT 1
                FROM auth.users_admin_on manager_permissions
                JOIN auth.users_admin_on user_permissions
                    ON manager_permissions."admin_on_area" = user_permissions."admin_on_area"
                WHERE manager_permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                    AND user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_area" IS NOT NULL
                    AND manager_permissions."area_admin_on_users" = TRUE
                LIMIT 1
            )
        );
$$;


CREATE OR REPLACE FUNCTION "public"."user_allowed_to_read_area"("area" "public"."areas", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS((
                SELECT
                    1
                FROM
                    auth.users_admin_on permissions
                WHERE
                    permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                    AND permissions."admin_on_area" IS NOT NULL
                    AND permissions."admin_on_area" = area.id
                LIMIT 1)
        UNION(
            SELECT
                1
            FROM
                auth.users_admin_on permissions
                JOIN persons_groups "groups" ON groups."group_id" = permissions."admin_on_group"
                LEFT JOIN persons person ON groups."person_id" = person.id
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND ST_DWithin(area.bounds, person.geolocation,(
                        SELECT
                            "value"::integer
                        FROM config
                    WHERE
                        "key" = 'search_threshold'))
            LIMIT 1)
    UNION(
        SELECT
            1
        FROM
            auth.users_admin_on permissions
            join persons_services services on services."service_id" = permissions."admin_on_service"
            left join persons person on services."person_id" = person.id
        WHERE
            permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
            AND ST_DWithin(area.bounds, person.geolocation,(
                    SELECT
                        "value"::integer
                    FROM config
                WHERE
                    "key" = 'search_threshold'))
            AND((permissions."service_gender" IS NULL
                    OR permissions."service_gender" = person.gender)
                AND(permissions."service_study_year" IS NULL
                    OR permissions."service_study_year" = person."study_year_id"))
        LIMIT 1));
$$;


CREATE OR REPLACE FUNCTION "public"."user_allowed_to_read_family"("family" "public"."families", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT
                id
            FROM
                persons
            WHERE
                uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND "family_id" = family.id)
        OR EXISTS(
            SELECT
                1
            FROM
                auth.users_admin_on permissions
                JOIN areas area ON permissions."admin_on_area" = area.id
            WHERE
                permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND area.bounds IS NOT NULL
                AND ST_DWithin(area.bounds, family.geolocation,(
                        SELECT
                            "value"::integer
                        FROM config
                    WHERE
                        "key" = 'search_threshold'))
            LIMIT 1);
$$;


CREATE OR REPLACE FUNCTION "public"."user_allowed_to_read_person"("person" "public"."persons", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        person.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
        OR auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS((
                SELECT
                    1
                FROM
                    auth.users_admin_on permissions
                    join persons_groups "groups" on groups."group_id" = permissions."admin_on_group"
                WHERE
                    permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                    AND groups."person_id" = person.id
                LIMIT 1)
        UNION(
            SELECT
                1
            FROM
                auth.users_admin_on permissions
                join persons_services services on services."service_id" = permissions."admin_on_service"
            WHERE
                permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND services."person_id" = person.id
                AND((permissions."service_gender" IS NULL
                        OR permissions."service_gender" = person.gender)
                    AND(permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = person."study_year_id"))
            LIMIT 1)
    UNION((
            SELECT
                1
            FROM
                auth.users_admin_on permissions
                join areas area on permissions."admin_on_area" = area.id
            WHERE
                permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND area.bounds IS NOT NULL
                AND ST_DWithin(area.bounds, person.geolocation,(
                        SELECT
                            "value"::integer
                        FROM config
                    WHERE
                        "key" = 'search_threshold'))
            LIMIT 1)))
$$;


CREATE OR REPLACE FUNCTION "public"."user_allowed_to_read_store"("store" "public"."stores", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT
                area.id
            FROM
                auth.users_admin_on permissions
                JOIN areas area ON permissions."admin_on_area" = area.id
            WHERE
                permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND area.bounds IS NOT NULL
                AND ST_DWithin(area.bounds, store.geolocation,(
                        SELECT
                            "value"::integer
                        FROM config
                        WHERE
                            "key" = 'search_threshold'))
            LIMIT 1);
$$;


CREATE OR REPLACE FUNCTION "public"."user_allowed_to_read_street"("street" "public"."streets", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT
                area.id
            FROM
                auth.users_admin_on permissions
                join areas area on permissions."admin_on_area" = area.id
            WHERE
                permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND area.bounds IS NOT NULL
                AND ST_DWithin(area.bounds, street.line,(
                        SELECT
                            "value"::integer
                        FROM config
                        WHERE
                            "key" = 'search_threshold'))
            LIMIT 1);
$$;



CREATE OR REPLACE FUNCTION "public"."user_allowed_to_read_user"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        _user.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
        OR auth.user_can_manage_all_users((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS((
                SELECT
                    1
                FROM
                    auth.users_admin_on manager_permissions
                    JOIN auth.users_admin_on user_permissions ON manager_permissions."admin_on_group" = user_permissions."admin_on_group"
                WHERE
                    manager_permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                    AND user_permissions.uid = _user.uid
                    AND manager_permissions."group_admin_on_users" = TRUE
                LIMIT 1)
        UNION(
            SELECT
                1
            FROM
                auth.users_admin_on manager_permissions
                JOIN auth.users_admin_on user_permissions ON manager_permissions."admin_on_service" = user_permissions."admin_on_service"
            WHERE
                manager_permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND user_permissions.uid = _user.uid
                AND manager_permissions."service_admin_on_users" = TRUE
            LIMIT 1)
    UNION(
        SELECT
            1
        FROM
            auth.users_admin_on manager_permissions
            JOIN auth.users_admin_on user_permissions on manager_permissions."admin_on_area" = user_permissions."admin_on_area"
        WHERE
            manager_permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
            AND user_permissions.uid = _user.uid
            AND manager_permissions."area_admin_on_users" = TRUE
        LIMIT 1));
$$;


CREATE OR REPLACE FUNCTION "public"."user_allowed_to_write_family"("family" "public"."families", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT
                area.id
            FROM
                auth.users_admin_on permissions
                JOIN areas area ON permissions."admin_on_area" = area.id
            WHERE
                permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND area.bounds IS NOT NULL
                AND permissions."area_allow_edit" = TRUE
                AND ST_DWithin(area.bounds, family.geolocation,(
                        SELECT
                            "value"::integer
                        FROM config
                        WHERE
                            "key" = 'search_threshold'))
            LIMIT 1);
$$;

CREATE OR REPLACE FUNCTION "public"."user_allowed_to_write_person"("person" "public"."persons", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        person.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
        OR auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS((
                SELECT
                    1
                FROM
                    auth.users_admin_on permissions
                    join persons_groups "groups" on groups."group_id" = permissions."admin_on_group"
                WHERE
                    permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                    AND groups."person_id" = person.id
                    AND permissions."group_allow_edit" = TRUE
                LIMIT 1)
        UNION(
            SELECT
                1
            FROM
                auth.users_admin_on permissions
                join persons_services services on services."service_id" = permissions."admin_on_service"
            WHERE
                permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND services."person_id" = person.id
                AND((permissions."service_gender" IS NULL
                        OR permissions."service_gender" = person.gender)
                    AND(permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = person."study_year_id"))
                AND permissions."service_allow_edit" = TRUE
            LIMIT 1)
    UNION(
        SELECT
            1
        FROM
            auth.users_admin_on permissions
            join areas area on permissions."admin_on_area" = area.id
        WHERE
            permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
            AND permissions."area_allow_edit" = TRUE
            AND area.bounds IS NOT NULL
            AND ST_DWithin(area.bounds, person.geolocation,(
                    SELECT
                        "value"::integer
                    FROM config
                WHERE
                    "key" = 'search_threshold'))
        LIMIT 1));
$$;


CREATE OR REPLACE FUNCTION "public"."user_allowed_to_write_street"("street" "public"."streets", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT
                area.id
            FROM
                auth.users_admin_on permissions
                join areas area on permissions."admin_on_area" = area.id
            WHERE
                permissions.uid =(hasura_session ->> 'x-hasura-user-id')::uuid
                AND area.bounds IS NOT NULL
                AND permissions."area_allow_edit" = TRUE
                AND ST_DWithin(area.bounds, street.line,(
                        SELECT
                            "value"::integer
                        FROM config
                        WHERE
                            "key" = 'search_threshold'))
            LIMIT 1);
$$;

