--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Ubuntu 16.2-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.2 (Ubuntu 16.2-1.pgdg23.10+1)

-- Started on 2024-05-10 01:05:02 EEST

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
-- TOC entry 10 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA IF NOT EXISTS "public";


--
-- TOC entry 7494 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


--
-- TOC entry 21 (class 2615 OID 32768)
-- Name: auth; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "auth";


--
-- TOC entry 22 (class 2615 OID 32769)
-- Name: face_recognition; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "face_recognition";


--
-- TOC entry 23 (class 2615 OID 32770)
-- Name: hdb_catalog; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "hdb_catalog";


--
-- TOC entry 24 (class 2615 OID 32771)
-- Name: history; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA "history";

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;

--
-- TOC entry 4091 (class 1247 OID 32915)
-- Name: email; Type: DOMAIN; Schema: auth; Owner: -
--

CREATE DOMAIN "auth"."email" AS "public"."citext"
	CONSTRAINT "email_check" CHECK ((VALUE OPERATOR("public".~) '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$'::"public"."citext"));


--
-- TOC entry 4095 (class 1247 OID 32919)
-- Name: last_recorded_by_info; Type: TYPE; Schema: history; Owner: -
--

CREATE TYPE "history"."last_recorded_by_info" AS (
	"recorded_by" "uuid",
	"time" timestamp without time zone
);


--
-- TOC entry 2624 (class 1255 OID 32920)
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
-- TOC entry 2625 (class 1255 OID 32921)
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
-- TOC entry 2626 (class 1255 OID 32922)
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
-- TOC entry 2627 (class 1255 OID 32923)
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
-- TOC entry 2628 (class 1255 OID 32924)
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
-- TOC entry 2629 (class 1255 OID 32925)
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
-- TOC entry 2630 (class 1255 OID 32926)
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
-- TOC entry 2631 (class 1255 OID 32927)
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
-- TOC entry 2632 (class 1255 OID 32928)
-- Name: gen_hasura_uuid(); Type: FUNCTION; Schema: hdb_catalog; Owner: -
--

CREATE FUNCTION "hdb_catalog"."gen_hasura_uuid"() RETURNS "uuid"
    LANGUAGE "sql"
    AS $$select gen_random_uuid()$$;


