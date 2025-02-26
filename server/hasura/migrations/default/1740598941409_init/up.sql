SET transaction_timeout = 0;
SET check_function_bodies = false;
CREATE FUNCTION public._user_allowed_to_change_other_user(user_uid uuid, manager_uid uuid) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE TABLE public.areas (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    bounds public.geography(Polygon,4326),
    color bigint,
    photo_updated_at timestamp with time zone,
    blurhash text
);
CREATE TABLE public.families (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    address text,
    geolocation public.geography(Point,4326),
    notes text,
    color bigint,
    photo_updated_at timestamp with time zone,
    blurhash text
);
CREATE FUNCTION public.area_families(area public.areas, hasura_session json) RETURNS SETOF public.families
    LANGUAGE sql STABLE
    AS $$
    SELECT family
    FROM areas_streets
    JOIN streets_families ON streets_families.street_id = areas_streets.street_id
    JOIN families family ON family.id = streets_families.family_id
    WHERE areas_streets.area_id = area.id
$$;
CREATE TABLE public.persons (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    address text,
    geolocation public.geography(Point,4326),
    main_phone text,
    other_phones jsonb DEFAULT '{}'::jsonb NOT NULL,
    birthdate date,
    gender boolean DEFAULT true NOT NULL,
    is_shammas boolean DEFAULT false NOT NULL,
    shammas_level_id uuid,
    school_id uuid,
    college_id uuid,
    church_id uuid,
    father_id uuid,
    is_student boolean DEFAULT false,
    job_id uuid,
    job_description text,
    qualification_id uuid,
    person_type_id uuid,
    state_id uuid,
    is_servant boolean DEFAULT false NOT NULL,
    notes text,
    uid uuid,
    family_id uuid,
    store_id uuid,
    study_year_id smallint,
    color bigint,
    photo_updated_at timestamp with time zone,
    blurhash text,
    CONSTRAINT persons_shammas_level CHECK ((((is_shammas = false) AND (shammas_level_id IS NULL)) OR ((is_shammas = true) AND (shammas_level_id IS NOT NULL))))
);
CREATE FUNCTION public.area_persons(area public.areas, hasura_session json) RETURNS SETOF public.persons
    LANGUAGE sql STABLE
    AS $$
    SELECT person
    FROM areas_streets
    JOIN streets_families ON streets_families.street_id = areas_streets.street_id
    JOIN persons person ON person.family_id = streets_families.family_id
    WHERE area.id = areas_streets.area_id
$$;
CREATE TABLE public.stores (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    geolocation public.geography(Point,4326),
    admin_family uuid,
    color bigint,
    photo_updated_at timestamp with time zone,
    blurhash text,
    address text,
    CONSTRAINT stores_check_family_or_geolocation CHECK (((admin_family IS NOT NULL) OR (geolocation IS NOT NULL)))
);
CREATE FUNCTION public.area_stores(area public.areas, hasura_session json) RETURNS SETOF public.stores
    LANGUAGE sql STABLE
    AS $$
    SELECT store
    FROM areas_streets
    JOIN streets_stores ON streets_stores.street_id = areas_streets.street_id
    JOIN stores store ON store.id = streets_stores.store_id
    WHERE areas_streets.area_id = area.id
$$;
CREATE TABLE public.streets (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    line public.geography(LineString,4326),
    color bigint,
    photo_updated_at timestamp with time zone,
    blurhash text
);
CREATE FUNCTION public.area_streets(area public.areas, hasura_session json) RETURNS SETOF public.streets
    LANGUAGE sql STABLE
    AS $$
    SELECT street
    FROM areas_streets
    JOIN streets street ON street.id = areas_streets.street_id
    WHERE areas_streets.area_id = area.id
$$;
CREATE FUNCTION public.check_family_has_street() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.check_family_street_same_area() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.check_person_group_service_rel() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.check_persons_groups_insertion() RETURNS trigger
    LANGUAGE plpgsql STABLE
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
CREATE FUNCTION public.check_persons_insertion() RETURNS trigger
    LANGUAGE plpgsql STABLE
    AS $$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or public."user_allowed_to_write_person"(new, hasura_session) then return new;
else raise exception 'User is not authorized to insert this person';
end if;
END;
$$;
CREATE FUNCTION public.check_persons_service_rel() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.check_persons_services_insertion() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.check_persons_tags_insertion() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.check_store_admin_family_update() RETURNS trigger
    LANGUAGE plpgsql STABLE
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
CREATE FUNCTION public.check_store_has_street() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.check_street_has_area() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.family_areas(family public.families, hasura_session json) RETURNS SETOF public.areas
    LANGUAGE sql STABLE
    AS $$
    SELECT area
    FROM streets_families
    JOIN areas_streets ON streets_families.street_id = areas_streets.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_families.family_id = family.id
