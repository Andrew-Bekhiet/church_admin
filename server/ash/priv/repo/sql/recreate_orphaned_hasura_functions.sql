set check_function_bodies = off;

CREATE TYPE "history"."last_recorded_by_info" AS (
	"recorded_by" "uuid",
	"time" timestamp without time zone
);

CREATE FUNCTION "auth"."set_current_timestamp_updated_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE
  _new record;
BEGIN
  _new := new;
  _new. "updated_at" = now();
  RETURN _new;
END;
$$;

CREATE FUNCTION "auth"."user_can_change_old_history"("user_uid" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select exists(
        select 1
        from auth.users_permissions p
        where p.uid = user_uid
            and p."permission" = 'changeOldHistory'
        limit 1
    );
$$;

CREATE FUNCTION "auth"."user_can_export_data"("user_uid" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select exists(
        select 1
        from auth.users_permissions p
        where p.uid = user_uid
            and p."permission" = 'exportData'
        limit 1
    );
$$;

CREATE FUNCTION "auth"."user_can_manage_all_users"("user_uid" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select exists(
        select 1
        from auth.users_permissions p
        where p.uid = user_uid
            and p."permission" = 'manageAllUsers'
        limit 1
    );
$$;

CREATE FUNCTION "auth"."user_can_read_all_data"("user_uid" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select exists(
        select 1
        from auth.users_permissions p
        where p.uid = user_uid
            and p."permission" = 'readAllData'
        limit 1
    );
$$;

CREATE FUNCTION "auth"."user_can_recover_deleted"("user_uid" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select exists(
        select 1
        from auth.users_permissions p
        where p.uid = user_uid
            and p."permission" = 'recoverDeleted'
        limit 1
    );
$$;

CREATE FUNCTION "auth"."user_can_write_all_data"("user_uid" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select exists(
        select 1
        from auth.users_permissions p
        where p.uid = user_uid
            and p."permission" = 'writeAllData'
        limit 1
    );
$$;

CREATE FUNCTION "history"."user_allowed_to_read_audit"("r" "history"."edit_history", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$select (
        (
            r."table" = 'areas'::name
            and public."user_allowed_to_read_area"(
                (
                    select areas
                    from areas
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'streets'::name
            and public."user_allowed_to_read_street"(
                (
                    select streets
                    from streets
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'families'::name
            and public."user_allowed_to_read_family"(
                (
                    select families
                    from families
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'persons'::name
            and public."user_allowed_to_read_person"(
                (
                    select persons
                    from persons
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'services'::name
            and public."user_allowed_to_read_service"(
                (
                    select services
                    from services
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'classes'::name
            and public."user_allowed_to_read_class"(
                (
                    select classes
                    from classes
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'groups'::name
            and public."user_allowed_to_read_group"(
                (
                    select groups
                    from groups
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'stores'::name
            and public."user_allowed_to_read_store"(
                (
                    select stores
                    from stores
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'users'::name
            and public."user_allowed_to_read_user"(
                (
                    select users_data
                    from auth.users_data
                    where uid = r.record_id
                ),
                hasura_session
            )
        )
--        or (
--            record."table" = 'users_permissions'::name
--            and public."user_allowed_to_read_user_permissions"(
--                (
--                    select users_admin_on
--                    from auth.users_admin_on
--                    where permission_id = record.record_id
--                ),
--                hasura_session
--            )
--        )
    );
$$;

CREATE FUNCTION "history"."user_allowed_to_read_latest_edit"("r" "history"."latest_edits", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE
    AS $$
select history.user_allowed_to_read_audit((r."table", r.record_id,r."time",r.recorded_by,r.user_role,r.audit_id), hasura_session)
$$;

CREATE FUNCTION "history"."user_allowed_to_read_latest_visit"("r" "history"."latest_visits", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE
    AS $$
select history.user_allowed_to_read_visit((r.visit_id, r."table", r.record_id,r."time",r.recorded_by), hasura_session)
$$;

CREATE FUNCTION "history"."user_allowed_to_read_visit"("r" "history"."visit_history", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$select (
        (
            r."table" = 'areas'::name
            and public."user_allowed_to_read_area"(
                (
                    select areas
                    from areas
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'streets'::name
            and public."user_allowed_to_read_street"(
                (
                    select streets
                    from streets
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'families'::name
            and public."user_allowed_to_read_family"(
                (
                    select families
                    from families
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'persons'::name
            and public."user_allowed_to_read_person"(
                (
                    select persons
                    from persons
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'stores'::name
            and public."user_allowed_to_read_store"(
                (
                    select stores
                    from stores
                    where id = r.record_id
                ),
                hasura_session
            )
        )
    );
$$;

CREATE FUNCTION "history"."user_allowed_to_write_visit"("r" "history"."visit_history", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$select (
        (
            r."table" = 'areas'::name
            and public."user_allowed_to_write_area"(
                (
                    select areas
                    from areas
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'streets'::name
            and public."user_allowed_to_write_street"(
                (
                    select streets
                    from streets
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'families'::name
            and public."user_allowed_to_write_family"(
                (
                    select families
                    from families
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'persons'::name
            and public."user_allowed_to_write_person"(
                (
                    select persons
                    from persons
                    where id = r.record_id
                ),
                hasura_session
            )
        )
        or (
            r."table" = 'stores'::name
            and public."user_allowed_to_write_store"(
                (
                    select stores
                    from stores
                    where id = r.record_id
                ),
                hasura_session
            )
        )
    );
$$;

CREATE FUNCTION "public"."_user_allowed_to_change_other_user"("user_uid" "uuid", "manager_uid" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    WITH manager_permissions AS (
        SELECT uid,
            "admin_on_group",
            "group_admin_on_users",
            "admin_on_service",
            "service_admin_on_users",
            "admin_on_area",
            "area_admin_on_users"
        FROM auth.users_admin_on
        WHERE uid = manager_uid
    ),
    user_permissions AS (
        SELECT uid,
            "admin_on_group",
            "admin_on_service",
            "admin_on_area"
        FROM auth.users_admin_on
        WHERE uid = user_uid
    )
    SELECT user_uid <> manager_uid
    AND (
        auth.user_can_manage_all_users(manager_uid)
        OR (
            EXISTS (
                SELECT 1
                FROM manager_permissions, user_permissions
                WHERE manager_permissions."admin_on_group" = user_permissions."admin_on_group"
                    AND manager_permissions."group_admin_on_users" = TRUE
                LIMIT 1
            )
            OR EXISTS (
                SELECT 1
                FROM manager_permissions, user_permissions
                WHERE manager_permissions."admin_on_service" = user_permissions."admin_on_service"
                    AND manager_permissions."service_admin_on_users" = TRUE
                LIMIT 1
            )
            OR EXISTS (
                SELECT 1
                FROM manager_permissions, user_permissions
                WHERE manager_permissions."admin_on_area" = user_permissions."admin_on_area"
                    AND manager_permissions."area_admin_on_users" = TRUE
                LIMIT 1
            )
        )
    );
$$;

CREATE FUNCTION "public"."area_families"("area" "public"."areas", "hasura_session" "json") RETURNS SETOF "public"."families"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT family
    FROM areas_streets
    JOIN streets_families ON streets_families.street_id = areas_streets.street_id
    JOIN families family ON family.id = streets_families.family_id
    WHERE areas_streets.area_id = area.id
$$;

CREATE FUNCTION "public"."area_persons"("area" "public"."areas", "hasura_session" "json") RETURNS SETOF "public"."persons"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT person
    FROM areas_streets
    JOIN streets_families ON streets_families.street_id = areas_streets.street_id
    JOIN persons person ON person.family_id = streets_families.family_id
    WHERE area.id = areas_streets.area_id
$$;

CREATE FUNCTION "public"."area_stores"("area" "public"."areas", "hasura_session" "json") RETURNS SETOF "public"."stores"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT store
    FROM areas_streets
    JOIN streets_stores ON streets_stores.street_id = areas_streets.street_id
    JOIN stores store ON store.id = streets_stores.store_id
    WHERE areas_streets.area_id = area.id
$$;

CREATE FUNCTION "public"."area_streets"("area" "public"."areas", "hasura_session" "json") RETURNS SETOF "public"."streets"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT street
    FROM areas_streets
    JOIN streets street ON street.id = areas_streets.street_id
    WHERE areas_streets.area_id = area.id
$$;

CREATE FUNCTION "public"."family_areas"("family" "public"."families", "hasura_session" "json") RETURNS SETOF "public"."areas"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT area
    FROM streets_families
    JOIN areas_streets ON streets_families.street_id = areas_streets.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_families.family_id = family.id
$$;

CREATE FUNCTION "public"."family_streets"("family" "public"."families", "hasura_session" "json") RETURNS SETOF "public"."streets"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT street
    FROM streets_families
    JOIN streets street ON street.id = streets_families.street_id
    WHERE streets_families.family_id = family.id
$$;

CREATE FUNCTION "public"."get_person_classes"("person" "public"."persons", "hasura_session" "json") RETURNS SETOF "public"."classes"
    LANGUAGE "sql" STABLE
    AS $$
select "class"
FROM classes "class"
join persons_services ps on ps.service_id = "class".service_id
    and ps.person_id = person.id 
where "class".service_study_year = person.study_year_id
    and (
        "class".service_gender is null
        or "class".service_gender = person.gender
    );
$$;

CREATE FUNCTION "public"."person_areas"("person" "public"."persons", "hasura_session" "json") RETURNS SETOF "public"."areas"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT area
    FROM streets_families
    JOIN areas_streets ON areas_streets.street_id = streets_families.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_families.family_id = person.family_id
$$;

CREATE FUNCTION "public"."person_streets"("person" "public"."persons", "hasura_session" "json") RETURNS SETOF "public"."streets"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT street
    FROM streets_families
    JOIN streets street ON street.id = streets_families.street_id
    WHERE streets_families.family_id = person.family_id
$$;

CREATE FUNCTION "public"."persons_groups_check"() RETURNS "trigger"
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

CREATE FUNCTION "public"."persons_groups_check"("person_group" "public"."persons_groups", "hasura_session" "json") RETURNS boolean
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

CREATE FUNCTION "public"."store_areas"("store" "public"."stores", "hasura_session" "json") RETURNS SETOF "public"."areas"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT area
    FROM streets_stores
    JOIN areas_streets ON areas_streets.street_id = streets_stores.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_stores.store_id = store.id
$$;

CREATE FUNCTION "public"."store_persons"("store" "public"."stores", "hasura_session" "json") RETURNS SETOF "public"."persons"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT person
    FROM persons person
    WHERE person.store_id = store.id;
$$;

CREATE FUNCTION "public"."store_streets"("store" "public"."stores", "hasura_session" "json") RETURNS SETOF "public"."streets"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT street
    FROM streets_stores
    JOIN streets street ON street.id = streets_stores.street_id
    WHERE streets_stores.store_id = store.id
$$;

CREATE FUNCTION "public"."street_areas"("street" "public"."streets", "hasura_session" "json") RETURNS SETOF "public"."areas"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT area
    FROM areas_streets
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE areas_streets.street_id = street.id
$$;

CREATE FUNCTION "public"."street_families"("street" "public"."streets", "hasura_session" "json") RETURNS SETOF "public"."families"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT family
    FROM streets_families
    JOIN families family ON family.id = streets_families.family_id
    WHERE streets_families.street_id = street.id
$$;

CREATE FUNCTION "public"."street_persons"("street" "public"."streets", "hasura_session" "json") RETURNS SETOF "public"."persons"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT person
    FROM streets_families
    JOIN persons person ON person.family_id = streets_families.family_id
    WHERE streets_families.street_id = street.id
$$;

CREATE FUNCTION "public"."street_stores"("street" "public"."streets", "hasura_session" "json") RETURNS SETOF "public"."stores"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT store
    FROM streets_stores
    JOIN stores store ON store.id = streets_stores.store_id
    WHERE streets_stores.street_id = street.id
$$;

CREATE FUNCTION "public"."user_allowed_to_change_user_data"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;

CREATE FUNCTION "public"."user_allowed_to_change_user_permissions"("_user" "auth"."users_admin_on", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;

CREATE FUNCTION "public"."user_allowed_to_change_user_permissions"("_user" "auth"."users_permissions", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;

CREATE FUNCTION "public"."user_allowed_to_delete_user"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;

CREATE FUNCTION "public"."user_allowed_to_read_user"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
        OR _user_allowed_to_change_other_user(_user.uid, (hasura_session ->> 'x-hasura-user-id')::uuid);
$$;

create or replace function check_family_street_same_area() returns trigger
language plpgsql
as
$$
BEGIN
	IF TG_OP = 'INSERT' OR NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		IF NEW.geolocation IS NULL
			OR EXISTS (
				SELECT 1
				FROM streets_families
				JOIN areas_streets ON streets_families.street_id = areas_streets.street_id
				JOIN areas a ON areas_streets.area_id = a.id
				JOIN streets s ON streets_families.street_id = s.id
				WHERE streets_families.family_id = NEW.id
					AND ST_DWithin(a.bounds, s.line, 0)
					AND ST_DWithin(a.bounds, NEW.geolocation, 0)
			) THEN
			RETURN NEW;
		ELSE
			RAISE EXCEPTION 'Family must be inside same area as the street';
		END IF;
	ELSE
		RETURN NEW;
	END IF;
END;
$$;

create or replace function check_store_has_street() returns trigger
language plpgsql
as
$$
BEGIN
	IF TG_OP = 'INSERT' OR NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		IF EXISTS (
			SELECT 1 FROM public.streets s
			WHERE ST_DWithin(s.line, NEW.geolocation, 0)
		) THEN
			RETURN NEW;
		ELSE
			RAISE EXCEPTION 'Store must belong to at least one street by geolocation';
		END IF;
	ELSE
		RETURN NEW;
	END IF;
END;
$$;