--
-- TOC entry 2633 (class 1255 OID 32929)
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
-- TOC entry 2634 (class 1255 OID 32930)
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
-- TOC entry 2635 (class 1255 OID 32931)
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
-- TOC entry 2636 (class 1255 OID 32932)
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
-- TOC entry 2637 (class 1255 OID 32933)
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
-- TOC entry 2638 (class 1255 OID 32934)
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
-- TOC entry 2639 (class 1255 OID 32935)
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
-- TOC entry 2640 (class 1255 OID 32936)
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
-- TOC entry 300 (class 1259 OID 32937)
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
-- TOC entry 2641 (class 1255 OID 32946)
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
-- TOC entry 301 (class 1259 OID 32947)
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
-- TOC entry 2642 (class 1255 OID 32956)
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
-- TOC entry 302 (class 1259 OID 32957)
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
-- TOC entry 2643 (class 1255 OID 32962)
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
-- TOC entry 303 (class 1259 OID 32963)
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
-- TOC entry 2644 (class 1255 OID 32967)
-- Name: user_allowed_to_read_latest_edit("history"."latest_edits", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_read_latest_edit"("r" "history"."latest_edits", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE
    AS $$
select history.user_allowed_to_read_audit((r."table", r.record_id,r."time",r.recorded_by,r.user_role,r.audit_id), hasura_session)
$$;


--
-- TOC entry 304 (class 1259 OID 32968)
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
-- TOC entry 305 (class 1259 OID 32974)
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
-- TOC entry 2645 (class 1255 OID 32978)
-- Name: user_allowed_to_read_latest_visit("history"."latest_visits", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_read_latest_visit"("r" "history"."latest_visits", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE
    AS $$
select history.user_allowed_to_read_visit((r.visit_id, r."table", r.record_id,r."time",r.recorded_by), hasura_session)
$$;


--
-- TOC entry 2646 (class 1255 OID 32979)
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
-- TOC entry 2647 (class 1255 OID 32980)
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
-- TOC entry 306 (class 1259 OID 32981)
-- Name: attendance_days; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."attendance_days" (
    "day" "date" DEFAULT "now"() NOT NULL,
    "notes" "text"
);


--
-- TOC entry 2648 (class 1255 OID 32987)
-- Name: user_allowed_to_write_day("history"."attendance_days", "json"); Type: FUNCTION; Schema: history; Owner: -
--

CREATE FUNCTION "history"."user_allowed_to_write_day"("day" "history"."attendance_days", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
select auth.user_can_record_history((hasura_session->>'x-hasura-user-id')::uuid);
$$;


--
-- TOC entry 2649 (class 1255 OID 32988)
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
-- TOC entry 2650 (class 1255 OID 32989)
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
-- TOC entry 2699 (class 1255 OID 148410)
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
-- TOC entry 307 (class 1259 OID 32990)
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
-- TOC entry 308 (class 1259 OID 32996)
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
-- TOC entry 2651 (class 1255 OID 33002)
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
-- TOC entry 309 (class 1259 OID 33003)
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
-- TOC entry 2652 (class 1255 OID 33015)
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
-- TOC entry 310 (class 1259 OID 33016)
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
-- TOC entry 2653 (class 1255 OID 33023)
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
-- TOC entry 311 (class 1259 OID 33024)
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
-- TOC entry 2654 (class 1255 OID 33030)
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
-- TOC entry 2708 (class 1255 OID 148419)
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
-- TOC entry 2704 (class 1255 OID 148415)
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
-- TOC entry 2655 (class 1255 OID 33031)
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
-- TOC entry 2656 (class 1255 OID 33032)
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
-- TOC entry 2657 (class 1255 OID 33033)
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
-- TOC entry 2658 (class 1255 OID 33034)
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
-- TOC entry 2659 (class 1255 OID 33035)
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
-- TOC entry 2660 (class 1255 OID 33036)
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
-- TOC entry 2661 (class 1255 OID 33037)
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
-- TOC entry 2709 (class 1255 OID 148420)
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
-- TOC entry 2701 (class 1255 OID 148412)
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
-- TOC entry 2662 (class 1255 OID 33038)
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
-- TOC entry 2663 (class 1255 OID 33039)
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
-- TOC entry 2664 (class 1255 OID 33040)
-- Name: get_person_birthday("public"."persons"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."get_person_birthday"("person" "public"."persons") RETURNS "text"
    LANGUAGE "sql" IMMUTABLE
    AS $$
select to_char(person.birthdate, 'MM-DD');
$$;


--
-- TOC entry 312 (class 1259 OID 33041)
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
-- TOC entry 2665 (class 1255 OID 33047)
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
-- TOC entry 2666 (class 1255 OID 33048)
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
-- TOC entry 2667 (class 1255 OID 33049)
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
-- TOC entry 2668 (class 1255 OID 33050)
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
-- TOC entry 2669 (class 1255 OID 33051)
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
-- TOC entry 313 (class 1259 OID 33052)
-- Name: persons_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons_groups" (
    "person_id" "uuid" NOT NULL,
    "group_id" "uuid" NOT NULL,
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- TOC entry 2670 (class 1255 OID 33056)
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
-- TOC entry 2671 (class 1255 OID 33057)
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
-- TOC entry 2672 (class 1255 OID 33058)
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
-- TOC entry 2700 (class 1255 OID 148411)
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
-- TOC entry 2673 (class 1255 OID 33059)
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
-- TOC entry 2674 (class 1255 OID 33060)
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
-- TOC entry 2675 (class 1255 OID 33061)
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
-- TOC entry 2676 (class 1255 OID 33062)
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
-- TOC entry 2677 (class 1255 OID 33063)
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
-- TOC entry 2710 (class 1255 OID 148421)
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
-- TOC entry 2706 (class 1255 OID 148417)
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
-- TOC entry 2707 (class 1255 OID 148418)
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
-- TOC entry 2702 (class 1255 OID 148413)
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
-- TOC entry 2703 (class 1255 OID 148414)
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
-- TOC entry 2705 (class 1255 OID 148416)
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
-- TOC entry 314 (class 1259 OID 33064)
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
-- TOC entry 7496 (class 0 OID 0)
-- Dependencies: 314
-- Name: TABLE "users_data"; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE "auth"."users_data" IS 'Users according to the application business logic';


--
-- TOC entry 2678 (class 1255 OID 33070)
-- Name: user_allowed_to_change_user_data("auth"."users_data", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_change_user_data"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- TOC entry 315 (class 1259 OID 33071)
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
-- TOC entry 7497 (class 0 OID 0)
-- Dependencies: 315
-- Name: TABLE "users_admin_on"; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE "auth"."users_admin_on" IS 'Users granular permissions on specific entities';


--
-- TOC entry 2679 (class 1255 OID 33077)
-- Name: user_allowed_to_change_user_permissions("auth"."users_admin_on", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_change_user_permissions"("_user" "auth"."users_admin_on", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- TOC entry 316 (class 1259 OID 33078)
-- Name: users_permissions; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE "auth"."users_permissions" (
    "uid" "uuid" NOT NULL,
    "permission" "text" NOT NULL
);


--
-- TOC entry 7498 (class 0 OID 0)
-- Dependencies: 316
-- Name: TABLE "users_permissions"; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE "auth"."users_permissions" IS 'Users permissions as predefined global permission names';


--
-- TOC entry 2680 (class 1255 OID 33083)
-- Name: user_allowed_to_change_user_permissions("auth"."users_permissions", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_change_user_permissions"("_user" "auth"."users_permissions", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- TOC entry 2681 (class 1255 OID 33084)
-- Name: user_allowed_to_delete_user("auth"."users_data", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_delete_user"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- TOC entry 2682 (class 1255 OID 33085)
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
-- TOC entry 2683 (class 1255 OID 33086)
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
-- TOC entry 2684 (class 1255 OID 33087)
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
-- TOC entry 317 (class 1259 OID 33088)
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
-- TOC entry 7499 (class 0 OID 0)
-- Dependencies: 317
-- Name: TABLE "groups"; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE "public"."groups" IS 'TODO: check validity while checking permissions';


--
-- TOC entry 2685 (class 1255 OID 33094)
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
-- TOC entry 2686 (class 1255 OID 33095)
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
-- TOC entry 318 (class 1259 OID 33096)
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
-- TOC entry 2687 (class 1255 OID 33103)
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
-- TOC entry 2688 (class 1255 OID 33104)
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
-- TOC entry 2689 (class 1255 OID 33105)
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
-- TOC entry 2690 (class 1255 OID 33107)
-- Name: user_allowed_to_read_user("auth"."users_data", "json"); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION "public"."user_allowed_to_read_user"("_user" "auth"."users_data", "hasura_session" "json") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    AS $$
    SELECT _user.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
        OR _user_allowed_to_change_other_user(_user.uid, (hasura_session ->> 'x-hasura-user-id')::uuid);
$$;


--
-- TOC entry 2691 (class 1255 OID 33108)
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
-- TOC entry 2692 (class 1255 OID 33109)
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
-- TOC entry 2693 (class 1255 OID 33110)
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
-- TOC entry 2694 (class 1255 OID 33111)
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
-- TOC entry 2695 (class 1255 OID 33112)
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
-- TOC entry 2696 (class 1255 OID 33113)
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
-- TOC entry 2697 (class 1255 OID 33114)
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
-- TOC entry 2698 (class 1255 OID 33115)
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
-- TOC entry 319 (class 1259 OID 33116)
-- Name: perons_labels; Type: TABLE; Schema: face_recognition; Owner: -
--

CREATE TABLE "face_recognition"."perons_labels" (
    "label" bigint NOT NULL,
    "person_id" "uuid" NOT NULL
);


--
-- TOC entry 320 (class 1259 OID 33119)
-- Name: perons_labels_label_seq; Type: SEQUENCE; Schema: face_recognition; Owner: -
--

CREATE SEQUENCE "face_recognition"."perons_labels_label_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 7500 (class 0 OID 0)
-- Dependencies: 320
-- Name: perons_labels_label_seq; Type: SEQUENCE OWNED BY; Schema: face_recognition; Owner: -
--

ALTER SEQUENCE "face_recognition"."perons_labels_label_seq" OWNED BY "face_recognition"."perons_labels"."label";


--
-- TOC entry 321 (class 1259 OID 33120)
-- Name: hdb_action_log; Type: TABLE; Schema: hdb_catalog; Owner: -
--

CREATE TABLE "hdb_catalog"."hdb_action_log" (
    "id" "uuid" DEFAULT "hdb_catalog"."gen_hasura_uuid"() NOT NULL,
    "action_name" "text",
    "input_payload" "jsonb" NOT NULL,
    "request_headers" "jsonb" NOT NULL,
    "session_variables" "jsonb" NOT NULL,
    "response_payload" "jsonb",
    "errors" "jsonb",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "response_received_at" timestamp with time zone,
    "status" "text" NOT NULL,
    CONSTRAINT "hdb_action_log_status_check" CHECK (("status" = ANY (ARRAY['created'::"text", 'processing'::"text", 'completed'::"text", 'error'::"text"])))
);


--
-- TOC entry 322 (class 1259 OID 33128)
-- Name: hdb_cron_event_invocation_logs; Type: TABLE; Schema: hdb_catalog; Owner: -
--

CREATE TABLE "hdb_catalog"."hdb_cron_event_invocation_logs" (
    "id" "text" DEFAULT "hdb_catalog"."gen_hasura_uuid"() NOT NULL,
    "event_id" "text",
    "status" integer,
    "request" "json",
    "response" "json",
    "created_at" timestamp with time zone DEFAULT "now"()
);


--
-- TOC entry 323 (class 1259 OID 33135)
-- Name: hdb_cron_events; Type: TABLE; Schema: hdb_catalog; Owner: -
--

CREATE TABLE "hdb_catalog"."hdb_cron_events" (
    "id" "text" DEFAULT "hdb_catalog"."gen_hasura_uuid"() NOT NULL,
    "trigger_name" "text" NOT NULL,
    "scheduled_time" timestamp with time zone NOT NULL,
    "status" "text" DEFAULT 'scheduled'::"text" NOT NULL,
    "tries" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "next_retry_at" timestamp with time zone,
    CONSTRAINT "valid_status" CHECK (("status" = ANY (ARRAY['scheduled'::"text", 'locked'::"text", 'delivered'::"text", 'error'::"text", 'dead'::"text"])))
);


--
-- TOC entry 324 (class 1259 OID 33145)
-- Name: hdb_metadata; Type: TABLE; Schema: hdb_catalog; Owner: -
--

CREATE TABLE "hdb_catalog"."hdb_metadata" (
    "id" integer NOT NULL,
    "metadata" "json" NOT NULL,
    "resource_version" integer DEFAULT 1 NOT NULL
);


--
-- TOC entry 325 (class 1259 OID 33151)
-- Name: hdb_scheduled_event_invocation_logs; Type: TABLE; Schema: hdb_catalog; Owner: -
--

CREATE TABLE "hdb_catalog"."hdb_scheduled_event_invocation_logs" (
    "id" "text" DEFAULT "hdb_catalog"."gen_hasura_uuid"() NOT NULL,
    "event_id" "text",
    "status" integer,
    "request" "json",
    "response" "json",
    "created_at" timestamp with time zone DEFAULT "now"()
);


--
-- TOC entry 326 (class 1259 OID 33158)
-- Name: hdb_scheduled_events; Type: TABLE; Schema: hdb_catalog; Owner: -
--

CREATE TABLE "hdb_catalog"."hdb_scheduled_events" (
    "id" "text" DEFAULT "hdb_catalog"."gen_hasura_uuid"() NOT NULL,
    "webhook_conf" "json" NOT NULL,
    "scheduled_time" timestamp with time zone NOT NULL,
    "retry_conf" "json",
    "payload" "json",
    "header_conf" "json",
    "status" "text" DEFAULT 'scheduled'::"text" NOT NULL,
    "tries" integer DEFAULT 0 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "next_retry_at" timestamp with time zone,
    "comment" "text",
    CONSTRAINT "valid_status" CHECK (("status" = ANY (ARRAY['scheduled'::"text", 'locked'::"text", 'delivered'::"text", 'error'::"text", 'dead'::"text"])))
);


--
-- TOC entry 327 (class 1259 OID 33168)
-- Name: hdb_schema_notifications; Type: TABLE; Schema: hdb_catalog; Owner: -
--

CREATE TABLE "hdb_catalog"."hdb_schema_notifications" (
    "id" integer NOT NULL,
    "notification" "json" NOT NULL,
    "resource_version" integer DEFAULT 1 NOT NULL,
    "instance_id" "uuid" NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"(),
    CONSTRAINT "hdb_schema_notifications_id_check" CHECK (("id" = 1))
);


--
-- TOC entry 328 (class 1259 OID 33176)
-- Name: hdb_version; Type: TABLE; Schema: hdb_catalog; Owner: -
--

CREATE TABLE "hdb_catalog"."hdb_version" (
    "hasura_uuid" "uuid" DEFAULT "hdb_catalog"."gen_hasura_uuid"() NOT NULL,
    "version" "text" NOT NULL,
    "upgraded_on" timestamp with time zone NOT NULL,
    "cli_state" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "console_state" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "ee_client_id" "text",
    "ee_client_secret" "text"
);


--
-- TOC entry 329 (class 1259 OID 33184)
-- Name: call_history; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."call_history" (
    "time" timestamp with time zone DEFAULT "now"() NOT NULL,
    "person_id" "uuid" NOT NULL,
    "recorded_by" "uuid" DEFAULT ((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-user-id'::"text"))::"uuid",
    "user_role" "text" DEFAULT COALESCE((("current_setting"('hasura.user'::"text", true))::"json" ->> 'x-hasura-role'::"text"), 'postgres'::"text")
);


--
-- TOC entry 330 (class 1259 OID 33192)
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
-- TOC entry 331 (class 1259 OID 33198)
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
-- TOC entry 332 (class 1259 OID 33204)
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
-- TOC entry 333 (class 1259 OID 33208)
-- Name: latest_confessions; Type: VIEW; Schema: history; Owner: -
--

CREATE VIEW "history"."latest_confessions" AS
 SELECT DISTINCT ON ("person_id") "person_id",
    "time",
    "recorded_by"
   FROM "history"."confession_history"
  ORDER BY "person_id", "time" DESC;


--
-- TOC entry 334 (class 1259 OID 33212)
-- Name: latest_kodases; Type: VIEW; Schema: history; Owner: -
--

CREATE VIEW "history"."latest_kodases" AS
 SELECT DISTINCT ON ("person_id") "person_id",
    "time",
    "recorded_by"
   FROM "history"."kodas_history"
  ORDER BY "person_id", "time" DESC;


--
-- TOC entry 354 (class 1259 OID 49152)
-- Name: visit_categories; Type: TABLE; Schema: history; Owner: -
--

CREATE TABLE "history"."visit_categories" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "type" boolean DEFAULT true NOT NULL
);


--
-- TOC entry 7501 (class 0 OID 0)
-- Dependencies: 354
-- Name: COLUMN "visit_categories"."type"; Type: COMMENT; Schema: history; Owner: -
--

COMMENT ON COLUMN "history"."visit_categories"."type" IS 'how visits run in this category: true => by area, false => by service';


--
-- TOC entry 355 (class 1259 OID 49159)
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
-- TOC entry 356 (class 1259 OID 148363)
-- Name: areas_streets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."areas_streets" (
    "area_id" "uuid" NOT NULL,
    "street_id" "uuid" NOT NULL
);


--
-- TOC entry 335 (class 1259 OID 33216)
-- Name: churches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."churches" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- TOC entry 336 (class 1259 OID 33222)
-- Name: colleges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."colleges" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "university_id" "uuid"
);


--
-- TOC entry 337 (class 1259 OID 33228)
-- Name: config; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."config" (
    "key" "text" NOT NULL,
    "value" "text"
);


--
-- TOC entry 338 (class 1259 OID 33233)
-- Name: families_families; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."families_families" (
    "parent_family_id" "uuid" NOT NULL,
    "child_family_id" "uuid" NOT NULL,
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- TOC entry 339 (class 1259 OID 33237)
-- Name: fathers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."fathers" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "church_id" "uuid"
);


--
-- TOC entry 340 (class 1259 OID 33243)
-- Name: hobbies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."hobbies" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "color" bigint
);


--
-- TOC entry 341 (class 1259 OID 33249)
-- Name: jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."jobs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- TOC entry 342 (class 1259 OID 33255)
-- Name: person_states; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."person_states" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "color" bigint NOT NULL
);


--
-- TOC entry 343 (class 1259 OID 33262)
-- Name: person_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."person_types" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "order" integer NOT NULL
);


--
-- TOC entry 344 (class 1259 OID 33268)
-- Name: persons_hobbies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons_hobbies" (
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "person_id" "uuid" NOT NULL,
    "hobby_id" "uuid" NOT NULL
);


--
-- TOC entry 345 (class 1259 OID 33272)
-- Name: persons_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons_services" (
    "person_id" "uuid" NOT NULL,
    "service_id" "uuid" NOT NULL,
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- TOC entry 346 (class 1259 OID 33276)
-- Name: persons_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."persons_tags" (
    "person_id" "uuid" NOT NULL,
    "tag_id" "uuid" NOT NULL,
    "rel_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL
);


--
-- TOC entry 347 (class 1259 OID 33280)
-- Name: qualifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."qualifications" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- TOC entry 348 (class 1259 OID 33286)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."schema_migrations" (
    "version" bigint NOT NULL,
    "inserted_at" timestamp(0) without time zone
);


--
-- TOC entry 349 (class 1259 OID 33289)
-- Name: schools; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."schools" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- TOC entry 350 (class 1259 OID 33295)
-- Name: shammas_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."shammas_levels" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "order" integer NOT NULL
);


--
-- TOC entry 358 (class 1259 OID 148394)
-- Name: streets_families; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."streets_families" (
    "street_id" "uuid" NOT NULL,
    "family_id" "uuid" NOT NULL
);


--
-- TOC entry 357 (class 1259 OID 148378)
-- Name: streets_stores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."streets_stores" (
    "street_id" "uuid" NOT NULL,
    "store_id" "uuid" NOT NULL
);


--
-- TOC entry 351 (class 1259 OID 33301)
-- Name: study_years; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."study_years" (
    "name" "text" NOT NULL,
    "order" smallint NOT NULL,
    "id" "text" GENERATED ALWAYS AS ("order") STORED
);


--
-- TOC entry 352 (class 1259 OID 33307)
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."tags" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "color" bigint
);


--
-- TOC entry 353 (class 1259 OID 33313)
-- Name: universities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."universities" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL
);


--
-- TOC entry 6933 (class 2604 OID 49165)
-- Name: perons_labels label; Type: DEFAULT; Schema: face_recognition; Owner: -
--

ALTER TABLE ONLY "face_recognition"."perons_labels" ALTER COLUMN "label" SET DEFAULT "nextval"('"face_recognition"."perons_labels_label_seq"'::"regclass");


--
-- TOC entry 7068 (class 2606 OID 33334)
-- Name: users_admin_on users_admin_on_area; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_area" UNIQUE ("uid", "admin_on_area");


--
-- TOC entry 7070 (class 2606 OID 33336)
-- Name: users_admin_on users_admin_on_group; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_group" UNIQUE ("uid", "admin_on_group");


--
-- TOC entry 7072 (class 2606 OID 33338)
-- Name: users_admin_on users_admin_on_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_pkey" PRIMARY KEY ("permission_id");


--
-- TOC entry 7074 (class 2606 OID 33340)
-- Name: users_admin_on users_admin_on_service; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_service" UNIQUE ("uid", "admin_on_service", "service_study_year", "service_gender");


--
-- TOC entry 7060 (class 2606 OID 33342)
-- Name: users_data users_data_auth_id_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_data"
    ADD CONSTRAINT "users_data_auth_id_key" UNIQUE ("auth_id");


--
-- TOC entry 7062 (class 2606 OID 33344)
-- Name: users_data users_data_email_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_data"
    ADD CONSTRAINT "users_data_email_key" UNIQUE ("email");


--
-- TOC entry 7064 (class 2606 OID 33346)
-- Name: users_data users_data_name_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_data"
    ADD CONSTRAINT "users_data_name_key" UNIQUE ("name");


--
-- TOC entry 7066 (class 2606 OID 33348)
-- Name: users_data users_data_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_data"
    ADD CONSTRAINT "users_data_pkey" PRIMARY KEY ("uid");


--
-- TOC entry 7076 (class 2606 OID 33350)
-- Name: users_permissions users_permissions_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_permissions"
    ADD CONSTRAINT "users_permissions_pkey" PRIMARY KEY ("uid", "permission");


--
-- TOC entry 7078 (class 2606 OID 33352)
-- Name: users_permissions users_permissions_uid_permission_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_permissions"
    ADD CONSTRAINT "users_permissions_uid_permission_key" UNIQUE ("uid", "permission");


--
-- TOC entry 7087 (class 2606 OID 33354)
-- Name: perons_labels perons_labels_person_id_key; Type: CONSTRAINT; Schema: face_recognition; Owner: -
--

ALTER TABLE ONLY "face_recognition"."perons_labels"
    ADD CONSTRAINT "perons_labels_person_id_key" UNIQUE ("person_id");


--
-- TOC entry 7089 (class 2606 OID 33356)
-- Name: perons_labels perons_labels_pkey; Type: CONSTRAINT; Schema: face_recognition; Owner: -
--

ALTER TABLE ONLY "face_recognition"."perons_labels"
    ADD CONSTRAINT "perons_labels_pkey" PRIMARY KEY ("label");


--
-- TOC entry 7091 (class 2606 OID 33358)
-- Name: hdb_action_log hdb_action_log_pkey; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_action_log"
    ADD CONSTRAINT "hdb_action_log_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7094 (class 2606 OID 33360)
-- Name: hdb_cron_event_invocation_logs hdb_cron_event_invocation_logs_pkey; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_cron_event_invocation_logs"
    ADD CONSTRAINT "hdb_cron_event_invocation_logs_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7097 (class 2606 OID 33362)
-- Name: hdb_cron_events hdb_cron_events_pkey; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_cron_events"
    ADD CONSTRAINT "hdb_cron_events_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7100 (class 2606 OID 33364)
-- Name: hdb_metadata hdb_metadata_pkey; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_metadata"
    ADD CONSTRAINT "hdb_metadata_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7102 (class 2606 OID 33366)
-- Name: hdb_metadata hdb_metadata_resource_version_key; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_metadata"
    ADD CONSTRAINT "hdb_metadata_resource_version_key" UNIQUE ("resource_version");


--
-- TOC entry 7104 (class 2606 OID 33368)
-- Name: hdb_scheduled_event_invocation_logs hdb_scheduled_event_invocation_logs_pkey; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_scheduled_event_invocation_logs"
    ADD CONSTRAINT "hdb_scheduled_event_invocation_logs_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7107 (class 2606 OID 33370)
-- Name: hdb_scheduled_events hdb_scheduled_events_pkey; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_scheduled_events"
    ADD CONSTRAINT "hdb_scheduled_events_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7109 (class 2606 OID 33372)
-- Name: hdb_schema_notifications hdb_schema_notifications_pkey; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_schema_notifications"
    ADD CONSTRAINT "hdb_schema_notifications_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7112 (class 2606 OID 33374)
-- Name: hdb_version hdb_version_pkey; Type: CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_version"
    ADD CONSTRAINT "hdb_version_pkey" PRIMARY KEY ("hasura_uuid");


--
-- TOC entry 7017 (class 2606 OID 33376)
-- Name: attendance_days_constraints attendance_days_constraints_day_service_service_study_year_s_ke; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_day_service_service_study_year_s_ke" UNIQUE ("day_id", "service_id", "service_study_year", "service_gender", "group_id");


--
-- TOC entry 7020 (class 2606 OID 33378)
-- Name: attendance_days_constraints attendance_days_constraints_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7028 (class 2606 OID 33380)
-- Name: attendance_days attendance_days_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days"
    ADD CONSTRAINT "attendance_days_pkey" PRIMARY KEY ("day");


--
-- TOC entry 7007 (class 2606 OID 33382)
-- Name: attendance_history attendance_history_day_id_service_id_group_id_person_id_key; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_day_id_service_id_group_id_person_id_key" UNIQUE ("day_id", "service_id", "group_id", "person_id");


--
-- TOC entry 7009 (class 2606 OID 33384)
-- Name: attendance_history attendance_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7114 (class 2606 OID 33386)
-- Name: call_history call_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."call_history"
    ADD CONSTRAINT "call_history_pkey" PRIMARY KEY ("time");


--
-- TOC entry 7116 (class 2606 OID 33388)
-- Name: confession_history confession_history_day_id_person_id_key; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_day_id_person_id_key" UNIQUE ("day_id", "person_id");


--
-- TOC entry 7118 (class 2606 OID 33390)
-- Name: confession_history confession_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7012 (class 2606 OID 33392)
-- Name: edit_history edit_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."edit_history"
    ADD CONSTRAINT "edit_history_pkey" PRIMARY KEY ("audit_id");


--
-- TOC entry 7120 (class 2606 OID 33394)
-- Name: kodas_history kodas_history_day_id_person_id_key; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_day_id_person_id_key" UNIQUE ("day_id", "person_id");


--
-- TOC entry 7122 (class 2606 OID 33396)
-- Name: kodas_history kodas_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7205 (class 2606 OID 49168)
-- Name: visit_categories visit_categories_pk; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_categories"
    ADD CONSTRAINT "visit_categories_pk" PRIMARY KEY ("id");


--
-- TOC entry 7025 (class 2606 OID 33398)
-- Name: visit_history visit_history_pkey; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_history"
    ADD CONSTRAINT "visit_history_pkey" PRIMARY KEY ("visit_id");


--
-- TOC entry 7208 (class 2606 OID 49170)
-- Name: visit_periods visit_periods_pk; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_periods"
    ADD CONSTRAINT "visit_periods_pk" PRIMARY KEY ("id");


--
-- TOC entry 7210 (class 2606 OID 49172)
-- Name: visit_periods visit_periods_unique; Type: CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_periods"
    ADD CONSTRAINT "visit_periods_unique" UNIQUE ("id", "category_id");


--
-- TOC entry 7033 (class 2606 OID 33400)
-- Name: areas areas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."areas"
    ADD CONSTRAINT "areas_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7212 (class 2606 OID 148367)
-- Name: areas_streets areas_streets_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."areas_streets"
    ADD CONSTRAINT "areas_streets_pk" PRIMARY KEY ("area_id", "street_id");


--
-- TOC entry 7124 (class 2606 OID 33402)
-- Name: churches churches_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."churches"
    ADD CONSTRAINT "churches_name_key" UNIQUE ("name");


--
-- TOC entry 7126 (class 2606 OID 33404)
-- Name: churches churches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."churches"
    ADD CONSTRAINT "churches_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7052 (class 2606 OID 33406)
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7128 (class 2606 OID 33408)
-- Name: colleges colleges_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."colleges"
    ADD CONSTRAINT "colleges_name_key" UNIQUE ("name");


--
-- TOC entry 7130 (class 2606 OID 33410)
-- Name: colleges colleges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."colleges"
    ADD CONSTRAINT "colleges_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7132 (class 2606 OID 33412)
-- Name: config config_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."config"
    ADD CONSTRAINT "config_pkey" PRIMARY KEY ("key");


--
-- TOC entry 7136 (class 2606 OID 33414)
-- Name: families_families families_families_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families_families"
    ADD CONSTRAINT "families_families_pkey" PRIMARY KEY ("rel_id");


--
-- TOC entry 7138 (class 2606 OID 148455)
-- Name: families_families families_families_rel_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families_families"
    ADD CONSTRAINT "families_families_rel_id_key" UNIQUE ("rel_id");


--
-- TOC entry 7036 (class 2606 OID 33418)
-- Name: families families_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families"
    ADD CONSTRAINT "families_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7140 (class 2606 OID 33420)
-- Name: fathers fathers_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."fathers"
    ADD CONSTRAINT "fathers_name_key" UNIQUE ("name");


--
-- TOC entry 7142 (class 2606 OID 33422)
-- Name: fathers fathers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."fathers"
    ADD CONSTRAINT "fathers_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7080 (class 2606 OID 33424)
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."groups"
    ADD CONSTRAINT "groups_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7144 (class 2606 OID 33426)
-- Name: hobbies hobbies_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."hobbies"
    ADD CONSTRAINT "hobbies_name_key" UNIQUE ("name");


--
-- TOC entry 7146 (class 2606 OID 33428)
-- Name: hobbies hobbies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."hobbies"
    ADD CONSTRAINT "hobbies_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7148 (class 2606 OID 33430)
-- Name: jobs jobs_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."jobs"
    ADD CONSTRAINT "jobs_name_key" UNIQUE ("name");


--
-- TOC entry 7150 (class 2606 OID 33432)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."jobs"
    ADD CONSTRAINT "jobs_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7158 (class 2606 OID 33434)
-- Name: person_types person_types_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_types"
    ADD CONSTRAINT "person_types_name_key" UNIQUE ("name");


--
-- TOC entry 7160 (class 2606 OID 33436)
-- Name: person_types person_types_order_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_types"
    ADD CONSTRAINT "person_types_order_key" UNIQUE ("order");


--
-- TOC entry 7162 (class 2606 OID 33438)
-- Name: person_types person_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_types"
    ADD CONSTRAINT "person_types_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7056 (class 2606 OID 33440)
-- Name: persons_groups persons_groups_person_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_groups"
    ADD CONSTRAINT "persons_groups_person_id_group_id_key" UNIQUE ("person_id", "group_id");


--
-- TOC entry 7058 (class 2606 OID 33442)
-- Name: persons_groups persons_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_groups"
    ADD CONSTRAINT "persons_groups_pkey" PRIMARY KEY ("rel_id");


--
-- TOC entry 7165 (class 2606 OID 33444)
-- Name: persons_hobbies persons_hobbies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_hobbies"
    ADD CONSTRAINT "persons_hobbies_pkey" PRIMARY KEY ("rel_id");


--
-- TOC entry 7041 (class 2606 OID 33448)
-- Name: persons persons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7167 (class 2606 OID 33450)
-- Name: persons_services persons_services_person_id_service_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_services"
    ADD CONSTRAINT "persons_services_person_id_service_id_key" UNIQUE ("person_id", "service_id");


--
-- TOC entry 7169 (class 2606 OID 33452)
-- Name: persons_services persons_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_services"
    ADD CONSTRAINT "persons_services_pkey" PRIMARY KEY ("rel_id");


--
-- TOC entry 7173 (class 2606 OID 33454)
-- Name: persons_tags persons_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_tags"
    ADD CONSTRAINT "persons_tags_pkey" PRIMARY KEY ("rel_id");


--
-- TOC entry 7043 (class 2606 OID 33456)
-- Name: persons persons_uid_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_uid_key" UNIQUE ("uid");


--
-- TOC entry 7175 (class 2606 OID 33458)
-- Name: qualifications qualifications_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."qualifications"
    ADD CONSTRAINT "qualifications_name_key" UNIQUE ("name");


--
-- TOC entry 7177 (class 2606 OID 33460)
-- Name: qualifications qualifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."qualifications"
    ADD CONSTRAINT "qualifications_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7179 (class 2606 OID 33462)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."schema_migrations"
    ADD CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version");


--
-- TOC entry 7181 (class 2606 OID 33464)
-- Name: schools schools_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."schools"
    ADD CONSTRAINT "schools_name_key" UNIQUE ("name");


--
-- TOC entry 7183 (class 2606 OID 33466)
-- Name: schools schools_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."schools"
    ADD CONSTRAINT "schools_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7083 (class 2606 OID 33468)
-- Name: services services_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_name_key" UNIQUE ("name");


--
-- TOC entry 7085 (class 2606 OID 33470)
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7185 (class 2606 OID 33472)
-- Name: shammas_levels shammas_level_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."shammas_levels"
    ADD CONSTRAINT "shammas_level_name_key" UNIQUE ("name");


--
-- TOC entry 7187 (class 2606 OID 33474)
-- Name: shammas_levels shammas_level_order_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."shammas_levels"
    ADD CONSTRAINT "shammas_level_order_key" UNIQUE ("order");


--
-- TOC entry 7189 (class 2606 OID 33476)
-- Name: shammas_levels shammas_level_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."shammas_levels"
    ADD CONSTRAINT "shammas_level_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7152 (class 2606 OID 33478)
-- Name: person_states states_color_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_states"
    ADD CONSTRAINT "states_color_key" UNIQUE ("color");


--
-- TOC entry 7154 (class 2606 OID 33480)
-- Name: person_states states_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_states"
    ADD CONSTRAINT "states_name_key" UNIQUE ("name");


--
-- TOC entry 7156 (class 2606 OID 33482)
-- Name: person_states states_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."person_states"
    ADD CONSTRAINT "states_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7047 (class 2606 OID 33484)
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."stores"
    ADD CONSTRAINT "stores_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7218 (class 2606 OID 148398)
-- Name: streets_families streets_families_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_families"
    ADD CONSTRAINT "streets_families_pk" PRIMARY KEY ("street_id", "family_id");


--
-- TOC entry 7050 (class 2606 OID 33486)
-- Name: streets streets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets"
    ADD CONSTRAINT "streets_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7214 (class 2606 OID 148382)
-- Name: streets_stores streets_stores_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_stores"
    ADD CONSTRAINT "streets_stores_pk" PRIMARY KEY ("street_id", "store_id");


--
-- TOC entry 7191 (class 2606 OID 33488)
-- Name: study_years study_years_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."study_years"
    ADD CONSTRAINT "study_years_name_key" UNIQUE ("name");


--
-- TOC entry 7193 (class 2606 OID 33490)
-- Name: study_years study_years_order_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."study_years"
    ADD CONSTRAINT "study_years_order_key" UNIQUE ("order");


--
-- TOC entry 7195 (class 2606 OID 33492)
-- Name: study_years study_years_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."study_years"
    ADD CONSTRAINT "study_years_pkey" PRIMARY KEY ("order");


--
-- TOC entry 7197 (class 2606 OID 33495)
-- Name: tags tags_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_name_key" UNIQUE ("name");


--
-- TOC entry 7199 (class 2606 OID 33497)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7201 (class 2606 OID 33499)
-- Name: universities universities_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."universities"
    ADD CONSTRAINT "universities_name_key" UNIQUE ("name");


--
-- TOC entry 7203 (class 2606 OID 33501)
-- Name: universities universities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."universities"
    ADD CONSTRAINT "universities_pkey" PRIMARY KEY ("id");


--
-- TOC entry 7092 (class 1259 OID 33502)
-- Name: hdb_cron_event_invocation_event_id; Type: INDEX; Schema: hdb_catalog; Owner: -
--

CREATE INDEX "hdb_cron_event_invocation_event_id" ON "hdb_catalog"."hdb_cron_event_invocation_logs" USING "btree" ("event_id");


--
-- TOC entry 7095 (class 1259 OID 33503)
-- Name: hdb_cron_event_status; Type: INDEX; Schema: hdb_catalog; Owner: -
--

CREATE INDEX "hdb_cron_event_status" ON "hdb_catalog"."hdb_cron_events" USING "btree" ("status");


--
-- TOC entry 7098 (class 1259 OID 33504)
-- Name: hdb_cron_events_unique_scheduled; Type: INDEX; Schema: hdb_catalog; Owner: -
--

CREATE UNIQUE INDEX "hdb_cron_events_unique_scheduled" ON "hdb_catalog"."hdb_cron_events" USING "btree" ("trigger_name", "scheduled_time") WHERE ("status" = 'scheduled'::"text");


--
-- TOC entry 7105 (class 1259 OID 33505)
-- Name: hdb_scheduled_event_status; Type: INDEX; Schema: hdb_catalog; Owner: -
--

CREATE INDEX "hdb_scheduled_event_status" ON "hdb_catalog"."hdb_scheduled_events" USING "btree" ("status");


--
-- TOC entry 7110 (class 1259 OID 33506)
-- Name: hdb_version_one_row; Type: INDEX; Schema: hdb_catalog; Owner: -
--

CREATE UNIQUE INDEX "hdb_version_one_row" ON "hdb_catalog"."hdb_version" USING "btree" ((("version" IS NOT NULL)));


--
-- TOC entry 7018 (class 1259 OID 33507)
-- Name: attendance_days_constraints_dayid_serviceid_groupid; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "attendance_days_constraints_dayid_serviceid_groupid" ON "history"."attendance_days_constraints" USING "btree" ("day_id", "service_id", "group_id");


--
-- TOC entry 7010 (class 1259 OID 33508)
-- Name: edit_history_all; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "edit_history_all" ON "history"."edit_history" USING "brin" ("time", "table", "record_id", "recorded_by");


--
-- TOC entry 7013 (class 1259 OID 33509)
-- Name: edit_history_table_rcrd_usr; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "edit_history_table_rcrd_usr" ON "history"."edit_history" USING "btree" ("time", "table", "record_id", "recorded_by");


--
-- TOC entry 7014 (class 1259 OID 33510)
-- Name: edit_history_time; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "edit_history_time" ON "history"."edit_history" USING "brin" ("time");


--
-- TOC entry 7015 (class 1259 OID 33511)
-- Name: idx_edit_history_record_id; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "idx_edit_history_record_id" ON "history"."edit_history" USING "btree" ("record_id");


--
-- TOC entry 7021 (class 1259 OID 33512)
-- Name: idx_visit_history_record_id; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "idx_visit_history_record_id" ON "history"."visit_history" USING "btree" ("record_id");


--
-- TOC entry 7022 (class 1259 OID 49173)
-- Name: idx_visit_history_recorded_by; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "idx_visit_history_recorded_by" ON "history"."visit_history" USING "btree" ("recorded_by");


--
-- TOC entry 7206 (class 1259 OID 49174)
-- Name: idx_visit_periods_category_id; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "idx_visit_periods_category_id" ON "history"."visit_periods" USING "btree" ("category_id");


--
-- TOC entry 7023 (class 1259 OID 33513)
-- Name: visit_history_all; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "visit_history_all" ON "history"."visit_history" USING "brin" ("time", "table", "record_id", "recorded_by");


--
-- TOC entry 7026 (class 1259 OID 33514)
-- Name: visit_history_time; Type: INDEX; Schema: history; Owner: -
--

CREATE INDEX "visit_history_time" ON "history"."visit_history" USING "brin" ("time");


--
-- TOC entry 7029 (class 1259 OID 33515)
-- Name: areas_bounds_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "areas_bounds_index" ON "public"."areas" USING "gist" ("bounds");


--
-- TOC entry 7030 (class 1259 OID 172971)
-- Name: areas_id_bounds_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "areas_id_bounds_index" ON "public"."areas" USING "btree" ("id", "bounds");


--
-- TOC entry 7031 (class 1259 OID 33516)
-- Name: areas_idx_id_bounds; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "areas_idx_id_bounds" ON "public"."areas" USING "btree" ("id", "bounds");


--
-- TOC entry 7053 (class 1259 OID 75232)
-- Name: classes_service_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "classes_service_id_idx" ON "public"."classes" USING "btree" ("service_id", "service_study_year", "service_gender");


--
-- TOC entry 7133 (class 1259 OID 75233)
-- Name: families_families_child_family_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "families_families_child_family_id_idx" ON "public"."families_families" USING "btree" ("child_family_id");


--
-- TOC entry 7134 (class 1259 OID 75234)
-- Name: families_families_parent_family_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "families_families_parent_family_id_idx" ON "public"."families_families" USING "btree" ("parent_family_id");


--
-- TOC entry 7034 (class 1259 OID 33517)
-- Name: families_locations_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "families_locations_index" ON "public"."families" USING "gist" ("geolocation");


--
-- TOC entry 7081 (class 1259 OID 75235)
-- Name: groups_service_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "groups_service_id_idx" ON "public"."groups" USING "btree" ("service_id");


--
-- TOC entry 7037 (class 1259 OID 74515)
-- Name: idx_persons_clean_name_main_phone_birthdate; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "idx_persons_clean_name_main_phone_birthdate" ON "public"."persons" USING "btree" ("replace"("replace"("replace"("replace"("replace"("name", 'ى'::"text", 'ي'::"text"), 'أ'::"text", 'ا'::"text"), 'إ'::"text", 'ا'::"text"), 'آ'::"text", 'ا'::"text"), 'ة'::"text", 'ه'::"text"), "main_phone", "birthdate");


--
-- TOC entry 7038 (class 1259 OID 33518)
-- Name: persons_birthdays; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_birthdays" ON "public"."persons" USING "btree" ("public"."get_person_birthday"("persons".*));


--
-- TOC entry 7054 (class 1259 OID 75236)
-- Name: persons_groups_group_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_groups_group_id_idx" ON "public"."persons_groups" USING "btree" ("group_id");


--
-- TOC entry 7163 (class 1259 OID 75237)
-- Name: persons_hobbies_person_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_hobbies_person_id_idx" ON "public"."persons_hobbies" USING "btree" ("person_id");


--
-- TOC entry 7039 (class 1259 OID 33519)
-- Name: persons_locations_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_locations_index" ON "public"."persons" USING "gist" ("geolocation");


--
-- TOC entry 7170 (class 1259 OID 75238)
-- Name: persons_services_service_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_services_service_id_idx" ON "public"."persons_services" USING "btree" ("service_id");


--
-- TOC entry 7171 (class 1259 OID 75239)
-- Name: persons_tags_person_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "persons_tags_person_id_idx" ON "public"."persons_tags" USING "btree" ("person_id");


--
-- TOC entry 7044 (class 1259 OID 75240)
-- Name: stores_admin_family_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "stores_admin_family_idx" ON "public"."stores" USING "btree" ("admin_family");


--
-- TOC entry 7045 (class 1259 OID 33520)
-- Name: stores_locations_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "stores_locations_index" ON "public"."stores" USING "gist" ("geolocation");


--
-- TOC entry 7216 (class 1259 OID 148409)
-- Name: streets_families_family_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "streets_families_family_id_idx" ON "public"."streets_families" USING "btree" ("family_id");


--
-- TOC entry 7048 (class 1259 OID 33521)
-- Name: streets_line_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "streets_line_index" ON "public"."streets" USING "gist" ("line");


--
-- TOC entry 7215 (class 1259 OID 148393)
-- Name: streets_stores_store_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "streets_stores_store_id_idx" ON "public"."streets_stores" USING "btree" ("store_id");


--
-- TOC entry 7312 (class 2620 OID 33522)
-- Name: users_admin_on edit_history; Type: TRIGGER; Schema: auth; Owner: -
--

CREATE TRIGGER "edit_history" BEFORE INSERT OR UPDATE ON "auth"."users_admin_on" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7285 (class 2620 OID 33523)
-- Name: attendance_history check_attendance_history_day_constraints; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_attendance_history_day_constraints" BEFORE INSERT OR UPDATE ON "history"."attendance_history" FOR EACH ROW EXECUTE FUNCTION "history"."check_attendance_history_day_constraints"();


--
-- TOC entry 7286 (class 2620 OID 33524)
-- Name: attendance_history check_person_group_service_rel; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_person_group_service_rel" BEFORE INSERT OR UPDATE ON "history"."attendance_history" FOR EACH ROW EXECUTE FUNCTION "history"."check_person_group_service_rel"();


--
-- TOC entry 7288 (class 2620 OID 33525)
-- Name: attendance_days_constraints check_service_group_rel; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_service_group_rel" BEFORE INSERT OR UPDATE ON "history"."attendance_days_constraints" FOR EACH ROW EXECUTE FUNCTION "history"."check_service_group_rel"();


--
-- TOC entry 7289 (class 2620 OID 33526)
-- Name: attendance_days_constraints check_service_study_year_rel; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_service_study_year_rel" BEFORE INSERT OR UPDATE ON "history"."attendance_days_constraints" FOR EACH ROW EXECUTE FUNCTION "history"."check_service_study_year_rel"();


--
-- TOC entry 7290 (class 2620 OID 33527)
-- Name: attendance_days check_update; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "check_update" BEFORE INSERT ON "history"."attendance_days" FOR EACH ROW EXECUTE FUNCTION "history"."check_attendance_days_update"();


--
-- TOC entry 7287 (class 2620 OID 33528)
-- Name: attendance_history insert_person_edit_history; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "insert_person_edit_history" AFTER INSERT OR UPDATE ON "history"."attendance_history" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"();


--
-- TOC entry 7315 (class 2620 OID 33529)
-- Name: call_history insert_person_edit_history; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "insert_person_edit_history" AFTER INSERT ON "history"."call_history" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"();


--
-- TOC entry 7316 (class 2620 OID 33530)
-- Name: confession_history insert_person_edit_history; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "insert_person_edit_history" AFTER INSERT ON "history"."confession_history" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"();


--
-- TOC entry 7317 (class 2620 OID 33531)
-- Name: kodas_history insert_person_edit_history; Type: TRIGGER; Schema: history; Owner: -
--

CREATE TRIGGER "insert_person_edit_history" AFTER INSERT ON "history"."kodas_history" FOR EACH ROW EXECUTE FUNCTION "history"."insert_person_edit_history"();


--
-- TOC entry 7293 (class 2620 OID 148424)
-- Name: families check_family_has_street; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_family_has_street" AFTER INSERT OR UPDATE ON "public"."families" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_family_has_street"();


--
-- TOC entry 7294 (class 2620 OID 148426)
-- Name: families check_family_street_same_area; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_family_street_same_area" AFTER INSERT OR UPDATE ON "public"."families" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_family_street_same_area"();


--
-- TOC entry 7310 (class 2620 OID 33532)
-- Name: persons_groups check_person_group_service_rel; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_person_group_service_rel" AFTER INSERT OR UPDATE ON "public"."persons_groups" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_person_group_service_rel"();


--
-- TOC entry 7319 (class 2620 OID 33534)
-- Name: persons_services check_persons_service_rel; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_persons_service_rel" AFTER INSERT OR UPDATE ON "public"."persons_services" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_persons_service_rel"();


--
-- TOC entry 7321 (class 2620 OID 33536)
-- Name: persons_tags check_persons_tags_insertion; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_persons_tags_insertion" AFTER INSERT OR UPDATE ON "public"."persons_tags" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_persons_tags_insertion"();


--
-- TOC entry 7300 (class 2620 OID 33538)
-- Name: stores check_store_admin_family_update; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_store_admin_family_update" AFTER UPDATE ON "public"."stores" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_store_admin_family_update"();


--
-- TOC entry 7301 (class 2620 OID 148433)
-- Name: stores check_store_has_street; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_store_has_street" AFTER INSERT OR UPDATE ON "public"."stores" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_store_has_street"();


--
-- TOC entry 7304 (class 2620 OID 148429)
-- Name: streets check_street_has_area; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "check_street_has_area" AFTER INSERT OR UPDATE ON "public"."streets" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_street_has_area"();


--
-- TOC entry 7291 (class 2620 OID 33540)
-- Name: areas edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."areas" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7309 (class 2620 OID 33541)
-- Name: classes edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."classes" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7295 (class 2620 OID 33542)
-- Name: families edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."families" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7318 (class 2620 OID 33543)
-- Name: families_families edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."families_families" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7313 (class 2620 OID 33544)
-- Name: groups edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."groups" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7297 (class 2620 OID 33545)
-- Name: persons edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."persons" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7311 (class 2620 OID 33546)
-- Name: persons_groups edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."persons_groups" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7320 (class 2620 OID 33547)
-- Name: persons_services edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."persons_services" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7322 (class 2620 OID 33548)
-- Name: persons_tags edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."persons_tags" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7314 (class 2620 OID 33549)
-- Name: services edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."services" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7302 (class 2620 OID 33550)
-- Name: stores edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."stores" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7305 (class 2620 OID 33551)
-- Name: streets edit_history; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"();


--
-- TOC entry 7298 (class 2620 OID 33552)
-- Name: persons persons_general_check; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER "persons_general_check" AFTER INSERT OR UPDATE ON "public"."persons" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."persons_general_check"();


--
-- TOC entry 7292 (class 2620 OID 148422)
-- Name: areas sync_area_streets; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_area_streets" AFTER INSERT OR UPDATE ON "public"."areas" FOR EACH ROW EXECUTE FUNCTION "public"."sync_area_streets"();


--
-- TOC entry 7296 (class 2620 OID 148423)
-- Name: families sync_family_streets; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_family_streets" AFTER INSERT OR UPDATE ON "public"."families" FOR EACH ROW EXECUTE FUNCTION "public"."sync_family_streets"();


--
-- TOC entry 7303 (class 2620 OID 148435)
-- Name: stores sync_store_streets; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_store_streets" AFTER INSERT OR UPDATE ON "public"."stores" FOR EACH ROW EXECUTE FUNCTION "public"."sync_store_streets"();


--
-- TOC entry 7306 (class 2620 OID 148431)
-- Name: streets sync_street_areas; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_street_areas" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "public"."sync_street_areas"();


--
-- TOC entry 7307 (class 2620 OID 148432)
-- Name: streets sync_street_families; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_street_families" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "public"."sync_street_families"();


--
-- TOC entry 7308 (class 2620 OID 148428)
-- Name: streets sync_street_stores; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_street_stores" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "public"."sync_street_stores"();


--
-- TOC entry 7299 (class 2620 OID 33554)
-- Name: persons sync_user_with_person; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "sync_user_with_person" AFTER INSERT OR UPDATE ON "public"."persons" FOR EACH ROW EXECUTE FUNCTION "history"."sync_user_with_person_trigger"();


--
-- TOC entry 7248 (class 2606 OID 33555)
-- Name: users_admin_on users_admin_on_admin_on_area_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_admin_on_area_fkey" FOREIGN KEY ("admin_on_area") REFERENCES "public"."areas"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7249 (class 2606 OID 33560)
-- Name: users_admin_on users_admin_on_admin_on_group_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_admin_on_group_fkey" FOREIGN KEY ("admin_on_group") REFERENCES "public"."groups"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7250 (class 2606 OID 33565)
-- Name: users_admin_on users_admin_on_admin_on_service_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_admin_on_service_fkey" FOREIGN KEY ("admin_on_service") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7251 (class 2606 OID 33570)
-- Name: users_admin_on users_admin_on_uid_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_admin_on"
    ADD CONSTRAINT "users_admin_on_uid_fkey" FOREIGN KEY ("uid") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7252 (class 2606 OID 33575)
-- Name: users_permissions users_permissions_uid_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY "auth"."users_permissions"
    ADD CONSTRAINT "users_permissions_uid_fkey" FOREIGN KEY ("uid") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7257 (class 2606 OID 33580)
-- Name: perons_labels perons_labels_person_id_fkey; Type: FK CONSTRAINT; Schema: face_recognition; Owner: -
--

ALTER TABLE ONLY "face_recognition"."perons_labels"
    ADD CONSTRAINT "perons_labels_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 7258 (class 2606 OID 33585)
-- Name: hdb_cron_event_invocation_logs hdb_cron_event_invocation_logs_event_id_fkey; Type: FK CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_cron_event_invocation_logs"
    ADD CONSTRAINT "hdb_cron_event_invocation_logs_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "hdb_catalog"."hdb_cron_events"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 7259 (class 2606 OID 33590)
-- Name: hdb_scheduled_event_invocation_logs hdb_scheduled_event_invocation_logs_event_id_fkey; Type: FK CONSTRAINT; Schema: hdb_catalog; Owner: -
--

ALTER TABLE ONLY "hdb_catalog"."hdb_scheduled_event_invocation_logs"
    ADD CONSTRAINT "hdb_scheduled_event_invocation_logs_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "hdb_catalog"."hdb_scheduled_events"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 7226 (class 2606 OID 33595)
-- Name: attendance_days_constraints attendance_days_constraints_fk; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_fk" FOREIGN KEY ("day_id") REFERENCES "history"."attendance_days"("day") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7227 (class 2606 OID 33600)
-- Name: attendance_days_constraints attendance_days_constraints_group_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_group_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7228 (class 2606 OID 33605)
-- Name: attendance_days_constraints attendance_days_constraints_service_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_service_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7229 (class 2606 OID 33610)
-- Name: attendance_days_constraints attendance_days_constraints_service_study_year_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_days_constraints"
    ADD CONSTRAINT "attendance_days_constraints_service_study_year_fkey" FOREIGN KEY ("service_study_year") REFERENCES "public"."study_years"("order") ON DELETE RESTRICT;


--
-- TOC entry 7219 (class 2606 OID 33615)
-- Name: attendance_history attendance_history_day_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_day_id_fkey" FOREIGN KEY ("day_id") REFERENCES "history"."attendance_days"("day") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7220 (class 2606 OID 33620)
-- Name: attendance_history attendance_history_group_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7221 (class 2606 OID 33625)
-- Name: attendance_history attendance_history_person_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7222 (class 2606 OID 33630)
-- Name: attendance_history attendance_history_recorded_by_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7223 (class 2606 OID 33635)
-- Name: attendance_history attendance_history_service_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_service_id_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7224 (class 2606 OID 33640)
-- Name: attendance_history attendance_history_service_study_year_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."attendance_history"
    ADD CONSTRAINT "attendance_history_service_study_year_fkey" FOREIGN KEY ("service_study_year") REFERENCES "public"."study_years"("order") ON DELETE RESTRICT;


--
-- TOC entry 7260 (class 2606 OID 33645)
-- Name: call_history call_history_person_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."call_history"
    ADD CONSTRAINT "call_history_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id");