$$;
CREATE FUNCTION public.family_streets(family public.families, hasura_session json) RETURNS SETOF public.streets
    LANGUAGE sql STABLE
    AS $$
    SELECT street
    FROM streets_families
    JOIN streets street ON street.id = streets_families.street_id
    WHERE streets_families.family_id = family.id
$$;
CREATE FUNCTION public.get_person_birthday(person public.persons) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$
select to_char(person.birthdate, 'MM-DD');
$$;
CREATE TABLE public.classes (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    service_id uuid NOT NULL,
    service_study_year integer NOT NULL,
    service_gender boolean,
    color bigint,
    photo_updated_at timestamp with time zone,
    blurhash text
);
CREATE FUNCTION public.get_person_classes(person public.persons, hasura_session json) RETURNS SETOF public.classes
    LANGUAGE sql STABLE
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
CREATE FUNCTION public.person_areas(person public.persons, hasura_session json) RETURNS SETOF public.areas
    LANGUAGE sql STABLE
    AS $$
    SELECT area
    FROM streets_families
    JOIN areas_streets ON areas_streets.street_id = streets_families.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_families.family_id = person.family_id
$$;
CREATE FUNCTION public.person_streets(person public.persons, hasura_session json) RETURNS SETOF public.streets
    LANGUAGE sql STABLE
    AS $$
    SELECT street
    FROM streets_families
    JOIN streets street ON street.id = streets_families.street_id
    WHERE streets_families.family_id = person.family_id
$$;
CREATE FUNCTION public.persons_general_check() RETURNS trigger
    LANGUAGE plpgsql STABLE
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
CREATE FUNCTION public.persons_groups_check() RETURNS trigger
    LANGUAGE plpgsql STABLE
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
CREATE TABLE public.persons_groups (
    person_id uuid NOT NULL,
    group_id uuid NOT NULL,
    rel_id uuid DEFAULT gen_random_uuid() NOT NULL
);
CREATE FUNCTION public.persons_groups_check(person_group public.persons_groups, hasura_session json) RETURNS boolean
    LANGUAGE plpgsql STABLE
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
CREATE FUNCTION public.set_current_timestamp_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare _new record;
begin _new := new;
_new."updated_at" = now();
return _new;
end;
$$;
CREATE FUNCTION public.store_areas(store public.stores, hasura_session json) RETURNS SETOF public.areas
    LANGUAGE sql STABLE
    AS $$
    SELECT area
    FROM streets_stores
    JOIN areas_streets ON areas_streets.street_id = streets_stores.street_id
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE streets_stores.store_id = store.id
$$;
CREATE FUNCTION public.store_persons(store public.stores, hasura_session json) RETURNS SETOF public.persons
    LANGUAGE sql STABLE
    AS $$
    SELECT person
    FROM persons person
    WHERE person.store_id = store.id;
$$;
CREATE FUNCTION public.store_streets(store public.stores, hasura_session json) RETURNS SETOF public.streets
    LANGUAGE sql STABLE
    AS $$
    SELECT street
    FROM streets_stores
    JOIN streets street ON street.id = streets_stores.street_id
    WHERE streets_stores.store_id = store.id
$$;
CREATE FUNCTION public.street_areas(street public.streets, hasura_session json) RETURNS SETOF public.areas
    LANGUAGE sql STABLE
    AS $$
    SELECT area
    FROM areas_streets
    JOIN areas area ON area.id = areas_streets.area_id
    WHERE areas_streets.street_id = street.id
$$;
CREATE FUNCTION public.street_families(street public.streets, hasura_session json) RETURNS SETOF public.families
    LANGUAGE sql STABLE
    AS $$
    SELECT family
    FROM streets_families
    JOIN families family ON family.id = streets_families.family_id
    WHERE streets_families.street_id = street.id
$$;
CREATE FUNCTION public.street_persons(street public.streets, hasura_session json) RETURNS SETOF public.persons
    LANGUAGE sql STABLE
    AS $$
    SELECT person
    FROM streets_families
    JOIN persons person ON person.family_id = streets_families.family_id
    WHERE streets_families.street_id = street.id
