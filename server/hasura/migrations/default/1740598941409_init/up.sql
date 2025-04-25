--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: church_admin; Type: DATABASE; Schema: -; Owner: -
--

-- CREATE DATABASE IF NOT EXISTS "church_admin" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: church_admin; Type: DATABASE PROPERTIES; Schema: -; Owner: -
--

ALTER DATABASE "church_admin" SET "search_path" TO '$user', 'public', 'topology';


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


--
-- Name: timescaledb; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "timescaledb" WITH SCHEMA "public";


--
-- Name: EXTENSION "timescaledb"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "timescaledb" IS 'Enables scalable inserts and complex queries for time-series data (Community Edition)';


--
-- Name: auth; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "auth";


--
-- Name: face_recognition; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "face_recognition";

--
-- Name: history; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "history";


--
-- Name: topology; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "topology";


--
-- Name: SCHEMA "topology"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA "topology" IS 'PostGIS Topology schema';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "citext" WITH SCHEMA "public";


--
-- Name: EXTENSION "citext"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "citext" IS 'data type for case-insensitive character strings';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "public";


--
-- Name: EXTENSION "pgcrypto"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "pgcrypto" IS 'cryptographic functions';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "postgis" WITH SCHEMA "public";


--
-- Name: EXTENSION "postgis"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "postgis" IS 'PostGIS geometry and geography spatial types and functions';


--
-- Name: postgis_topology; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "postgis_topology" WITH SCHEMA "topology";


--
-- Name: EXTENSION "postgis_topology"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "postgis_topology" IS 'PostGIS topology spatial types and functions';


--
-- Name: email; Type: DOMAIN; Schema: auth; Owner: -
--

CREATE DOMAIN "auth"."email" AS "public"."citext"
	CONSTRAINT "email_check" CHECK ((VALUE OPERATOR("public".~) '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$'::"public"."citext"));


--
-- Name: last_recorded_by_info; Type: TYPE; Schema: history; Owner: -
--

CREATE TYPE "history"."last_recorded_by_info" AS (
	"recorded_by" "uuid",
	"time" timestamp without time zone
);


--
-- Name: set_current_timestamp_updated_at(); Type: FUNCTION; Schema: auth; Owner: -
--

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


--
-- Name: user_can_change_old_history("uuid"); Type: FUNCTION; Schema: auth; Owner: -
--

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


--
-- Name: user_can_export_data("uuid"); Type: FUNCTION; Schema: auth; Owner: -
--

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


--
-- Name: user_can_manage_all_users("uuid"); Type: FUNCTION; Schema: auth; Owner: -
--

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


--
-- Name: user_can_read_all_data("uuid"); Type: FUNCTION; Schema: auth; Owner: -
--

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


--
-- Name: user_can_record_history("uuid"); Type: FUNCTION; Schema: auth; Owner: -
--