--
-- TOC entry 7261 (class 2606 OID 33650)
-- Name: call_history call_history_recorded_by_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."call_history"
    ADD CONSTRAINT "call_history_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7262 (class 2606 OID 33655)
-- Name: confession_history confession_history_day_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_day_id_fkey" FOREIGN KEY ("day_id") REFERENCES "history"."attendance_days"("day") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7263 (class 2606 OID 33660)
-- Name: confession_history confession_history_person_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7264 (class 2606 OID 33665)
-- Name: confession_history confession_history_recorded_by_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."confession_history"
    ADD CONSTRAINT "confession_history_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7225 (class 2606 OID 33670)
-- Name: edit_history edit_history_user_uid_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."edit_history"
    ADD CONSTRAINT "edit_history_user_uid_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7265 (class 2606 OID 33675)
-- Name: kodas_history kodas_history_day_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_day_id_fkey" FOREIGN KEY ("day_id") REFERENCES "history"."attendance_days"("day") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7266 (class 2606 OID 33680)
-- Name: kodas_history kodas_history_person_id_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7267 (class 2606 OID 33685)
-- Name: kodas_history kodas_history_recorded_by_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."kodas_history"
    ADD CONSTRAINT "kodas_history_recorded_by_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7230 (class 2606 OID 33690)