$$;
CREATE FUNCTION public.street_stores(street public.streets, hasura_session json) RETURNS SETOF public.stores
    LANGUAGE sql STABLE
    AS $$
    SELECT store
    FROM streets_stores
    JOIN stores store ON store.id = streets_stores.store_id
    WHERE streets_stores.street_id = street.id
$$;
CREATE FUNCTION public.sync_area_streets() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.sync_family_streets() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.sync_store_streets() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.sync_street_areas() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.sync_street_families() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.sync_street_stores() RETURNS trigger
    LANGUAGE plpgsql
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
CREATE FUNCTION public.user_allowed_to_change_user_data(_user auth.users_data, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;
CREATE FUNCTION public.user_allowed_to_change_user_permissions(_user auth.users_admin_on, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;
CREATE FUNCTION public.user_allowed_to_change_user_permissions(_user auth.users_permissions, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;
CREATE FUNCTION public.user_allowed_to_delete_user(_user auth.users_data, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
    SELECT _user_allowed_to_change_other_user(_user.uid,(hasura_session ->> 'x-hasura-user-id')::uuid);
$$;
CREATE FUNCTION public.user_allowed_to_read_area(area public.areas, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_read_class(_class public.classes, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_read_family(family public.families, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE TABLE public.groups (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    service_id uuid NOT NULL,
    validity daterange,
    color bigint,
    photo_updated_at timestamp with time zone,
    blurhash text
);
COMMENT ON TABLE public.groups IS 'TODO: check validity while checking permissions';
CREATE FUNCTION public.user_allowed_to_read_group(_group public.groups, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_read_person(person public.persons, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE TABLE public.services (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    study_year_from_id smallint,
    study_year_to_id smallint,
    next_service_id uuid,
    color bigint,
    photo_updated_at timestamp with time zone,
    blurhash text,
    CONSTRAINT "study_year_range check" CHECK ((((study_year_from_id IS NULL) AND (study_year_to_id IS NULL)) OR ((study_year_from_id IS NOT NULL) AND (study_year_to_id IS NOT NULL) AND (study_year_from_id <= study_year_to_id))))
);
CREATE FUNCTION public.user_allowed_to_read_service(service public.services, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_read_store(store public.stores, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_read_street(street public.streets, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_read_user(_user auth.users_data, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
    SELECT _user.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
        OR _user_allowed_to_change_other_user(_user.uid, (hasura_session ->> 'x-hasura-user-id')::uuid);
$$;
CREATE FUNCTION public.user_allowed_to_write_area(area public.areas, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_write_class(_class public.classes, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_write_family(family public.families, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_write_group(_group public.groups, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_write_person(person public.persons, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_write_service(service public.services, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_write_store(store public.stores, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE FUNCTION public.user_allowed_to_write_street(street public.streets, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
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
CREATE TABLE public.areas_streets (
    area_id uuid NOT NULL,
    street_id uuid NOT NULL
);
CREATE TABLE public.churches (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL
);
CREATE TABLE public.colleges (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    university_id uuid
);
CREATE TABLE public.config (
    key text NOT NULL,
    value text
);
CREATE TABLE public.families_families (
    parent_family_id uuid NOT NULL,
    child_family_id uuid NOT NULL,
    rel_id uuid DEFAULT gen_random_uuid() NOT NULL
);
CREATE TABLE public.fathers (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    church_id uuid
);
CREATE TABLE public.hobbies (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    color bigint
);
CREATE TABLE public.jobs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL
);
CREATE TABLE public.person_states (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    color bigint NOT NULL
);
CREATE TABLE public.person_types (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    "order" integer NOT NULL
);
CREATE TABLE public.persons_hobbies (
    rel_id uuid DEFAULT gen_random_uuid() NOT NULL,
    person_id uuid NOT NULL,
    hobby_id uuid NOT NULL
);
CREATE TABLE public.persons_services (
    person_id uuid NOT NULL,
    service_id uuid NOT NULL,
    rel_id uuid DEFAULT gen_random_uuid() NOT NULL
);
CREATE TABLE public.persons_tags (
    person_id uuid NOT NULL,
    tag_id uuid NOT NULL,
    rel_id uuid DEFAULT gen_random_uuid() NOT NULL
);
CREATE TABLE public.qualifications (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL
);
CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);
CREATE TABLE public.schools (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL
);
CREATE TABLE public.shammas_levels (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    "order" integer NOT NULL
);
CREATE TABLE public.streets_families (
    street_id uuid NOT NULL,
    family_id uuid NOT NULL
);
CREATE TABLE public.streets_stores (
    street_id uuid NOT NULL,
    store_id uuid NOT NULL
);
CREATE TABLE public.study_years (
    name text NOT NULL,
    "order" smallint NOT NULL,
    id text GENERATED ALWAYS AS ("order") STORED
);
CREATE TABLE public.tags (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    color bigint
);
CREATE TABLE public.universities (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL
);
ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.areas_streets
    ADD CONSTRAINT areas_streets_pk PRIMARY KEY (area_id, street_id);
ALTER TABLE ONLY public.churches
    ADD CONSTRAINT churches_name_key UNIQUE (name);
ALTER TABLE ONLY public.churches
    ADD CONSTRAINT churches_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.colleges
    ADD CONSTRAINT colleges_name_key UNIQUE (name);
ALTER TABLE ONLY public.colleges
    ADD CONSTRAINT colleges_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.config
    ADD CONSTRAINT config_pkey PRIMARY KEY (key);
ALTER TABLE ONLY public.families_families
    ADD CONSTRAINT families_families_pkey PRIMARY KEY (rel_id);
ALTER TABLE ONLY public.families_families
    ADD CONSTRAINT families_families_rel_id_key UNIQUE (rel_id);
ALTER TABLE ONLY public.families
    ADD CONSTRAINT families_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.fathers
    ADD CONSTRAINT fathers_name_key UNIQUE (name);
ALTER TABLE ONLY public.fathers
    ADD CONSTRAINT fathers_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.hobbies
    ADD CONSTRAINT hobbies_name_key UNIQUE (name);
ALTER TABLE ONLY public.hobbies
    ADD CONSTRAINT hobbies_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_name_key UNIQUE (name);
ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.person_types
    ADD CONSTRAINT person_types_name_key UNIQUE (name);
ALTER TABLE ONLY public.person_types
    ADD CONSTRAINT person_types_order_key UNIQUE ("order");
ALTER TABLE ONLY public.person_types
    ADD CONSTRAINT person_types_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.persons_groups
    ADD CONSTRAINT persons_groups_person_id_group_id_key UNIQUE (person_id, group_id);
ALTER TABLE ONLY public.persons_groups
    ADD CONSTRAINT persons_groups_pkey PRIMARY KEY (rel_id);
ALTER TABLE ONLY public.persons_hobbies
    ADD CONSTRAINT persons_hobbies_pkey PRIMARY KEY (rel_id);
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.persons_services
    ADD CONSTRAINT persons_services_person_id_service_id_key UNIQUE (person_id, service_id);
ALTER TABLE ONLY public.persons_services
    ADD CONSTRAINT persons_services_pkey PRIMARY KEY (rel_id);
ALTER TABLE ONLY public.persons_tags
    ADD CONSTRAINT persons_tags_pkey PRIMARY KEY (rel_id);
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_uid_key UNIQUE (uid);
ALTER TABLE ONLY public.qualifications
    ADD CONSTRAINT qualifications_name_key UNIQUE (name);
ALTER TABLE ONLY public.qualifications
    ADD CONSTRAINT qualifications_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_name_key UNIQUE (name);
ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_name_key UNIQUE (name);
ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.shammas_levels
    ADD CONSTRAINT shammas_level_name_key UNIQUE (name);
ALTER TABLE ONLY public.shammas_levels
    ADD CONSTRAINT shammas_level_order_key UNIQUE ("order");
ALTER TABLE ONLY public.shammas_levels
    ADD CONSTRAINT shammas_level_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.person_states
    ADD CONSTRAINT states_color_key UNIQUE (color);
ALTER TABLE ONLY public.person_states
    ADD CONSTRAINT states_name_key UNIQUE (name);
ALTER TABLE ONLY public.person_states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.streets_families
    ADD CONSTRAINT streets_families_pk PRIMARY KEY (street_id, family_id);
ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.streets_stores
    ADD CONSTRAINT streets_stores_pk PRIMARY KEY (street_id, store_id);
ALTER TABLE ONLY public.study_years
    ADD CONSTRAINT study_years_name_key UNIQUE (name);
ALTER TABLE ONLY public.study_years
    ADD CONSTRAINT study_years_order_key UNIQUE ("order");
ALTER TABLE ONLY public.study_years
    ADD CONSTRAINT study_years_pkey PRIMARY KEY ("order");
ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);
ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_name_key UNIQUE (name);
ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_pkey PRIMARY KEY (id);
CREATE INDEX areas_bounds_index ON public.areas USING gist (bounds);
CREATE INDEX areas_id_bounds_index ON public.areas USING btree (id, bounds);
CREATE INDEX areas_idx_id_bounds ON public.areas USING btree (id, bounds);
CREATE INDEX classes_service_id_idx ON public.classes USING btree (service_id, service_study_year, service_gender);
CREATE INDEX families_families_child_family_id_idx ON public.families_families USING btree (child_family_id);
CREATE INDEX families_families_parent_family_id_idx ON public.families_families USING btree (parent_family_id);
CREATE INDEX families_locations_index ON public.families USING gist (geolocation);
CREATE INDEX groups_service_id_idx ON public.groups USING btree (service_id);
CREATE UNIQUE INDEX idx_persons_clean_name_main_phone_birthdate ON public.persons USING btree (replace(replace(replace(replace(replace(name, 'ى'::text, 'ي'::text), 'أ'::text, 'ا'::text), 'إ'::text, 'ا'::text), 'آ'::text, 'ا'::text), 'ة'::text, 'ه'::text), main_phone, birthdate);
CREATE INDEX persons_birthdays ON public.persons USING btree (public.get_person_birthday(persons.*));
CREATE INDEX persons_groups_group_id_idx ON public.persons_groups USING btree (group_id);
CREATE INDEX persons_hobbies_person_id_idx ON public.persons_hobbies USING btree (person_id);
CREATE INDEX persons_locations_index ON public.persons USING gist (geolocation);
CREATE INDEX persons_services_service_id_idx ON public.persons_services USING btree (service_id);
CREATE INDEX persons_tags_person_id_idx ON public.persons_tags USING btree (person_id);
CREATE INDEX stores_admin_family_idx ON public.stores USING btree (admin_family);
CREATE INDEX stores_locations_index ON public.stores USING gist (geolocation);
CREATE INDEX streets_families_family_id_idx ON public.streets_families USING btree (family_id);
CREATE INDEX streets_line_index ON public.streets USING gist (line);
CREATE INDEX streets_stores_store_id_idx ON public.streets_stores USING btree (store_id);
CREATE CONSTRAINT TRIGGER check_family_has_street AFTER INSERT OR UPDATE ON public.families DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_family_has_street();
CREATE CONSTRAINT TRIGGER check_family_street_same_area AFTER INSERT OR UPDATE ON public.families DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_family_street_same_area();
CREATE CONSTRAINT TRIGGER check_person_group_service_rel AFTER INSERT OR UPDATE ON public.persons_groups DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_person_group_service_rel();
CREATE CONSTRAINT TRIGGER check_persons_service_rel AFTER INSERT OR UPDATE ON public.persons_services DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_persons_service_rel();
CREATE CONSTRAINT TRIGGER check_persons_tags_insertion AFTER INSERT OR UPDATE ON public.persons_tags DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_persons_tags_insertion();
CREATE CONSTRAINT TRIGGER check_store_admin_family_update AFTER UPDATE ON public.stores DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_store_admin_family_update();
CREATE CONSTRAINT TRIGGER check_store_has_street AFTER INSERT OR UPDATE ON public.stores DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_store_has_street();
CREATE CONSTRAINT TRIGGER check_street_has_area AFTER INSERT OR UPDATE ON public.streets DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_street_has_area();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.areas FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.classes FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.families FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.families_families FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.groups FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.persons FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.persons_groups FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.persons_services FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.persons_tags FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.services FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.stores FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history AFTER INSERT OR UPDATE ON public.streets FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE CONSTRAINT TRIGGER persons_general_check AFTER INSERT OR UPDATE ON public.persons DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.persons_general_check();
CREATE TRIGGER sync_area_streets AFTER INSERT OR UPDATE ON public.areas FOR EACH ROW EXECUTE FUNCTION public.sync_area_streets();
CREATE TRIGGER sync_family_streets AFTER INSERT OR UPDATE ON public.families FOR EACH ROW EXECUTE FUNCTION public.sync_family_streets();
CREATE TRIGGER sync_store_streets AFTER INSERT OR UPDATE ON public.stores FOR EACH ROW EXECUTE FUNCTION public.sync_store_streets();
CREATE TRIGGER sync_street_areas AFTER INSERT OR UPDATE ON public.streets FOR EACH ROW EXECUTE FUNCTION public.sync_street_areas();
CREATE TRIGGER sync_street_families AFTER INSERT OR UPDATE ON public.streets FOR EACH ROW EXECUTE FUNCTION public.sync_street_families();
CREATE TRIGGER sync_street_stores AFTER INSERT OR UPDATE ON public.streets FOR EACH ROW EXECUTE FUNCTION public.sync_street_stores();
CREATE TRIGGER sync_user_with_person AFTER INSERT OR UPDATE ON public.persons FOR EACH ROW EXECUTE FUNCTION history.sync_user_with_person_trigger();
ALTER TABLE ONLY public.areas_streets
    ADD CONSTRAINT areas_streets_areas_fk FOREIGN KEY (area_id) REFERENCES public.areas(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.areas_streets
    ADD CONSTRAINT areas_streets_streets_fk FOREIGN KEY (street_id) REFERENCES public.streets(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_service_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_service_study_year_fkey FOREIGN KEY (service_study_year) REFERENCES public.study_years("order") ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE ONLY public.colleges
    ADD CONSTRAINT colleges_university_id_fkey FOREIGN KEY (university_id) REFERENCES public.universities(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.families_families
    ADD CONSTRAINT families_families_inner_family_id_fkey FOREIGN KEY (child_family_id) REFERENCES public.families(id) ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.families_families
    ADD CONSTRAINT families_families_outer_family_id_fkey FOREIGN KEY (parent_family_id) REFERENCES public.families(id) ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.fathers
    ADD CONSTRAINT fathers_church_id_fkey FOREIGN KEY (church_id) REFERENCES public.churches(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_church_id_fkey FOREIGN KEY (church_id) REFERENCES public.churches(id) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_college_id_fkey FOREIGN KEY (college_id) REFERENCES public.colleges(id) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_family_id_fkey FOREIGN KEY (family_id) REFERENCES public.families(id) ON UPDATE RESTRICT ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_father_id_fkey FOREIGN KEY (father_id) REFERENCES public.fathers(id) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons_groups
    ADD CONSTRAINT persons_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons_groups
    ADD CONSTRAINT persons_groups_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.persons(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons_hobbies
    ADD CONSTRAINT persons_hobbies_hobby_id_fkey FOREIGN KEY (hobby_id) REFERENCES public.hobbies(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons_hobbies
    ADD CONSTRAINT persons_hobbies_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.persons(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_job_fkey FOREIGN KEY (job_id) REFERENCES public.jobs(id) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_person_type_fkey FOREIGN KEY (person_type_id) REFERENCES public.person_types(id) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_qualification_fkey FOREIGN KEY (qualification_id) REFERENCES public.qualifications(id) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_school_id_fkey FOREIGN KEY (school_id) REFERENCES public.schools(id) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons_services
    ADD CONSTRAINT persons_services_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.persons(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons_services
    ADD CONSTRAINT persons_services_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_shammas_level_fkey FOREIGN KEY (shammas_level_id) REFERENCES public.shammas_levels(id) ON UPDATE RESTRICT ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_state_fkey FOREIGN KEY (state_id) REFERENCES public.person_states(id) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_study_year_id_fkey FOREIGN KEY (study_year_id) REFERENCES public.study_years("order") ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.persons_tags
    ADD CONSTRAINT persons_tags_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.persons(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons_tags
    ADD CONSTRAINT persons_tags_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_uid_fkey FOREIGN KEY (uid) REFERENCES auth.users_data(uid) ON UPDATE RESTRICT ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_next_service_fkey FOREIGN KEY (next_service_id) REFERENCES public.services(id) ON UPDATE RESTRICT ON DELETE SET NULL;
ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_study_year_from_fkey FOREIGN KEY (study_year_from_id) REFERENCES public.study_years("order") ON DELETE RESTRICT;
ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_study_year_to_fkey FOREIGN KEY (study_year_to_id) REFERENCES public.study_years("order") ON DELETE RESTRICT;
ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_admin_family_fkey FOREIGN KEY (admin_family) REFERENCES public.families(id) ON UPDATE RESTRICT ON DELETE SET NULL;
ALTER TABLE ONLY public.streets_families
    ADD CONSTRAINT streets_families_families_fk FOREIGN KEY (family_id) REFERENCES public.families(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.streets_families
    ADD CONSTRAINT streets_families_streets_fk FOREIGN KEY (street_id) REFERENCES public.streets(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.streets_stores
    ADD CONSTRAINT streets_stores_stores_fk FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.streets_stores
    ADD CONSTRAINT streets_stores_streets_fk FOREIGN KEY (street_id) REFERENCES public.streets(id) ON UPDATE CASCADE ON DELETE CASCADE;