CREATE FUNCTION "auth"."user_can_record_history"("user_uid" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select exists(
        select 1
        from auth.users_permissions p
        where p.uid = user_uid
            and p."permission" = 'recordHistory'
        limit 1
    );
$$;


--
-- Name: user_can_recover_deleted("uuid"); Type: FUNCTION; Schema: auth; Owner: -
--

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


--
-- Name: user_can_write_all_data("uuid"); Type: FUNCTION; Schema: auth; Owner: -
--

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

--
-- Name: check_attendance_days_update(); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."check_attendance_days_update"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE hasura_session JSON;
begin if (
    old.day is null
    or new.day = old.day
) then return new;
else raise exception 'Cannot change already existing day';
end if;
END;
$$;


--
-- Name: check_attendance_history_day_constraints(); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."check_attendance_history_day_constraints"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
declare hasura_session JSON;
begin if (
    select exists(
                select 1
                from history.attendance_days_constraints
                where day_id = new.day_id
                    and service_id = new.service_id
                    and (
                        service_study_year is null
                        or service_study_year = new.service_study_year
                    )
                    and (
                        service_gender is null
                        or service_gender = new.service_gender
                    )
                    and new.group_id is null
                limit 1
            )
            or exists(
                select 1
                from history.attendance_days_constraints
                where day_id = new.day_id
                    and service_id = new.service_id
                    and group_id = new.group_id
                limit 1
            )
) then return new;
else raise exception 'Row violates attendance_days_constraints';
end if;
end;
$$;


--
-- Name: check_person_group_service_rel(); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."check_person_group_service_rel"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
declare hasura_session JSON;
begin if (
    (
        not new.as_admin -- if user is not recorded as an admin,
        -- check that person is inside either the service 
        and (
            (
                new.group_id is null
                and exists(
                    select 1
                    from persons_services
                    where person_id = new.person_id
                        and service_id = new.service_id
                    limit 1
                )
            ) -- or in the group
            or (
                exists (
                    select 1
                    from persons_groups
                    where person_id = new.person_id
                        and group_id = new.group_id
                    limit 1
                ) -- and also check that this group is ineed inside the service
                and exists (
                    select 1
                    from groups
                    where id = new.group_id
                        and service_id = new.service_id
                    limit 1
                )
            )
        ) -- and that the person's study year and gender match the record (used for analysis)
        and (
            new.group_id is not null
            or exists (
                (
                    select 1
                    from persons
                    where id = new.person_id
                        and study_year_id = new.service_study_year
                        and gender = new.service_gender
                    limit 1
                )
                union
                (
                    select 1
                    from persons
                    where id = new.person_id
                        and study_year_id is null
                        and new.service_study_year is null
                        and gender = new.service_gender
                    limit 1
                )
            )
        )
    )
    or (
        new.as_admin
        and (
            exists(
                -- Check that person_id's user is admin on service_id(study_year and gender)
                (
                    select 1
                    from auth.users_admin_on
                    join persons p on uid = p.uid and p.id = new.person_id
                    where admin_on_service = new.service_id
                        and (
                            service_study_year is null
                            or service_study_year = new.service_study_year
                        )
                        and (
                            service_gender is null
                            or service_gender = new.service_gender
                        )
                )
                union
                -- or group_id
                (
                    select 1
                    from auth.users_admin_on
                    join persons p on uid = p.uid and p.id = new.person_id
                    where admin_on_group = new.group_id
                )
            )
        )
    )
) then return new;
else raise exception 'Cannot insert this person in this group/service';
end if;
end;
$$;


--
-- Name: check_service_group_rel(); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."check_service_group_rel"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
declare hasura_session JSON;
begin if new.group_id is null
or exists(
    (
        select 1
        from groups
        where id = new.group_id
            and service_id = new.service_id
        limit 1
    )
) then return new;
else raise exception 'group_id doesnot match service_id';
end if;
end;
$$;


--
-- Name: check_service_study_year_rel(); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."check_service_study_year_rel"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
declare hasura_session JSON;
begin if new.group_id is not null
or exists(
    (
        select 1
        from services
        where id = new.service_id
            and study_year_from_id is null
            and study_year_to_id is null
        limit 1
    )
    union
    (
        select 1
        from services
        where id = new.service_id
            and new.service_study_year between study_year_from_id and study_year_to_id
        limit 1
    )
) then return new;
else raise exception 'service_study_year doesnot match service_id';
end if;
end;
$$;


--
-- Name: edit_history_trigger(); Type: FUNCTION; Schema: history; Owner: -
--

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


--
-- Name: insert_person_edit_history(); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."insert_person_edit_history"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE hasura_session JSON;
begin
insert into history.edit_history ("table", record_id, "time", recorded_by)
VALUES (
        'persons'::name,
        new.person_id,
        now(),
        new.recorded_by
    );
return new;
END;
$$;


--
-- Name: sync_user_with_person_trigger(); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."sync_user_with_person_trigger"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    AS $$
declare temp_record_id uuid;
begin if new.uid is not null then
update auth.users_data
set "name" = new."name",
    photo_updated_at = new.photo_updated_at,
    blurhash = new.blurhash
where uid = new.uid;
end if;
return new;
end;
$$;


SET default_tablespace = '';

SET default_table_access_method = "heap";

--
-- Name: attendance_history; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."attendance_history" (
    "day_id" "date" NOT NULL,
    "service_id" "uuid" NOT NULL,
    "group_id" "uuid",
    "person_id" "uuid" NOT NULL,
    "time" timestamp without time zone DEFAULT "now"() NOT NULL,
    "recorded_by" "uuid" DEFAULT ((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-user-id'::"text"))::"uuid" NOT NULL,
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "service_study_year" integer,
    "service_gender" boolean,
    "as_admin" boolean DEFAULT false NOT NULL,
    CONSTRAINT "attendance_history_service_group_check" CHECK (((("group_id" IS NOT NULL) AND ("service_study_year" IS NULL) AND ("service_gender" IS NULL)) OR (("group_id" IS NULL) AND ("service_gender" IS NOT NULL)))),
    CONSTRAINT "attendance_history_time" CHECK (("day_id" = "date"("time")))
);


--
-- Name: user_allowed_to_read_attendance_record("history"."attendance_history", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_read_attendance_record"("attendance" "history"."attendance_history", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or (
        public."user_allowed_to_read_service"(
            (
                select services
                from services
                where id = attendance."service_id"
            ),
            hasura_session
        )
        and (
            attendance."group_id" is null
            or public."user_allowed_to_read_group"(
                (
                    select groups
                    from groups
                    where id = attendance."group_id"
                ),
                hasura_session
            )
        )
        and public."user_allowed_to_read_person"(
            (
                select persons
                from persons
                where id = attendance."person_id"
            ),
            hasura_session
        )
    );
$$;


--
-- Name: edit_history; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."edit_history" (
    "table" "name" NOT NULL,
    "record_id" "uuid" NOT NULL,
    "time" timestamp with time zone DEFAULT "now"() NOT NULL,
    "recorded_by" "uuid" DEFAULT ((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-user-id'::"text"))::"uuid",
    "user_role" "text" DEFAULT COALESCE((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-role'::"text"), 'postgres'::"text") NOT NULL,
    "audit_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- Name: user_allowed_to_read_audit("history"."edit_history", "json"); Type: FUNCTION; Schema: history; Owner: -
--

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


--
-- Name: attendance_days_constraints; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."attendance_days_constraints" (
    "day_id" "date" NOT NULL,
    "service_id" "uuid" NOT NULL,
    "service_study_year" integer,
    "service_gender" boolean,
    "group_id" "uuid",
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    CONSTRAINT "attendance_days_constraints_service_group_check" CHECK ((((("service_study_year" IS NULL) AND ("service_gender" IS NULL)) <> ("group_id" IS NULL)) AND ((("service_study_year" IS NOT NULL) AND ("service_gender" IS NOT NULL)) <> ("group_id" IS NOT NULL))))
);


--
-- Name: user_allowed_to_read_day_constraint("history"."attendance_days_constraints", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_read_day_constraint"("constraint" "history"."attendance_days_constraints", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        (
            SELECT 1
            FROM auth.users_admin_on permissions
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_group" = "constraint"."group_id"
            limit 1
        )
        union
        (
            SELECT 1
            FROM auth.users_admin_on permissions
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_service" = "constraint"."service_id"
                and (
                    permissions."service_study_year" is null
                    or "constraint"."service_study_year" = permissions."service_study_year"
                )
                and (
                    permissions."service_gender" is null
                    or "constraint"."service_gender" = permissions."service_gender"
                )
            limit 1
        )
    );
$$;


--
-- Name: latest_edits; Type: VIEW; Schema: history; Owner: -
--

CREATE VIEW "history"."latest_edits" AS
 SELECT DISTINCT ON ("table", "record_id") "table",
    "record_id",
    "time",
    "recorded_by",
    "user_role",
    "audit_id"
   FROM "history"."edit_history"
  ORDER BY "table", "record_id", "time" DESC;


--
-- Name: user_allowed_to_read_latest_edit("history"."latest_edits", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_read_latest_edit"("r" "history"."latest_edits", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE
    AS $$
select history.user_allowed_to_read_audit((r."table", r.record_id,r."time",r.recorded_by,r.user_role,r.audit_id), hasura_session)
$$;


--
-- Name: visit_history; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."visit_history" (
    "visit_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "table" "name" NOT NULL,
    "record_id" "uuid" NOT NULL,
    "time" timestamp with time zone DEFAULT "now"() NOT NULL,
    "recorded_by" "uuid" DEFAULT ((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-user-id'::"text"))::"uuid"
);


--
-- Name: latest_visits; Type: VIEW; Schema: history; Owner: -
--

CREATE VIEW "history"."latest_visits" AS
 SELECT DISTINCT ON ("table", "record_id") "table",
    "record_id",
    "time",
    "recorded_by",
    "visit_id"
   FROM "history"."visit_history"
  ORDER BY "table", "record_id", "time" DESC;


--
-- Name: user_allowed_to_read_latest_visit("history"."latest_visits", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_read_latest_visit"("r" "history"."latest_visits", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE
    AS $$
select history.user_allowed_to_read_visit((r.visit_id, r."table", r.record_id,r."time",r.recorded_by), hasura_session)
$$;


--
-- Name: user_allowed_to_read_visit("history"."visit_history", "json"); Type: FUNCTION; Schema: history; Owner: -
--

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


--
-- Name: user_allowed_to_write_attendance_record("history"."attendance_history", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_write_attendance_record"("attendance" "history"."attendance_history", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select auth.user_can_record_history((hasura_session->>'x-hasura-user-id')::uuid)
    and exists (
        select "day_id"
        from history.attendance_days_constraints "constraint",
            persons person
        where "constraint"."day_id" = attendance."day_id"
            and (
                "constraint"."service_id" = attendance."service_id"
                and (
                    "constraint"."service_study_year" is null
                    or person."study_year_id" = "constraint"."service_study_year"
                )
                and (
                    "constraint"."service_gender" is null
                    or person."gender" = "constraint"."service_gender"
                )
                and person.id = attendance."person_id"
            )
            and (
                attendance."group_id" is null
                or "constraint"."group_id" = attendance."group_id"
            )
    )
    and (
        auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
        or (
            public."user_allowed_to_write_service"(
                (
                    select services
                    from services
                    where id = attendance."service_id"
                ),
                hasura_session
            )
            and (
                attendance."group_id" is null
                or public."user_allowed_to_write_group"(
                    (
                        select groups
                        from groups
                        where id = attendance."group_id"
                    ),
                    hasura_session
                )
            )
            and public."user_allowed_to_write_person"(
                (
                    select persons
                    from persons
                    where id = attendance."person_id"
                ),
                hasura_session
            )
        )
    );
$$;


--
-- Name: attendance_days; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."attendance_days" (
    "day" "date" DEFAULT "now"() NOT NULL,
    "notes" "text"
);


--
-- Name: user_allowed_to_write_day("history"."attendance_days", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_write_day"("day" "history"."attendance_days", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select auth.user_can_record_history((hasura_session->>'x-hasura-user-id')::uuid);
$$;


--
-- Name: user_allowed_to_write_day_constraint("history"."attendance_days_constraints", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_write_day_constraint"("constraint" "history"."attendance_days_constraints", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select auth.user_can_record_history((hasura_session->>'x-hasura-user-id')::uuid)
    and (
        auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
        or EXISTS (
            (
                SELECT 1
                FROM auth.users_admin_on permissions
                WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    AND permissions."admin_on_group" = "constraint"."group_id"
                limit 1
            )
            union
            (
                SELECT 1
                FROM auth.users_admin_on permissions
                WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    AND permissions."admin_on_service" = "constraint"."service_id"
                    and (
                        permissions."service_study_year" is null
                        or "constraint"."service_study_year" = permissions."service_study_year"
                    )
                    and (
                        permissions."service_gender" is null
                        or "constraint"."service_gender" = permissions."service_gender"
                    )
                limit 1
            )
        )
    );
$$;


--
-- Name: user_allowed_to_write_visit("history"."visit_history", "json"); Type: FUNCTION; Schema: history; Owner: -
--

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


--
-- Name: _user_allowed_to_change_other_user("uuid", "uuid"); Type: FUNCTION; Schema: public; Owner: -
--

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


--
-- Name: areas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."areas" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "bounds" "public"."geography"(Polygon,4326),
    "color" bigint,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text"
);


--
-- Name: families; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."families" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "address" "text",
    "geolocation" "public"."geography"(Point,4326),
    "notes" "text",
    "color" bigint,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text"
);


--
-- Name: area_families("public"."areas", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."area_families"("area" "public"."areas", "hasura_session" "json") RETURNS SETOF "public"."families"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT family
    FROM areas_streets
    JOIN streets_families ON streets_families.street_id = areas_streets.street_id
    JOIN families family ON family.id = streets_families.family_id
    WHERE areas_streets.area_id = area.id
$$;


--
-- Name: persons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "address" "text",
    "geolocation" "public"."geography"(Point,4326),
    "main_phone" "text",
    "other_phones" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "birthdate" "date",
    "gender" boolean DEFAULT true NOT NULL,
    "is_shammas" boolean DEFAULT false NOT NULL,
    "shammas_level_id" "uuid",
    "school_id" "uuid",
    "college_id" "uuid",
    "church_id" "uuid",
    "father_id" "uuid",
    "is_student" boolean DEFAULT false,
    "job_id" "uuid",
    "job_description" "text",
    "qualification_id" "uuid",
    "person_type_id" "uuid",
    "state_id" "uuid",
    "is_servant" boolean DEFAULT false NOT NULL,
    "notes" "text",
    "uid" "uuid",
    "family_id" "uuid",
    "store_id" "uuid",
    "study_year_id" smallint,
    "color" bigint,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text",
    CONSTRAINT "persons_shammas_level" CHECK (((("is_shammas" = false) AND ("shammas_level_id" IS NULL)) OR (("is_shammas" = true) AND ("shammas_level_id" IS NOT NULL))))
);


--
-- Name: area_persons("public"."areas", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."area_persons"("area" "public"."areas", "hasura_session" "json") RETURNS SETOF "public"."persons"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT person
    FROM areas_streets
    JOIN streets_families ON streets_families.street_id = areas_streets.street_id
    JOIN persons person ON person.family_id = streets_families.family_id
    WHERE area.id = areas_streets.area_id
$$;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."stores" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "geolocation" "public"."geography"(Point,4326),
    "admin_family" "uuid",
    "color" bigint,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text",
    "address" "text",
    CONSTRAINT "stores_check_family_or_geolocation" CHECK ((("admin_family" IS NOT NULL) OR ("geolocation" IS NOT NULL)))
);


--
-- Name: area_stores("public"."areas", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."area_stores"("area" "public"."areas", "hasura_session" "json") RETURNS SETOF "public"."stores"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT store
    FROM areas_streets
    JOIN streets_stores ON streets_stores.street_id = areas_streets.street_id
    JOIN stores store ON store.id = streets_stores.store_id
    WHERE areas_streets.area_id = area.id
$$;


--
-- Name: streets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."streets" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "line" "public"."geography"(LineString,4326),
    "color" bigint,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text"
);


--
-- Name: area_streets("public"."areas", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."area_streets"("area" "public"."areas", "hasura_session" "json") RETURNS SETOF "public"."streets"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT street
    FROM areas_streets
    JOIN streets street ON street.id = areas_streets.street_id
    WHERE areas_streets.area_id = area.id
$$;


--
-- Name: check_family_has_street(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_family_has_street"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'INSERT' OR NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		IF EXISTS (SELECT 1 FROM streets_families WHERE family_id = NEW.id) THEN
			RETURN NEW;
		ELSE
			RAISE EXCEPTION 'Family must belong to at least one street by id';
		END IF;
	ELSE
		RETURN NEW;
	END IF;
END;
$$;


--
-- Name: check_family_street_same_area(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_family_street_same_area"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'INSERT' OR NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		IF NEW.geolocation IS NULL
			OR EXISTS (
				WITH threshold AS (
					SELECT config.value::INTEGER AS VALUE
					FROM config
					WHERE config.key = 'search_threshold'::text
				)
				SELECT 1
				FROM streets_families
				JOIN areas_streets ON streets_families.street_id = areas_streets.street_id
				JOIN areas a ON areas_streets.area_id = a.id
				JOIN streets s ON streets_families.street_id = s.id
				WHERE streets_families.family_id = NEW.id
					AND ST_DWithin(a.bounds, s.line, COALESCE((SELECT threshold.value FROM threshold), 0))
					AND ST_DWithin(a.bounds, NEW.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
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


--
-- Name: check_person_group_service_rel(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_person_group_service_rel"() RETURNS "trigger"
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


--
-- Name: check_persons_groups_insertion(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_persons_groups_insertion"() RETURNS "trigger"
    LANGUAGE "plpgsql" STABLE
    AS $$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if exists(
    select 1
    from groups
    join persons_services ps on groups.service_id = ps.service_id
    where groups.id = new."group_id"
        and ps.person_id = new."person_id"
) then 
    if (
        public."user_allowed_to_write_person"(
            (
                (
                    select persons
                    from persons
                    where id = new."person_id"
                )::persons
            ),
            hasura_session
        )
        and public."user_allowed_to_write_group"(
            (
                (
                    select groups
                    from groups
                    where id = new."group_id"
                )::groups
            ),
            hasura_session
        )
    ) then return new;
    else raise exception 'User not authorized to insert this person in this group';
    end if;
else raise exception 'Invalid group for person';
end if;
END;
$$;


--
-- Name: check_persons_insertion(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_persons_insertion"() RETURNS "trigger"
    LANGUAGE "plpgsql" STABLE
    AS $$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or public."user_allowed_to_write_person"(new, hasura_session) then return new;
else raise exception 'User is not authorized to insert this person';
end if;
END;
$$;


--
-- Name: check_persons_service_rel(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_persons_service_rel"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
declare hasura_session JSON;
begin if (
    exists(
            select 1
            from services s
            join persons p on p.id = new.person_id
            join study_years sy_f on sy_f."order" = s.study_year_from_id
                and s.study_year_from_id is not null
                and s.study_year_to_id is not null
            join study_years sy_t on sy_t."order" = s.study_year_to_id
            join study_years p_sy on p_sy."order" = p.study_year_id
            where s.id = new.service_id
                and sy_f."order" <= p_sy."order"
                and sy_t."order" >= p_sy."order"
            limit 1
        )
        or exists(
            select 1
            from services s
            join persons p on p.id = new.person_id
            where s.id = new.service_id
                and s.study_year_from_id is null
                and s.study_year_to_id is null
            limit 1
        )
        or exists(
            select 1
            from persons p
            where p.id = new.person_id
				and p.study_year_id is null
            limit 1
        )
) then return new;
else raise exception 'Person study_year does not match service study_year_range% person_id: % % service_id: % % old person_id: % % old service_id: %', E'\n', new.person_id, E'\n', new.service_id,E'\n', old.person_id, E'\n', old.service_id;
end if;
end;
$$;


--
-- Name: check_persons_services_insertion(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_persons_services_insertion"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or (
    public."user_allowed_to_write_person"(
        (
            (
                select persons
                from persons
                where id = new."person_id"
            )::persons
        ),
        hasura_session
    )
    and public."user_allowed_to_write_service"(
        (
            (
                select services
                from services
                where id = new."service_id"
            )::services
        ),
        hasura_session
    )
) then return new;
else raise exception 'User is not authorized to insert this person in this service';
end if;
END;
$$;


--
-- Name: check_persons_tags_insertion(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_persons_tags_insertion"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or public."user_allowed_to_write_person"(
    (
        (
            select persons
            from persons
            where id = new."person_id"
        )::persons
    ),
    hasura_session
) then return new;
else raise exception 'User is not authorized to insert these tags in this person';
end if;
END;
$$;


--
-- Name: check_store_admin_family_update(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_store_admin_family_update"() RETURNS "trigger"
    LANGUAGE "plpgsql" STABLE
    AS $$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if new."admin_family" = old."admin_family"
or (
    new."admin_family" is null
    and old."admin_family" is null
)
or auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or (
    (
        new."admin_family" is null
        or public."user_allowed_to_write_family"(
            (
                select families
                from families
                where id = new."admin_family"
                limit 1
            )::families, hasura_session
        )
    )
    and (
        old."admin_family" is null
        or public."user_allowed_to_write_family"(
            (
                select families
                from families
                where id = old."admin_family"
                limit 1
            )::families, hasura_session
        )
    )
) then return new;
else raise exception 'User is not authorized to update store with new family';
end if;
END;
$$;


--
-- Name: check_store_has_street(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_store_has_street"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'INSERT' OR NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		IF EXISTS (
			WITH threshold AS (
				SELECT
					config.value::integer AS value
				FROM
					config
				WHERE
					config.key = 'search_threshold'::text
			)
			SELECT 1 FROM public.streets s
			WHERE ST_DWithin(s.line, NEW.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
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


--
-- Name: check_street_has_area(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."check_street_has_area"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'INSERT' OR NEW.line IS DISTINCT FROM OLD.line THEN
		IF (
			EXISTS (
				SELECT 1 FROM areas_streets WHERE street_id = NEW.id
			)
			OR EXISTS (
				WITH threshold AS (
					SELECT
						config.value::integer AS value
					FROM
						config
					WHERE
						config.key = 'search_threshold'::text
				)
				SELECT 1
				FROM public.areas a
				WHERE ST_DWithin(a.bounds, NEW.line, COALESCE((SELECT threshold.value FROM threshold), 0))
			)
		) THEN
			RETURN NEW;
		ELSE
			RAISE EXCEPTION 'Street must belong to at least one area';
		END IF;
	ELSE
		RETURN NEW;
	END IF;
END;
$$;


--
-- Name: family_areas("public"."families", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."family_areas"("family" "public"."families", "hasura_session" "json") RETURNS SETOF "public"."areas"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT area
    FROM streets_families
    JOIN areas_streets ON streets_families.street_id = areas_streets.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_families.family_id = family.id
$$;


--
-- Name: family_streets("public"."families", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."family_streets"("family" "public"."families", "hasura_session" "json") RETURNS SETOF "public"."streets"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT street
    FROM streets_families
    JOIN streets street ON street.id = streets_families.street_id
    WHERE streets_families.family_id = family.id
$$;


--
-- Name: get_person_birthday("public"."persons"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."get_person_birthday"("person" "public"."persons") RETURNS "text"
    LANGUAGE "sql" IMMUTABLE
    AS $$
select to_char(person.birthdate, 'MM-DD');
$$;


--
-- Name: classes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."classes" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "service_id" "uuid" NOT NULL,
    "service_study_year" integer NOT NULL,
    "service_gender" boolean,
    "color" bigint,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text"
);


--
-- Name: get_person_classes("public"."persons", "json"); Type: FUNCTION; Schema: public; Owner: -
--

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


--
-- Name: person_areas("public"."persons", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."person_areas"("person" "public"."persons", "hasura_session" "json") RETURNS SETOF "public"."areas"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT area
    FROM streets_families
    JOIN areas_streets ON areas_streets.street_id = streets_families.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_families.family_id = person.family_id
$$;


--
-- Name: person_streets("public"."persons", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."person_streets"("person" "public"."persons", "hasura_session" "json") RETURNS SETOF "public"."streets"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT street
    FROM streets_families
    JOIN streets street ON street.id = streets_families.street_id
    WHERE streets_families.family_id = person.family_id
$$;


--
-- Name: persons_general_check(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."persons_general_check"() RETURNS "trigger"
    LANGUAGE "plpgsql" STABLE
    AS $$ begin if (
        new.geolocation is null
        and new.family_id is null
        and new.store_id is null
        and new.uid is null
        and not exists(
            select 1
            from persons_services
            where person_id = new.id
            limit 1
        )
        and not exists(
            select 1
            from persons_groups
            where person_id = new.id
            limit 1
        )
    ) then raise exception 'Person must have at least one of (geolocation, family, store, service, group, uid)';
else return new;
end if;
END;
$$;


--
-- Name: persons_groups_check(); Type: FUNCTION; Schema: public; Owner: -
--

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


--
-- Name: persons_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons_groups" (
    "person_id" "uuid" NOT NULL,
    "group_id" "uuid" NOT NULL,
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- Name: persons_groups_check("public"."persons_groups", "json"); Type: FUNCTION; Schema: public; Owner: -
--

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


--
-- Name: set_current_timestamp_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."set_current_timestamp_updated_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
declare _new record;
begin _new := new;
_new."updated_at" = now();
return _new;
end;
$$;


--
-- Name: store_areas("public"."stores", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."store_areas"("store" "public"."stores", "hasura_session" "json") RETURNS SETOF "public"."areas"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT area
    FROM streets_stores
    JOIN areas_streets ON areas_streets.street_id = streets_stores.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_stores.store_id = store.id
$$;


--
-- Name: store_persons("public"."stores", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."store_persons"("store" "public"."stores", "hasura_session" "json") RETURNS SETOF "public"."persons"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT person
    FROM persons person
    WHERE person.store_id = store.id;
$$;


--
-- Name: store_streets("public"."stores", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."store_streets"("store" "public"."stores", "hasura_session" "json") RETURNS SETOF "public"."streets"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT street
    FROM streets_stores
    JOIN streets street ON street.id = streets_stores.street_id
    WHERE streets_stores.store_id = store.id
$$;


--
-- Name: street_areas("public"."streets", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."street_areas"("street" "public"."streets", "hasura_session" "json") RETURNS SETOF "public"."areas"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT area
    FROM areas_streets
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE areas_streets.street_id = street.id
$$;


--
-- Name: street_families("public"."streets", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."street_families"("street" "public"."streets", "hasura_session" "json") RETURNS SETOF "public"."families"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT family
    FROM streets_families
    JOIN families family ON family.id = streets_families.family_id
    WHERE streets_families.street_id = street.id
$$;


--
-- Name: street_persons("public"."streets", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."street_persons"("street" "public"."streets", "hasura_session" "json") RETURNS SETOF "public"."persons"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT person
    FROM streets_families
    JOIN persons person ON person.family_id = streets_families.family_id
    WHERE streets_families.street_id = street.id
$$;


--
-- Name: street_stores("public"."streets", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."street_stores"("street" "public"."streets", "hasura_session" "json") RETURNS SETOF "public"."stores"
    LANGUAGE "sql" STABLE
    AS $$
    SELECT store
    FROM streets_stores
    JOIN stores store ON store.id = streets_stores.store_id
    WHERE streets_stores.street_id = street.id
$$;


--
-- Name: sync_area_streets(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."sync_area_streets"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'UPDATE' AND NEW.bounds IS DISTINCT FROM OLD.bounds THEN
		WITH threshold AS (
			SELECT config.value::integer AS value
			FROM config
			WHERE config.key = 'search_threshold'::text
		)
		DELETE FROM public.areas_streets areas_streets
		WHERE areas_streets.area_id = OLD.id
			AND EXISTS (
				SELECT 1
				FROM public.streets s
				WHERE s.id = areas_streets.street_id
					AND s.line IS NOT NULL
					AND (NEW.bounds IS NULL
						OR NOT ST_DWithin(NEW.bounds, s.line, COALESCE((SELECT threshold.value FROM threshold), 0))
					)
			);
	END IF;

	IF TG_OP = 'INSERT' OR NEW.bounds IS DISTINCT FROM OLD.bounds THEN
		WITH threshold AS (
			SELECT
				config.value::integer AS value
			FROM
				config
			WHERE
				config.key = 'search_threshold'::text
		)
		INSERT INTO public.areas_streets (area_id, street_id)
		SELECT NEW.id, s.id
		FROM public.streets s
		WHERE ST_DWithin(NEW.bounds, s.line, COALESCE((SELECT threshold.value FROM threshold), 0))
			ON CONFLICT DO NOTHING;
	END IF;

	RETURN NEW;
END;
$$;


--
-- Name: sync_family_streets(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."sync_family_streets"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'UPDATE' AND NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		WITH threshold AS (
			SELECT config.value::integer AS value
			FROM config
			WHERE config.key = 'search_threshold'::text
		)
		DELETE FROM public.streets_families
		WHERE family_id = OLD.id
			AND EXISTS (
				SELECT 1
				FROM public.streets s
				WHERE s.id = streets_families.street_id
					AND s.line IS NOT NULL
					AND (NEW.geolocation IS NULL
						OR NOT ST_DWithin(s.line, NEW.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
					)
			);
	END IF;

	IF TG_OP = 'INSERT' OR NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		WITH threshold AS (
			SELECT
				config.value::integer AS value
			FROM
				config
			WHERE
				config.key = 'search_threshold'::text
		)
		INSERT INTO public.streets_families (street_id, family_id)
		SELECT s.id, NEW.id
		FROM public.streets s
		WHERE ST_DWithin(s.line, NEW.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
			ON CONFLICT DO NOTHING;
	END IF;

	RETURN NEW;
END;
$$;


--
-- Name: sync_store_streets(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."sync_store_streets"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'UPDATE' AND NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		WITH threshold AS (
			SELECT config.value::integer AS value
			FROM config
			WHERE config.key = 'search_threshold'::text
		)
		DELETE FROM public.streets_stores
		WHERE store_id = OLD.id
			AND EXISTS (
				SELECT 1
				FROM public.streets s
				WHERE s.id = streets_stores.street_id
					AND s.line IS NOT NULL
					AND (NEW.geolocation IS NULL
						OR NOT ST_DWithin(s.line, NEW.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
					)
			);
	END IF;

	IF TG_OP = 'INSERT' OR NEW.geolocation IS DISTINCT FROM OLD.geolocation THEN
		WITH threshold AS (
			SELECT
				config.value::integer AS value
			FROM
				config
			WHERE
				config.key = 'search_threshold'::text
		)
		INSERT INTO public.streets_stores (street_id, store_id)
		SELECT s.id, NEW.id
		FROM public.streets s
		WHERE ST_DWithin(s.line, NEW.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
			ON CONFLICT DO NOTHING;
	END IF;

	RETURN NEW;
END;
$$;


--
-- Name: sync_street_areas(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."sync_street_areas"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'UPDATE' AND NEW.line IS DISTINCT FROM OLD.line THEN
		WITH threshold AS (
			SELECT
				config.value::integer AS value
			FROM
				config
			WHERE
				config.key = 'search_threshold'::text
		)
		DELETE FROM public.areas_streets areas_streets
		WHERE areas_streets.street_id = OLD.id
			AND EXISTS (
				SELECT 1
				FROM public.areas a
				WHERE a.id = areas_streets.area_id
					AND a.bounds IS NOT NULL
					AND (NEW.line IS NULL
						OR NOT ST_DWithin(a.bounds, NEW.line, COALESCE((SELECT threshold.value FROM threshold), 0))
					)
			);
	END IF;

	IF TG_OP = 'INSERT' OR NEW.line IS DISTINCT FROM OLD.line THEN
		WITH threshold AS (
			SELECT
				config.value::integer AS value
			FROM
				config
			WHERE
				config.key = 'search_threshold'::text
		)
		INSERT INTO public.areas_streets (area_id, street_id)
		SELECT a.id, NEW.id
		FROM public.areas a
		WHERE ST_DWithin(a.bounds, NEW.line, COALESCE((SELECT threshold.value FROM threshold), 0))
			ON CONFLICT DO NOTHING;
	END IF;

	RETURN NEW;
END;
$$;


--
-- Name: sync_street_families(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."sync_street_families"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'UPDATE' AND NEW.line IS DISTINCT FROM OLD.line THEN
		WITH threshold AS (
			SELECT config.value::integer AS value
			FROM config
			WHERE config.key = 'search_threshold'::text
		)
		DELETE FROM public.streets_families streets_families
		WHERE streets_families.street_id = OLD.id
			AND EXISTS (
				SELECT 1
				FROM public.families f
				WHERE f.id = streets_families.family_id
					AND f.geolocation IS NOT NULL
					AND (NEW.line IS NULL
						OR NOT ST_DWithin(NEW.line, f.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
					)
			);
	END IF;

	IF TG_OP = 'INSERT' OR NEW.line IS DISTINCT FROM OLD.line THEN
		WITH threshold AS (
			SELECT
				config.value::integer AS value
			FROM
				config
			WHERE
				config.key = 'search_threshold'::text
		)
		INSERT INTO public.streets_families (street_id, family_id)
		SELECT NEW.id, f.id
		FROM public.families f
		WHERE ST_DWithin(NEW.line, f.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
			ON CONFLICT DO NOTHING;
	END IF;

	RETURN NEW;
END;
$$;


--
-- Name: sync_street_stores(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."sync_street_stores"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
	IF TG_OP = 'UPDATE' AND NEW.line IS DISTINCT FROM OLD.line THEN
		WITH threshold AS (
			SELECT config.value::integer AS value
			FROM config
			WHERE config.key = 'search_threshold'::text
		)
		DELETE FROM public.streets_stores streets_stores
		WHERE streets_stores.street_id = OLD.id
			AND EXISTS (
				SELECT 1
				FROM public.stores s
				WHERE s.id = streets_stores.store_id
					AND s.geolocation IS NOT NULL
					AND (NEW.line IS NULL
						OR NOT ST_DWithin(NEW.line, s.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
					)
			);
	END IF;

	IF TG_OP = 'INSERT' OR NEW.line IS DISTINCT FROM OLD.line THEN
		WITH threshold AS (
			SELECT
				config.value::integer AS value
			FROM
				config
			WHERE
				config.key = 'search_threshold'::text
		)
		INSERT INTO public.streets_stores (street_id, store_id)
		SELECT NEW.id, s.id
		FROM public.stores s
		WHERE ST_DWithin(NEW.line, s.geolocation, COALESCE((SELECT threshold.value FROM threshold), 0))
			ON CONFLICT DO NOTHING;
	END IF;

	RETURN NEW;
END;
$$;


--
-- Name: users_data; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE "auth"."users_data" (
    "uid" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "email" "text" NOT NULL,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text",
    "auth_id" "text" NOT NULL
);


--
-- Name: TABLE "users_data"; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE "auth"."users_data" IS 'Users according to the application business logic';


--
-- Name: user_allowed_to_change_user_data("auth"."users_data", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_change_user_data"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- Name: users_admin_on; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE "auth"."users_admin_on" (
    "permission_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "uid" "uuid" NOT NULL,
    "admin_on_service" "uuid",
    "service_gender" boolean,
    "service_study_year" smallint,
    "service_allow_edit" boolean,
    "service_admin_on_users" boolean,
    "admin_on_group" "uuid",
    "group_allow_edit" boolean,
    "group_admin_on_users" boolean,
    "admin_on_area" "uuid",
    "area_allow_edit" boolean,
    "area_admin_on_users" boolean,
    CONSTRAINT "users_admin_on_admin_edit_logic" CHECK ((((COALESCE("service_allow_edit", false) = false) OR ("admin_on_service" IS NOT NULL)) AND ((COALESCE("group_allow_edit", false) = false) OR ("admin_on_group" IS NOT NULL)) AND ((COALESCE("area_allow_edit", false) = false) OR ("admin_on_area" IS NOT NULL)) AND ((COALESCE("service_admin_on_users", false) = false) OR ("admin_on_service" IS NOT NULL)) AND ((COALESCE("group_admin_on_users", false) = false) OR ("admin_on_group" IS NOT NULL)) AND ((COALESCE("area_admin_on_users", false) = false) OR ("admin_on_area" IS NOT NULL)))),
    CONSTRAINT "users_admin_on_area_service_group" CHECK (((("admin_on_area" IS NOT NULL) AND ("admin_on_service" IS NULL) AND ("admin_on_group" IS NULL)) OR (("admin_on_area" IS NULL) AND ("admin_on_service" IS NOT NULL) AND ("admin_on_group" IS NULL)) OR (("admin_on_area" IS NULL) AND ("admin_on_service" IS NULL) AND ("admin_on_group" IS NOT NULL))))
);


--
-- Name: TABLE "users_admin_on"; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE "auth"."users_admin_on" IS 'Users granular permissions on specific entities';


--
-- Name: user_allowed_to_change_user_permissions("auth"."users_admin_on", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_change_user_permissions"("_user" "auth"."users_admin_on", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- Name: users_permissions; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE "auth"."users_permissions" (
    "uid" "uuid" NOT NULL,
    "permission" "text" NOT NULL
);


--
-- Name: TABLE "users_permissions"; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE "auth"."users_permissions" IS 'Users permissions as predefined global permission names';


--
-- Name: user_allowed_to_change_user_permissions("auth"."users_permissions", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_change_user_permissions"("_user" "auth"."users_permissions", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- Name: user_allowed_to_delete_user("auth"."users_data", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_delete_user"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- Name: user_allowed_to_read_area("public"."areas", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_area"("area" "public"."areas", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT 1
            FROM auth.users_admin_on permissions
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."admin_on_area" = area.id
        )
        OR EXISTS(
            SELECT 1
            FROM auth.users_admin_on permissions
                JOIN persons_groups g ON g.group_id = permissions.admin_on_group
                JOIN persons p ON g.person_id = p.id
                JOIN streets_families ON p.family_id = streets_families.family_id
                JOIN areas_streets ON streets_families.street_id = areas_streets.street_id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND area.id = areas_streets.area_id
        )
        OR EXISTS(
            SELECT 1
            FROM auth.users_admin_on permissions
                JOIN persons_services s ON s.service_id = permissions.admin_on_service
                JOIN persons p ON s.person_id = p.id
                JOIN streets_families ON p.family_id = streets_families.family_id
                JOIN areas_streets ON streets_families.street_id = areas_streets.street_id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND area.id = areas_streets.area_id
                AND s.service_id = permissions.admin_on_service
                AND (permissions.service_gender IS NULL
                    OR permissions.service_gender = p.gender)
                AND (permissions.service_study_year IS NULL
                    OR permissions.service_study_year = p.study_year_id)
        );
$$;


--
-- Name: user_allowed_to_read_class("public"."classes", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_class"("_class" "public"."classes", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT 1
            FROM auth.users_admin_on permissions
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."admin_on_service" = _class."service_id"
                AND(permissions."service_gender" IS NULL
                    OR permissions."service_gender" = _class."service_gender")
                AND(permissions."service_study_year" IS NULL
                    OR permissions."service_study_year" = _class."service_study_year")
            LIMIT 1
        )
    -- or class has a person that is allowed to be read by the user through area
    -- users_admin_on -> admin_on_area -> area_persons -> persons_services -> persons => match class
        OR EXISTS(
            SELECT 1
            FROM auth.users_admin_on permissions
                JOIN areas_streets ON areas_streets.area_id = permissions.admin_on_area
                JOIN streets_families ON streets_families.street_id = areas_streets.street_id
                JOIN persons p ON p.family_id = streets_families.family_id
                JOIN persons_services ps ON ps."person_id" = p.id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND ps.service_id = _class.service_id
                AND _class.service_study_year = p.study_year_id
                AND(_class.service_gender IS NULL
                    OR _class.service_gender = p.gender)
            LIMIT 1
        );
$$;


--
-- Name: user_allowed_to_read_family("public"."families", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_family"("family" "public"."families", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT 1
            FROM persons p
            WHERE p.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND p."family_id" = family.id
        )
        OR EXISTS(
            -- users_admin_on -> areas -> streets -> families => match family
            SELECT 1
            FROM auth.users_admin_on permissions
            JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
            JOIN streets_families ON streets_families.street_id = areas_streets.street_id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND family.id = streets_families.family_id
        )
        OR EXISTS(
            -- users_admin_on -> groups -> persons_groups -> persons => match family
            SELECT 1
            FROM auth.users_admin_on permissions
            JOIN persons_groups "groups" ON groups."group_id" = permissions."admin_on_group"
            JOIN persons p ON p.id = groups."person_id"
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND p."family_id" = family.id
        )
        OR EXISTS(
            -- users_admin_on -> service -> services_persons -> persons => match family
            SELECT 1
            FROM auth.users_admin_on permissions
            JOIN services "service" ON permissions."admin_on_service" = "service".id
            JOIN persons_services ps ON ps."service_id" = "service".id
            JOIN persons p ON p.id = ps.person_id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND p."family_id" = family.id
                AND (permissions."service_gender" IS NULL
                    OR permissions."service_gender" = p."gender")
                AND (permissions."service_study_year" IS NULL
                    OR permissions."service_study_year" = p."study_year_id")
        )
$$;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."groups" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "service_id" "uuid" NOT NULL,
    "validity" "daterange",
    "color" bigint,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text"
);


--
-- Name: TABLE "groups"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE "public"."groups" IS 'TODO: check validity while checking permissions';


--
-- Name: user_allowed_to_read_group("public"."groups", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_group"("_group" "public"."groups", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT uid
            FROM auth.users_admin_on permissions
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."admin_on_group" = _group.id
                AND(_group.validity IS NULL
                    OR _group.validity @> CURRENT_DATE)
            LIMIT 1
        );
$$;


--
-- Name: user_allowed_to_read_person("public"."persons", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_person"("person" "public"."persons", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT person.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
        OR auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS (
            SELECT 1
            FROM
                auth.users_admin_on permissions
                JOIN persons_groups "groups" ON groups."group_id" = permissions."admin_on_group"
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND groups."person_id" = person.id
            LIMIT 1
        )
        OR EXISTS (
            SELECT 1
            FROM
                auth.users_admin_on permissions
                JOIN persons_services services ON services."service_id" = permissions."admin_on_service"
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND services."person_id" = person.id
                AND((permissions."service_gender" IS NULL
                        OR permissions."service_gender" = person.gender)
                    AND(permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = person."study_year_id"))
            LIMIT 1
        )
        OR EXISTS (
            SELECT 1
            FROM auth.users_admin_on permissions
            JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
            JOIN streets_families ON streets_families.street_id = areas_streets.street_id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND streets_families.family_id = person.family_id
            LIMIT 1
        );
$$;


--
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."services" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "study_year_from_id" smallint,
    "study_year_to_id" smallint,
    "next_service_id" "uuid",
    "color" bigint,
    "photo_updated_at" timestamp with time zone,
    "blurhash" "text",
    CONSTRAINT "study_year_range check" CHECK (((("study_year_from_id" IS NULL) AND ("study_year_to_id" IS NULL)) OR (("study_year_from_id" IS NOT NULL) AND ("study_year_to_id" IS NOT NULL) AND ("study_year_from_id" <= "study_year_to_id"))))
);


--
-- Name: user_allowed_to_read_service("public"."services", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_service"("service" "public"."services", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT 1
            FROM auth.users_admin_on permissions
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."admin_on_service" = service.id
            LIMIT 1
        )
        -- or service has a person that is allowed to be read by the user through area
        OR EXISTS(
            SELECT 1
            FROM auth.users_admin_on permissions
            JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
            JOIN streets_families ON areas_streets.street_id = streets_families.street_id
            JOIN persons p ON p.family_id = streets_families.family_id
            JOIN persons_services ps ON ps.person_id = p.id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND ps.service_id = service.id
            LIMIT 1
        );
$$;


--
-- Name: user_allowed_to_read_store("public"."stores", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_store"("store" "public"."stores", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT 1
            FROM auth.users_admin_on permissions
                JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
                JOIN streets_stores ON areas_streets.street_id = streets_stores.street_id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND store.id = streets_stores.store_id
            LIMIT 1
        );
$$;


--
-- Name: user_allowed_to_read_street("public"."streets", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_street"("street" "public"."streets", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
    OR EXISTS(
        SELECT 1
        FROM auth.users_admin_on permissions
            JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
        WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND street.id = areas_streets.street_id
        LIMIT 1
    )
    OR EXISTS(
        SELECT 1
        FROM auth.users_admin_on permissions
            JOIN persons_groups g ON g.group_id = permissions.admin_on_group
            JOIN persons p ON g.person_id = p.id
            JOIN streets_families ON p.family_id = streets_families.family_id
        WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND street.id = streets_families.street_id
    )
    OR EXISTS(
        SELECT 1
        FROM auth.users_admin_on permissions
            JOIN persons_services s ON s.service_id = permissions.admin_on_service
            JOIN persons p ON s.person_id = p.id
            JOIN streets_families ON p.family_id = streets_families.family_id
        WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
            AND street.id = streets_families.street_id
            AND s.service_id = permissions.admin_on_service
            AND (permissions.service_gender IS NULL
                OR permissions.service_gender = p.gender)
            AND (permissions.service_study_year IS NULL
                OR permissions.service_study_year = p.study_year_id)
    );
$$;


--
-- Name: user_allowed_to_read_user("auth"."users_data", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_user"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
        OR _user_allowed_to_change_other_user(_user.uid, (hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- Name: user_allowed_to_write_area("public"."areas", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_write_area"("area" "public"."areas", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    OR EXISTS(
        SELECT 1
        FROM auth.users_admin_on permissions
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_area" = area.id
            AND permissions."area_allow_edit" = TRUE
    );
$$;


--
-- Name: user_allowed_to_write_class("public"."classes", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_write_class"("_class" "public"."classes", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT permissions.uid
            FROM auth.users_admin_on permissions
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND _class."service_id" = permissions."admin_on_service"
                AND ((permissions."service_gender" IS NULL
                        OR permissions."service_gender" = _class."service_gender")
                    AND (permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = _class."service_study_year"))
                AND permissions."service_allow_edit" = TRUE
            LIMIT 1)
$$;


--
-- Name: user_allowed_to_write_family("public"."families", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_write_family"("family" "public"."families", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT 1
            FROM persons p
            WHERE p.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND p."family_id" = family.id
        )
        OR EXISTS(
            -- users_admin_on -> areas -> streets -> families => match family
            SELECT 1
            FROM auth.users_admin_on permissions
            JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
            JOIN streets_families ON streets_families.street_id = areas_streets.street_id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND family.id = streets_families.family_id
                AND permissions."area_allow_edit" = TRUE
        );
$$;


--
-- Name: user_allowed_to_write_group("public"."groups", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_write_group"("_group" "public"."groups", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT uid
            FROM auth.users_admin_on permissions
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."admin_on_group" = _group.id
                AND permissions."group_allow_edit" = TRUE
                AND(_group.validity IS NULL
                    OR _group.validity @> CURRENT_DATE)
            LIMIT 1);
$$;


--
-- Name: user_allowed_to_write_person("public"."persons", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_write_person"("person" "public"."persons", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        person.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
        OR auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS (
            SELECT 1
            FROM
                auth.users_admin_on permissions
                JOIN persons_groups "groups" ON groups."group_id" = permissions."admin_on_group"
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."group_allow_edit" = TRUE
                AND groups."person_id" = person.id
            LIMIT 1
        )
        OR EXISTS (
            SELECT 1
            FROM
                auth.users_admin_on permissions
                JOIN persons_services services ON services."service_id" = permissions."admin_on_service"
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."service_allow_edit" = TRUE
                AND services."person_id" = person.id
                AND((permissions."service_gender" IS NULL
                        OR permissions."service_gender" = person.gender)
                    AND(permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = person."study_year_id"))
            LIMIT 1
        )
        OR EXISTS (
            SELECT 1
            FROM auth.users_admin_on permissions
            JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
            JOIN streets_families ON streets_families.street_id = areas_streets.street_id
            WHERE permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."area_allow_edit" = TRUE
                AND streets_families.family_id = person.family_id
            LIMIT 1
        );
$$;


--
-- Name: user_allowed_to_write_service("public"."services", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_write_service"("service" "public"."services", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT
        auth.user_can_write_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
        OR EXISTS(
            SELECT uid
            FROM
                auth.users_admin_on permissions
            WHERE
                permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                AND permissions."admin_on_service" = service.id
                AND permissions."service_allow_edit" = TRUE
            LIMIT 1
        );
$$;


--
-- Name: user_allowed_to_write_store("public"."stores", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_write_store"("store" "public"."stores", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    OR EXISTS(
        SELECT 1
        FROM auth.users_admin_on permissions
            JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
            JOIN streets_stores ON areas_streets.street_id = streets_stores.street_id
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."area_allow_edit" = TRUE
            AND store.id = streets_stores.store_id
        LIMIT 1
    );
$$;


--
-- Name: user_allowed_to_write_street("public"."streets", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_write_street"("street" "public"."streets", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    OR EXISTS(
        SELECT 1
        FROM auth.users_admin_on permissions
            JOIN areas_streets ON permissions."admin_on_area" = areas_streets.area_id
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."area_allow_edit" = TRUE
            AND street.id = areas_streets.street_id
        LIMIT 1
    );
$$;


--
-- Name: perons_labels; Type: TABLE; Schema: face_recognition; Owner: -
--

CREATE TABLE "face_recognition"."perons_labels" (
    "label" bigint NOT NULL,
    "person_id" "uuid" NOT NULL
);


--
-- Name: perons_labels_label_seq; Type: SEQUENCE; Schema: face_recognition; Owner: -
--

CREATE SEQUENCE "face_recognition"."perons_labels_label_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: perons_labels_label_seq; Type: SEQUENCE OWNED BY; Schema: face_recognition; Owner: -
--

ALTER SEQUENCE "face_recognition"."perons_labels_label_seq" OWNED BY "face_recognition"."perons_labels"."label";


--
-- Name: call_history; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."call_history" (
    "time" timestamp with time zone DEFAULT "now"() NOT NULL,
    "person_id" "uuid" NOT NULL,
    "recorded_by" "uuid" DEFAULT ((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-user-id'::"text"))::"uuid",
    "user_role" "text" DEFAULT COALESCE((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-role'::"text"), 'postgres'::"text")
);


--
-- Name: confession_history; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."confession_history" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "day_id" "date" NOT NULL,
    "person_id" "uuid" NOT NULL,
    "recorded_by" "uuid" DEFAULT ((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-user-id'::"text"))::"uuid" NOT NULL,
    "time" "date" GENERATED ALWAYS AS ("day_id") STORED
);


--
-- Name: kodas_history; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."kodas_history" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "day_id" "date" NOT NULL,
    "person_id" "uuid" NOT NULL,
    "recorded_by" "uuid" DEFAULT ((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-user-id'::"text"))::"uuid" NOT NULL,
    "time" "date" GENERATED ALWAYS AS ("day_id") STORED
);


--
-- Name: latest_calls; Type: VIEW; Schema: history; Owner: -
--

CREATE VIEW "history"."latest_calls" AS
 SELECT DISTINCT ON ("person_id") "person_id",
    "time",
    "recorded_by",
    "user_role"
   FROM "history"."call_history"
  ORDER BY "person_id", "time" DESC;


--
-- Name: latest_confessions; Type: VIEW; Schema: history; Owner: -
--

CREATE VIEW "history"."latest_confessions" AS
 SELECT DISTINCT ON ("person_id") "person_id",
    "time",
    "recorded_by"
   FROM "history"."confession_history"
  ORDER BY "person_id", "time" DESC;


--
-- Name: latest_kodases; Type: VIEW; Schema: history; Owner: -
--

CREATE VIEW "history"."latest_kodases" AS
 SELECT DISTINCT ON ("person_id") "person_id",
    "time",
    "recorded_by"
   FROM "history"."kodas_history"
  ORDER BY "person_id", "time" DESC;


--
-- Name: visit_categories; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."visit_categories" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "type" boolean DEFAULT true NOT NULL
);


--
-- Name: COLUMN "visit_categories"."type"; Type: COMMENT; Schema: history; Owner: -
--

COMMENT ON COLUMN "history"."visit_categories"."type" IS 'how visits run in this category: true => by area, false => by service';


--
-- Name: visit_periods; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."visit_periods" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "category_id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "date_from" "date" NOT NULL,
    "date_to" "date" NOT NULL
);


--
-- Name: areas_streets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."areas_streets" (
    "area_id" "uuid" NOT NULL,
    "street_id" "uuid" NOT NULL
);


--
-- Name: churches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."churches" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- Name: colleges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."colleges" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "university_id" "uuid"
);


--
-- Name: config; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."config" (
    "key" "text" NOT NULL,
    "value" "text"
);


--
-- Name: families_families; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."families_families" (
    "parent_family_id" "uuid" NOT NULL,
    "child_family_id" "uuid" NOT NULL,
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- Name: fathers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."fathers" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "church_id" "uuid"
);


--
-- Name: hobbies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."hobbies" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "color" bigint
);


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."jobs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- Name: person_states; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."person_states" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "color" bigint NOT NULL
);


--
-- Name: person_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."person_types" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "order" integer NOT NULL
);


--
-- Name: persons_hobbies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons_hobbies" (
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "person_id" "uuid" NOT NULL,
    "hobby_id" "uuid" NOT NULL
);


--
-- Name: persons_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons_services" (
    "person_id" "uuid" NOT NULL,
    "service_id" "uuid" NOT NULL,
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- Name: persons_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons_tags" (
    "person_id" "uuid" NOT NULL,
    "tag_id" "uuid" NOT NULL,
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- Name: qualifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."qualifications" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."schema_migrations" (
    "version" bigint NOT NULL,
    "inserted_at" timestamp(0) without time zone
);


--
-- Name: schools; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."schools" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- Name: shammas_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."shammas_levels" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "order" integer NOT NULL
);


--
-- Name: streets_families; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."streets_families" (
    "street_id" "uuid" NOT NULL,
    "family_id" "uuid" NOT NULL
);


--
-- Name: streets_stores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."streets_stores" (
    "street_id" "uuid" NOT NULL,
    "store_id" "uuid" NOT NULL
);


--
-- Name: study_years; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."study_years" (
    "name" "text" NOT NULL,
    "order" smallint NOT NULL,
    "id" "text" GENERATED ALWAYS AS ("order") STORED
);


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."tags" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "color" bigint
);


--
-- Name: universities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."universities" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- Name: perons_labels label; Type: DEFAULT; Schema: face_recognition; Owner: -
--

ALTER TABLE ONLY "face_recognition"."perons_labels" ALTER COLUMN "label" SET DEFAULT "nextval"('"face_recognition"."perons_labels_label_seq"'::"regclass");

--
-- Name: perons_labels_label_seq; Type: SEQUENCE SET; Schema: face_recognition; Owner: -
--

SELECT pg_catalog.setval('"face_recognition"."perons_labels_label_seq"', 1, false);


--
-- Name: topology_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: -
--

SELECT pg_catalog.setval('"topology"."topology_id_seq"', 1, false);


--
-- Name: users_admin_on users_admin_on_area; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_area" UNIQUE ("uid", "admin_on_area");


--
-- Name: users_admin_on users_admin_on_group; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_group" UNIQUE ("uid", "admin_on_group");


--
-- Name: users_admin_on users_admin_on_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_pkey" PRIMARY KEY ("permission_id");


--
-- Name: users_admin_on users_admin_on_service; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_service" UNIQUE ("uid", "admin_on_service", "service_study_year", "service_gender");


--
-- Name: users_data users_data_auth_id_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_data"
    ADD CONSTRAINT "users_data_auth_id_key" UNIQUE ("auth_id");


--
-- Name: users_data users_data_email_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_data"
    ADD CONSTRAINT "users_data_email_key" UNIQUE ("email");


--
-- Name: users_data users_data_name_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_data"
    ADD CONSTRAINT "users_data_name_key" UNIQUE ("name");


--
-- Name: users_data users_data_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_data"
    ADD CONSTRAINT "users_data_pkey" PRIMARY KEY ("uid");


--
-- Name: users_permissions users_permissions_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_permissions"
    ADD CONSTRAINT "users_permissions_pkey" PRIMARY KEY ("uid", "permission");


--
-- Name: users_permissions users_permissions_uid_permission_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_permissions"
    ADD CONSTRAINT "users_permissions_uid_permission_key" UNIQUE ("uid", "permission");


--
-- Name: perons_labels perons_labels_person_id_key; Type: CONSTRAINT; Schema: face_recognition; Owner: -
--

ALTER TABLE ONLY "face_recognition"."perons_labels"
    ADD CONSTRAINT "perons_labels_person_id_key" UNIQUE ("person_id");


--
-- Name: perons_labels perons_labels_pkey; Type: CONSTRAINT; Schema: face_recognition; Owner: -
--

ALTER TABLE ONLY "face_recognition"."perons_labels"
    ADD CONSTRAINT "perons_labels_pkey" PRIMARY KEY ("label");


--
-- Name: attendance_days_constraints attendance_days_constraints_day_service_service_study_year_s_ke; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_day_service_service_study_year_s_ke" UNIQUE ("day_id", "service_id", "service_study_year", "service_gender", "group_id");


--
-- Name: attendance_days_constraints attendance_days_constraints_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_pkey" PRIMARY KEY ("id");


--
-- Name: attendance_days attendance_days_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days"
    ADD CONSTRAINT "attendance_days_pkey" PRIMARY KEY ("day");


--
-- Name: attendance_history attendance_history_day_id_service_id_group_id_person_id_key; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_day_id_service_id_group_id_person_id_key" UNIQUE ("day_id", "service_id", "group_id", "person_id");


--
-- Name: attendance_history attendance_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_pkey" PRIMARY KEY ("id");


--
-- Name: call_history call_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."call_history"
    ADD CONSTRAINT "call_history_pkey" PRIMARY KEY ("time");


--
-- Name: confession_history confession_history_day_id_person_id_key; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_day_id_person_id_key" UNIQUE ("day_id", "person_id");


--
-- Name: confession_history confession_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_pkey" PRIMARY KEY ("id");


--
-- Name: edit_history edit_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."edit_history"
    ADD CONSTRAINT "edit_history_pkey" PRIMARY KEY ("audit_id");


--
-- Name: kodas_history kodas_history_day_id_person_id_key; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_day_id_person_id_key" UNIQUE ("day_id", "person_id");


--
-- Name: kodas_history kodas_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_pkey" PRIMARY KEY ("id");


--
-- Name: visit_categories visit_categories_pk; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_categories"
    ADD CONSTRAINT "visit_categories_pk" PRIMARY KEY ("id");


--
-- Name: visit_history visit_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_history"
    ADD CONSTRAINT "visit_history_pkey" PRIMARY KEY ("visit_id");


--
-- Name: visit_periods visit_periods_pk; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_periods"
    ADD CONSTRAINT "visit_periods_pk" PRIMARY KEY ("id");


--
-- Name: visit_periods visit_periods_unique; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_periods"
    ADD CONSTRAINT "visit_periods_unique" UNIQUE ("id", "category_id");


--
-- Name: areas areas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."areas"
    ADD CONSTRAINT "areas_pkey" PRIMARY KEY ("id");


--
-- Name: areas_streets areas_streets_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."areas_streets"
    ADD CONSTRAINT "areas_streets_pk" PRIMARY KEY ("area_id", "street_id");


--
-- Name: churches churches_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."churches"
    ADD CONSTRAINT "churches_name_key" UNIQUE ("name");


--
-- Name: churches churches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."churches"
    ADD CONSTRAINT "churches_pkey" PRIMARY KEY ("id");


--
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_pkey" PRIMARY KEY ("id");


--
-- Name: colleges colleges_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."colleges"
    ADD CONSTRAINT "colleges_name_key" UNIQUE ("name");


--
-- Name: colleges colleges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."colleges"
    ADD CONSTRAINT "colleges_pkey" PRIMARY KEY ("id");


--
-- Name: config config_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."config"
    ADD CONSTRAINT "config_pkey" PRIMARY KEY ("key");


--
-- Name: families_families families_families_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families_families"
    ADD CONSTRAINT "families_families_pkey" PRIMARY KEY ("rel_id");


--
-- Name: families_families families_families_rel_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families_families"
    ADD CONSTRAINT "families_families_rel_id_key" UNIQUE ("rel_id");


--
-- Name: families families_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families"
    ADD CONSTRAINT "families_pkey" PRIMARY KEY ("id");


--
-- Name: fathers fathers_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."fathers"
    ADD CONSTRAINT "fathers_name_key" UNIQUE ("name");


--
-- Name: fathers fathers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."fathers"
    ADD CONSTRAINT "fathers_pkey" PRIMARY KEY ("id");


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."groups"
    ADD CONSTRAINT "groups_pkey" PRIMARY KEY ("id");


--
-- Name: hobbies hobbies_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."hobbies"
    ADD CONSTRAINT "hobbies_name_key" UNIQUE ("name");


--
-- Name: hobbies hobbies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."hobbies"
    ADD CONSTRAINT "hobbies_pkey" PRIMARY KEY ("id");


--
-- Name: jobs jobs_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."jobs"
    ADD CONSTRAINT "jobs_name_key" UNIQUE ("name");


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."jobs"
    ADD CONSTRAINT "jobs_pkey" PRIMARY KEY ("id");


--
-- Name: person_types person_types_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_types"
    ADD CONSTRAINT "person_types_name_key" UNIQUE ("name");


--
-- Name: person_types person_types_order_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_types"
    ADD CONSTRAINT "person_types_order_key" UNIQUE ("order");


--
-- Name: person_types person_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_types"
    ADD CONSTRAINT "person_types_pkey" PRIMARY KEY ("id");


--
-- Name: persons_groups persons_groups_person_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_groups"
    ADD CONSTRAINT "persons_groups_person_id_group_id_key" UNIQUE ("person_id", "group_id");


--
-- Name: persons_groups persons_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_groups"
    ADD CONSTRAINT "persons_groups_pkey" PRIMARY KEY ("rel_id");


--
-- Name: persons_hobbies persons_hobbies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_hobbies"
    ADD CONSTRAINT "persons_hobbies_pkey" PRIMARY KEY ("rel_id");


--
-- Name: persons persons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_pkey" PRIMARY KEY ("id");


--
-- Name: persons_services persons_services_person_id_service_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_services"
    ADD CONSTRAINT "persons_services_person_id_service_id_key" UNIQUE ("person_id", "service_id");


--
-- Name: persons_services persons_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_services"
    ADD CONSTRAINT "persons_services_pkey" PRIMARY KEY ("rel_id");


--
-- Name: persons_tags persons_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_tags"
    ADD CONSTRAINT "persons_tags_pkey" PRIMARY KEY ("rel_id");


--
-- Name: persons persons_uid_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_uid_key" UNIQUE ("uid");


--
-- Name: qualifications qualifications_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."qualifications"
    ADD CONSTRAINT "qualifications_name_key" UNIQUE ("name");


--
-- Name: qualifications qualifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."qualifications"
    ADD CONSTRAINT "qualifications_pkey" PRIMARY KEY ("id");


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."schema_migrations"
    ADD CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version");


--
-- Name: schools schools_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."schools"
    ADD CONSTRAINT "schools_name_key" UNIQUE ("name");


--
-- Name: schools schools_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."schools"
    ADD CONSTRAINT "schools_pkey" PRIMARY KEY ("id");


--
-- Name: services services_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_name_key" UNIQUE ("name");


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_pkey" PRIMARY KEY ("id");


--
-- Name: shammas_levels shammas_level_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."shammas_levels"
    ADD CONSTRAINT "shammas_level_name_key" UNIQUE ("name");


--
-- Name: shammas_levels shammas_level_order_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."shammas_levels"
    ADD CONSTRAINT "shammas_level_order_key" UNIQUE ("order");


--
-- Name: shammas_levels shammas_level_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."shammas_levels"
    ADD CONSTRAINT "shammas_level_pkey" PRIMARY KEY ("id");


--
-- Name: person_states states_color_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_states"
    ADD CONSTRAINT "states_color_key" UNIQUE ("color");


--
-- Name: person_states states_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_states"
    ADD CONSTRAINT "states_name_key" UNIQUE ("name");


--
-- Name: person_states states_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_states"
    ADD CONSTRAINT "states_pkey" PRIMARY KEY ("id");


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."stores"
    ADD CONSTRAINT "stores_pkey" PRIMARY KEY ("id");


--
-- Name: streets_families streets_families_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_families"
    ADD CONSTRAINT "streets_families_pk" PRIMARY KEY ("street_id", "family_id");


--
-- Name: streets streets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets"
    ADD CONSTRAINT "streets_pkey" PRIMARY KEY ("id");


--
-- Name: streets_stores streets_stores_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_stores"
    ADD CONSTRAINT "streets_stores_pk" PRIMARY KEY ("street_id", "store_id");


--
-- Name: study_years study_years_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."study_years"
    ADD CONSTRAINT "study_years_name_key" UNIQUE ("name");


--
-- Name: study_years study_years_order_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."study_years"
    ADD CONSTRAINT "study_years_order_key" UNIQUE ("order");


--
-- Name: study_years study_years_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."study_years"
    ADD CONSTRAINT "study_years_pkey" PRIMARY KEY ("order");


--
-- Name: tags tags_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_name_key" UNIQUE ("name");


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_pkey" PRIMARY KEY ("id");


--
-- Name: universities universities_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."universities"
    ADD CONSTRAINT "universities_name_key" UNIQUE ("name");


--
-- Name: universities universities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."universities"
    ADD CONSTRAINT "universities_pkey" PRIMARY KEY ("id");


--
-- Name: attendance_days_constraints_dayid_serviceid_groupid; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "attendance_days_constraints_dayid_serviceid_groupid" ON "history"."attendance_days_constraints" USING "btree" ("day_id", "service_id", "group_id");


--
-- Name: edit_history_all; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "edit_history_all" ON "history"."edit_history" USING "brin" ("time", "table", "record_id", "recorded_by");


--
-- Name: edit_history_table_rcrd_usr; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "edit_history_table_rcrd_usr" ON "history"."edit_history" USING "btree" ("time", "table", "record_id", "recorded_by");


--
-- Name: edit_history_time; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "edit_history_time" ON "history"."edit_history" USING "brin" ("time");


--
-- Name: idx_edit_history_record_id; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "idx_edit_history_record_id" ON "history"."edit_history" USING "btree" ("record_id");


--
-- Name: idx_visit_history_record_id; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "idx_visit_history_record_id" ON "history"."visit_history" USING "btree" ("record_id");


--
-- Name: idx_visit_history_recorded_by; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "idx_visit_history_recorded_by" ON "history"."visit_history" USING "btree" ("recorded_by");


--
-- Name: idx_visit_periods_category_id; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "idx_visit_periods_category_id" ON "history"."visit_periods" USING "btree" ("category_id");


--
-- Name: visit_history_all; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "visit_history_all" ON "history"."visit_history" USING "brin" ("time", "table", "record_id", "recorded_by");


--
-- Name: visit_history_time; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "visit_history_time" ON "history"."visit_history" USING "brin" ("time");


--
-- Name: areas_bounds_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "areas_bounds_index" ON "public"."areas" USING "gist" ("bounds");


--
-- Name: areas_id_bounds_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "areas_id_bounds_index" ON "public"."areas" USING "btree" ("id", "bounds");


--
-- Name: areas_idx_id_bounds; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "areas_idx_id_bounds" ON "public"."areas" USING "btree" ("id", "bounds");


--
-- Name: classes_service_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "classes_service_id_idx" ON "public"."classes" USING "btree" ("service_id", "service_study_year", "service_gender");


--
-- Name: families_families_child_family_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "families_families_child_family_id_idx" ON "public"."families_families" USING "btree" ("child_family_id");


--
-- Name: families_families_parent_family_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "families_families_parent_family_id_idx" ON "public"."families_families" USING "btree" ("parent_family_id");


--
-- Name: families_locations_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "families_locations_index" ON "public"."families" USING "gist" ("geolocation");


--
-- Name: groups_service_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "groups_service_id_idx" ON "public"."groups" USING "btree" ("service_id");


--
-- Name: idx_persons_clean_name_main_phone_birthdate; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "idx_persons_clean_name_main_phone_birthdate" ON "public"."persons" USING "btree" ("replace"("replace"("replace"("replace"("replace"("name", 'ى'::"text", 'ي'::"text"), 'أ'::"text", 'ا'::"text"), 'إ'::"text", 'ا'::"text"), 'آ'::"text", 'ا'::"text"), 'ة'::"text", 'ه'::"text"), "main_phone", "birthdate");


--
-- Name: persons_birthdays; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_birthdays" ON "public"."persons" USING "btree" ("public"."get_person_birthday"("persons".*));


--
-- Name: persons_groups_group_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_groups_group_id_idx" ON "public"."persons_groups" USING "btree" ("group_id");


--
-- Name: persons_hobbies_person_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_hobbies_person_id_idx" ON "public"."persons_hobbies" USING "btree" ("person_id");


--
-- Name: persons_locations_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_locations_index" ON "public"."persons" USING "gist" ("geolocation");


--
-- Name: persons_services_service_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_services_service_id_idx" ON "public"."persons_services" USING "btree" ("service_id");


--
-- Name: persons_tags_person_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_tags_person_id_idx" ON "public"."persons_tags" USING "btree" ("person_id");


--
-- Name: stores_admin_family_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "stores_admin_family_idx" ON "public"."stores" USING "btree" ("admin_family");


--
-- Name: stores_locations_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "stores_locations_index" ON "public"."stores" USING "gist" ("geolocation");


--
-- Name: streets_families_family_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "streets_families_family_id_idx" ON "public"."streets_families" USING "btree" ("family_id");


--
-- Name: streets_line_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "streets_line_index" ON "public"."streets" USING "gist" ("line");


--
-- Name: streets_stores_store_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "streets_stores_store_id_idx" ON "public"."streets_stores" USING "btree" ("store_id");


--
-- Name: users_admin_on edit_history; Type: TRIGGER; Schema: auth; Owner: -
--

CREATE TRIGGER "edit_history" BEFORE INSERT OR UPDATE ON "auth"."users_admin_on" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: attendance_history check_attendance_history_day_constraints; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_attendance_history_day_constraints" BEFORE INSERT OR UPDATE ON "history"."attendance_history" FOR EACH ROW EXECUTE FUNCTION "history"."check_attendance_history_day_constraints"();


--
-- Name: attendance_history check_person_group_service_rel; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_person_group_service_rel" BEFORE INSERT OR UPDATE ON "history"."attendance_history" FOR EACH ROW EXECUTE FUNCTION "history"."check_person_group_service_rel"();


--
-- Name: attendance_days_constraints check_service_group_rel; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_service_group_rel" BEFORE INSERT OR UPDATE ON "history"."attendance_days_constraints" FOR EACH ROW EXECUTE FUNCTION "history"."check_service_group_rel"();


--
-- Name: attendance_days_constraints check_service_study_year_rel; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_service_study_year_rel" BEFORE INSERT OR UPDATE ON "history"."attendance_days_constraints" FOR EACH ROW EXECUTE FUNCTION "history"."check_service_study_year_rel"();


--
-- Name: attendance_days check_update; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_update" BEFORE INSERT ON "history"."attendance_days" FOR EACH ROW EXECUTE FUNCTION "history"."check_attendance_days_update"();


--
-- Name: attendance_history insert_person_edit_history; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "insert_person_edit_history" AFTER INSERT OR UPDATE ON "history"."attendance_history" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"();


--
-- Name: call_history insert_person_edit_history; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "insert_person_edit_history" AFTER INSERT ON "history"."call_history" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"();


--
-- Name: confession_history insert_person_edit_history; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "insert_person_edit_history" AFTER INSERT ON "history"."confession_history" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"();


--
-- Name: kodas_history insert_person_edit_history; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "insert_person_edit_history" AFTER INSERT ON "history"."kodas_history" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"();


--
-- Name: families check_family_has_street; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_family_has_street" AFTER INSERT OR UPDATE ON "public"."families" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_family_has_street"();


--
-- Name: families check_family_street_same_area; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_family_street_same_area" AFTER INSERT OR UPDATE ON "public"."families" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_family_street_same_area"();


--
-- Name: persons_groups check_person_group_service_rel; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_person_group_service_rel" AFTER INSERT OR UPDATE ON "public"."persons_groups" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_person_group_service_rel"();


--
-- Name: persons_services check_persons_service_rel; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_persons_service_rel" AFTER INSERT OR UPDATE ON "public"."persons_services" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_persons_service_rel"();


--
-- Name: persons_tags check_persons_tags_insertion; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_persons_tags_insertion" AFTER INSERT OR UPDATE ON "public"."persons_tags" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_persons_tags_insertion"();


--
-- Name: stores check_store_admin_family_update; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_store_admin_family_update" AFTER UPDATE ON "public"."stores" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_store_admin_family_update"();


--
-- Name: stores check_store_has_street; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_store_has_street" AFTER INSERT OR UPDATE ON "public"."stores" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_store_has_street"();


--
-- Name: streets check_street_has_area; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_street_has_area" AFTER INSERT OR UPDATE ON "public"."streets" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_street_has_area"();


--
-- Name: areas edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."areas" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: classes edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."classes" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: families edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."families" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: families_families edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."families_families" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: groups edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."groups" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: persons edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."persons" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: persons_groups edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."persons_groups" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: persons_services edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."persons_services" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: persons_tags edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."persons_tags" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: services edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."services" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: stores edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."stores" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: streets edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- Name: persons persons_general_check; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "persons_general_check" AFTER INSERT OR UPDATE ON "public"."persons" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."persons_general_check"();


--
-- Name: areas sync_area_streets; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_area_streets" AFTER INSERT OR UPDATE ON "public"."areas" FOR EACH ROW EXECUTE FUNCTION "public"."sync_area_streets"();


--
-- Name: families sync_family_streets; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_family_streets" AFTER INSERT OR UPDATE ON "public"."families" FOR EACH ROW EXECUTE FUNCTION "public"."sync_family_streets"();


--
-- Name: stores sync_store_streets; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_store_streets" AFTER INSERT OR UPDATE ON "public"."stores" FOR EACH ROW EXECUTE FUNCTION "public"."sync_store_streets"();


--
-- Name: streets sync_street_areas; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_street_areas" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "public"."sync_street_areas"();


--
-- Name: streets sync_street_families; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_street_families" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "public"."sync_street_families"();


--
-- Name: streets sync_street_stores; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_street_stores" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "public"."sync_street_stores"();


--
-- Name: persons sync_user_with_person; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_user_with_person" AFTER INSERT OR UPDATE ON "public"."persons" FOR EACH ROW EXECUTE FUNCTION "history"."sync_user_with_person_trigger"();


--
-- Name: users_admin_on users_admin_on_admin_on_area_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_admin_on_area_fkey" FOREIGN KEY ("admin_on_area") REFERENCES "public"."areas"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: users_admin_on users_admin_on_admin_on_group_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_admin_on_group_fkey" FOREIGN KEY ("admin_on_group") REFERENCES "public"."groups"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: users_admin_on users_admin_on_admin_on_service_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_admin_on_service_fkey" FOREIGN KEY ("admin_on_service") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: users_admin_on users_admin_on_uid_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_uid_fkey" FOREIGN KEY ("uid") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: users_permissions users_permissions_uid_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_permissions"
    ADD CONSTRAINT "users_permissions_uid_fkey" FOREIGN KEY ("uid") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: perons_labels perons_labels_person_id_fkey; Type: FK CONSTRAINT; Schema: face_recognition; Owner: -
--

ALTER TABLE ONLY "face_recognition"."perons_labels"
    ADD CONSTRAINT "perons_labels_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: attendance_days_constraints attendance_days_constraints_fk; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_fk" FOREIGN KEY ("day_id") REFERENCES "history"."attendance_days"("day") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: attendance_days_constraints attendance_days_constraints_group_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_group_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: attendance_days_constraints attendance_days_constraints_service_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_service_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: attendance_days_constraints attendance_days_constraints_service_study_year_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_service_study_year_fkey" FOREIGN KEY ("service_study_year") REFERENCES "public"."study_years"("order") ON DELETE RESTRICT;


--
-- Name: attendance_history attendance_history_day_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_day_id_fkey" FOREIGN KEY ("day_id") REFERENCES "history"."attendance_days"("day") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: attendance_history attendance_history_group_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: attendance_history attendance_history_person_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: attendance_history attendance_history_recorded_by_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: attendance_history attendance_history_service_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_service_id_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: attendance_history attendance_history_service_study_year_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_service_study_year_fkey" FOREIGN KEY ("service_study_year") REFERENCES "public"."study_years"("order") ON DELETE RESTRICT;


--
-- Name: call_history call_history_person_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."call_history"
    ADD CONSTRAINT "call_history_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id");


--
-- Name: call_history call_history_recorded_by_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."call_history"
    ADD CONSTRAINT "call_history_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: confession_history confession_history_day_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_day_id_fkey" FOREIGN KEY ("day_id") REFERENCES "history"."attendance_days"("day") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: confession_history confession_history_person_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: confession_history confession_history_recorded_by_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: edit_history edit_history_user_uid_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."edit_history"
    ADD CONSTRAINT "edit_history_user_uid_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: kodas_history kodas_history_day_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_day_id_fkey" FOREIGN KEY ("day_id") REFERENCES "history"."attendance_days"("day") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: kodas_history kodas_history_person_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: kodas_history kodas_history_recorded_by_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: visit_history visit_history_user_uid_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_history"
    ADD CONSTRAINT "visit_history_user_uid_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: visit_periods visit_periods_fk; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_periods"
    ADD CONSTRAINT "visit_periods_fk" FOREIGN KEY ("category_id") REFERENCES "history"."visit_categories"("id") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: areas_streets areas_streets_areas_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."areas_streets"
    ADD CONSTRAINT "areas_streets_areas_fk" FOREIGN KEY ("area_id") REFERENCES "public"."areas"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: areas_streets areas_streets_streets_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."areas_streets"
    ADD CONSTRAINT "areas_streets_streets_fk" FOREIGN KEY ("street_id") REFERENCES "public"."streets"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: classes classes_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_service_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: classes classes_service_study_year_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_service_study_year_fkey" FOREIGN KEY ("service_study_year") REFERENCES "public"."study_years"("order") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: colleges colleges_university_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."colleges"
    ADD CONSTRAINT "colleges_university_id_fkey" FOREIGN KEY ("university_id") REFERENCES "public"."universities"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: families_families families_families_inner_family_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families_families"
    ADD CONSTRAINT "families_families_inner_family_id_fkey" FOREIGN KEY ("child_family_id") REFERENCES "public"."families"("id") ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: families_families families_families_outer_family_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families_families"
    ADD CONSTRAINT "families_families_outer_family_id_fkey" FOREIGN KEY ("parent_family_id") REFERENCES "public"."families"("id") ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fathers fathers_church_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."fathers"
    ADD CONSTRAINT "fathers_church_id_fkey" FOREIGN KEY ("church_id") REFERENCES "public"."churches"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: groups groups_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."groups"
    ADD CONSTRAINT "groups_service_id_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: persons persons_church_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_church_id_fkey" FOREIGN KEY ("church_id") REFERENCES "public"."churches"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons persons_college_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_college_id_fkey" FOREIGN KEY ("college_id") REFERENCES "public"."colleges"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons persons_family_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_family_id_fkey" FOREIGN KEY ("family_id") REFERENCES "public"."families"("id") ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons persons_father_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_father_id_fkey" FOREIGN KEY ("father_id") REFERENCES "public"."fathers"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons_groups persons_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_groups"
    ADD CONSTRAINT "persons_groups_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: persons_groups persons_groups_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_groups"
    ADD CONSTRAINT "persons_groups_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: persons_hobbies persons_hobbies_hobby_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_hobbies"
    ADD CONSTRAINT "persons_hobbies_hobby_id_fkey" FOREIGN KEY ("hobby_id") REFERENCES "public"."hobbies"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: persons_hobbies persons_hobbies_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_hobbies"
    ADD CONSTRAINT "persons_hobbies_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: persons persons_job_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_job_fkey" FOREIGN KEY ("job_id") REFERENCES "public"."jobs"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons persons_person_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_person_type_fkey" FOREIGN KEY ("person_type_id") REFERENCES "public"."person_types"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons persons_qualification_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_qualification_fkey" FOREIGN KEY ("qualification_id") REFERENCES "public"."qualifications"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons persons_school_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_school_id_fkey" FOREIGN KEY ("school_id") REFERENCES "public"."schools"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons_services persons_services_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_services"
    ADD CONSTRAINT "persons_services_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: persons_services persons_services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_services"
    ADD CONSTRAINT "persons_services_service_id_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: persons persons_shammas_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_shammas_level_fkey" FOREIGN KEY ("shammas_level_id") REFERENCES "public"."shammas_levels"("id") ON UPDATE RESTRICT ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons persons_state_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_state_fkey" FOREIGN KEY ("state_id") REFERENCES "public"."person_states"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons persons_study_year_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_study_year_id_fkey" FOREIGN KEY ("study_year_id") REFERENCES "public"."study_years"("order") ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: persons_tags persons_tags_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_tags"
    ADD CONSTRAINT "persons_tags_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: persons_tags persons_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_tags"
    ADD CONSTRAINT "persons_tags_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: persons persons_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_uid_fkey" FOREIGN KEY ("uid") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;


--
-- Name: services services_next_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_next_service_fkey" FOREIGN KEY ("next_service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: services services_study_year_from_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_study_year_from_fkey" FOREIGN KEY ("study_year_from_id") REFERENCES "public"."study_years"("order") ON DELETE RESTRICT;


--
-- Name: services services_study_year_to_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_study_year_to_fkey" FOREIGN KEY ("study_year_to_id") REFERENCES "public"."study_years"("order") ON DELETE RESTRICT;


--
-- Name: stores stores_admin_family_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."stores"
    ADD CONSTRAINT "stores_admin_family_fkey" FOREIGN KEY ("admin_family") REFERENCES "public"."families"("id") ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: streets_families streets_families_families_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_families"
    ADD CONSTRAINT "streets_families_families_fk" FOREIGN KEY ("family_id") REFERENCES "public"."families"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: streets_families streets_families_streets_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_families"
    ADD CONSTRAINT "streets_families_streets_fk" FOREIGN KEY ("street_id") REFERENCES "public"."streets"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: streets_stores streets_stores_stores_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_stores"
    ADD CONSTRAINT "streets_stores_stores_fk" FOREIGN KEY ("store_id") REFERENCES "public"."stores"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: streets_stores streets_stores_streets_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_stores"
    ADD CONSTRAINT "streets_stores_streets_fk" FOREIGN KEY ("street_id") REFERENCES "public"."streets"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