-- Name: visit_history visit_history_user_uid_fkey; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_history"
    ADD CONSTRAINT "visit_history_user_uid_fkey" FOREIGN KEY ("recorded_by") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7278 (class 2606 OID 49175)
-- Name: visit_periods visit_periods_fk; Type: FK CONSTRAINT; Schema: history; Owner: -
--

ALTER TABLE ONLY "history"."visit_periods"
    ADD CONSTRAINT "visit_periods_fk" FOREIGN KEY ("category_id") REFERENCES "history"."visit_categories"("id") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 7279 (class 2606 OID 148368)
-- Name: areas_streets areas_streets_areas_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."areas_streets"
    ADD CONSTRAINT "areas_streets_areas_fk" FOREIGN KEY ("area_id") REFERENCES "public"."areas"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 7280 (class 2606 OID 148373)
-- Name: areas_streets areas_streets_streets_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."areas_streets"
    ADD CONSTRAINT "areas_streets_streets_fk" FOREIGN KEY ("street_id") REFERENCES "public"."streets"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 7244 (class 2606 OID 33695)
-- Name: classes classes_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_service_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7245 (class 2606 OID 33700)
-- Name: classes classes_service_study_year_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."classes"
    ADD CONSTRAINT "classes_service_study_year_fkey" FOREIGN KEY ("service_study_year") REFERENCES "public"."study_years"("order") ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 7268 (class 2606 OID 33705)
-- Name: colleges colleges_university_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."colleges"
    ADD CONSTRAINT "colleges_university_id_fkey" FOREIGN KEY ("university_id") REFERENCES "public"."universities"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7269 (class 2606 OID 148456)
-- Name: families_families families_families_inner_family_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families_families"
    ADD CONSTRAINT "families_families_inner_family_id_fkey" FOREIGN KEY ("child_family_id") REFERENCES "public"."families"("id") ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7270 (class 2606 OID 148461)
-- Name: families_families families_families_outer_family_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."families_families"
    ADD CONSTRAINT "families_families_outer_family_id_fkey" FOREIGN KEY ("parent_family_id") REFERENCES "public"."families"("id") ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7271 (class 2606 OID 33720)
-- Name: fathers fathers_church_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."fathers"
    ADD CONSTRAINT "fathers_church_id_fkey" FOREIGN KEY ("church_id") REFERENCES "public"."churches"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7253 (class 2606 OID 33725)
-- Name: groups groups_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."groups"
    ADD CONSTRAINT "groups_service_id_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 7231 (class 2606 OID 155730)
-- Name: persons persons_church_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_church_id_fkey" FOREIGN KEY ("church_id") REFERENCES "public"."churches"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7232 (class 2606 OID 155735)
-- Name: persons persons_college_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_college_id_fkey" FOREIGN KEY ("college_id") REFERENCES "public"."colleges"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7233 (class 2606 OID 155740)
-- Name: persons persons_family_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_family_id_fkey" FOREIGN KEY ("family_id") REFERENCES "public"."families"("id") ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7234 (class 2606 OID 155745)
-- Name: persons persons_father_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_father_id_fkey" FOREIGN KEY ("father_id") REFERENCES "public"."fathers"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7246 (class 2606 OID 33750)
-- Name: persons_groups persons_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_groups"
    ADD CONSTRAINT "persons_groups_group_id_fkey" FOREIGN KEY ("group_id") REFERENCES "public"."groups"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7247 (class 2606 OID 33755)
-- Name: persons_groups persons_groups_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_groups"
    ADD CONSTRAINT "persons_groups_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7272 (class 2606 OID 33760)
-- Name: persons_hobbies persons_hobbies_hobby_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_hobbies"
    ADD CONSTRAINT "persons_hobbies_hobby_id_fkey" FOREIGN KEY ("hobby_id") REFERENCES "public"."hobbies"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7273 (class 2606 OID 33765)
-- Name: persons_hobbies persons_hobbies_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_hobbies"
    ADD CONSTRAINT "persons_hobbies_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7235 (class 2606 OID 155750)
-- Name: persons persons_job_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_job_fkey" FOREIGN KEY ("job_id") REFERENCES "public"."jobs"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7236 (class 2606 OID 155755)
-- Name: persons persons_person_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_person_type_fkey" FOREIGN KEY ("person_type_id") REFERENCES "public"."person_types"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7237 (class 2606 OID 155760)
-- Name: persons persons_qualification_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_qualification_fkey" FOREIGN KEY ("qualification_id") REFERENCES "public"."qualifications"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7238 (class 2606 OID 155765)
-- Name: persons persons_school_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_school_id_fkey" FOREIGN KEY ("school_id") REFERENCES "public"."schools"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7274 (class 2606 OID 33790)
-- Name: persons_services persons_services_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_services"
    ADD CONSTRAINT "persons_services_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7275 (class 2606 OID 33795)
-- Name: persons_services persons_services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_services"
    ADD CONSTRAINT "persons_services_service_id_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7239 (class 2606 OID 155770)
-- Name: persons persons_shammas_level_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_shammas_level_fkey" FOREIGN KEY ("shammas_level_id") REFERENCES "public"."shammas_levels"("id") ON UPDATE RESTRICT ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7240 (class 2606 OID 155775)
-- Name: persons persons_state_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_state_fkey" FOREIGN KEY ("state_id") REFERENCES "public"."person_states"("id") ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7241 (class 2606 OID 155780)
-- Name: persons persons_study_year_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_study_year_id_fkey" FOREIGN KEY ("study_year_id") REFERENCES "public"."study_years"("order") ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7276 (class 2606 OID 33815)
-- Name: persons_tags persons_tags_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_tags"
    ADD CONSTRAINT "persons_tags_person_id_fkey" FOREIGN KEY ("person_id") REFERENCES "public"."persons"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7277 (class 2606 OID 33820)
-- Name: persons_tags persons_tags_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons_tags"
    ADD CONSTRAINT "persons_tags_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id") ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 7242 (class 2606 OID 155785)
-- Name: persons persons_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."persons"
    ADD CONSTRAINT "persons_uid_fkey" FOREIGN KEY ("uid") REFERENCES "auth"."users_data"("uid") ON UPDATE RESTRICT ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 7254 (class 2606 OID 33830)
-- Name: services services_next_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_next_service_fkey" FOREIGN KEY ("next_service_id") REFERENCES "public"."services"("id") ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- TOC entry 7255 (class 2606 OID 33835)
-- Name: services services_study_year_from_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_study_year_from_fkey" FOREIGN KEY ("study_year_from_id") REFERENCES "public"."study_years"("order") ON DELETE RESTRICT;


--
-- TOC entry 7256 (class 2606 OID 33840)
-- Name: services services_study_year_to_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_study_year_to_fkey" FOREIGN KEY ("study_year_to_id") REFERENCES "public"."study_years"("order") ON DELETE RESTRICT;


--
-- TOC entry 7243 (class 2606 OID 33845)
-- Name: stores stores_admin_family_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."stores"
    ADD CONSTRAINT "stores_admin_family_fkey" FOREIGN KEY ("admin_family") REFERENCES "public"."families"("id") ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- TOC entry 7283 (class 2606 OID 148399)
-- Name: streets_families streets_families_families_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_families"
    ADD CONSTRAINT "streets_families_families_fk" FOREIGN KEY ("family_id") REFERENCES "public"."families"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 7284 (class 2606 OID 148404)
-- Name: streets_families streets_families_streets_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_families"
    ADD CONSTRAINT "streets_families_streets_fk" FOREIGN KEY ("street_id") REFERENCES "public"."streets"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 7281 (class 2606 OID 148383)
-- Name: streets_stores streets_stores_stores_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_stores"
    ADD CONSTRAINT "streets_stores_stores_fk" FOREIGN KEY ("store_id") REFERENCES "public"."stores"("id") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 7282 (class 2606 OID 148388)
-- Name: streets_stores streets_stores_streets_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."streets_stores"
    ADD CONSTRAINT "streets_stores_streets_fk" FOREIGN KEY ("street_id") REFERENCES "public"."streets"("id") ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2024-05-10 01:06:13 EEST

--
-- PostgreSQL database dump complete
--

