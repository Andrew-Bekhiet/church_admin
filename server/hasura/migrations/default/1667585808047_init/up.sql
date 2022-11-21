SET check_function_bodies = false;
CREATE TABLE public.areas (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    bounds public.geography(Polygon,4326),
    color bigint,
    firestore_id text,
    photo_updated_at timestamp with time zone
);
CREATE TABLE public.families (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    address text,
    geolocation public.geography(Point,4326),
    notes text,
    color integer,
    photo_updated_at timestamp with time zone
);
CREATE TABLE public.groups (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    service_id uuid NOT NULL,
    validity daterange,
    color integer,
    photo_updated_at timestamp with time zone
);
COMMENT ON TABLE public.groups IS 'TODO: check validity while checking permissions';
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
    firestore_id text,
    photo_updated_at timestamp with time zone,
    CONSTRAINT persons_shammas_level CHECK ((((is_shammas = false) AND (shammas_level_id IS NULL)) OR ((is_shammas = true) AND (shammas_level_id IS NOT NULL))))
);
CREATE TABLE public.services (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    study_year_from smallint,
    study_year_to smallint,
    color integer,
    firestore_id text,
    photo_updated_at timestamp with time zone,
    next_service uuid,
    CONSTRAINT "study_year_range check" CHECK ((((study_year_from IS NULL) AND (study_year_to IS NULL)) OR ((study_year_from IS NOT NULL) AND (study_year_to IS NOT NULL) AND (study_year_from < study_year_to))))
);
CREATE TABLE public.stores (
    id uuid NOT NULL,
    name text NOT NULL,
    geolocation public.geography(Point,4326),
    admin_family uuid,
    color integer,
    photo_updated_at timestamp with time zone
);
CREATE TABLE public.streets (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    line public.geography(LineString,4326),
    color bigint,
    photo_updated_at timestamp with time zone
);
CREATE FUNCTION public.area_families(area public.areas, hasura_session json) RETURNS SETOF public.families
    LANGUAGE sql STABLE
    AS $$
select *
FROM families family
WHERE ST_DWithin(
        area.bounds,
        family.geolocation,
        (
            select "value"::integer
            from config
            where "key" = 'search_threshold'
        )
    );
$$;
CREATE FUNCTION public.area_persons(area public.areas, hasura_session json) RETURNS SETOF public.persons
    LANGUAGE sql STABLE
    AS $$
select *
FROM persons person
WHERE ST_DWithin(
        area.bounds,
        person.geolocation,
        (
            select "value"::integer
            from config
            where "key" = 'search_threshold'
        )
    );
$$;
CREATE FUNCTION public.area_stores(area public.areas, hasura_session json) RETURNS SETOF public.stores
    LANGUAGE sql STABLE
    AS $$
select *
FROM stores store
WHERE ST_DWithin(
        area.bounds,
        store.geolocation,
        (
            select "value"::integer
            from config
            where "key" = 'search_threshold'
        )
    );
$$;
CREATE FUNCTION public.area_streets(area public.areas, hasura_session json) RETURNS SETOF public.streets
    LANGUAGE sql STABLE
    AS $$
select *
FROM streets street
WHERE ST_Intersects(
        ST_Buffer(
            area.bounds,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        street.line
    );
$$;
CREATE FUNCTION public.check_person_group_service_rel() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare hasura_session JSON;
begin if (
    exists(
        select 1
        from groups g,
            persons_services ps
        where g.id = new.group_id
            and g.service_id = ps.service_id
            and ps.person_id = new.person_id
    )
) then return new;
else raise exception 'Person must be in the group parent service to be inserted in the group';
end if;
end;
$$;
CREATE FUNCTION public.check_persons_groups_insertion() RETURNS trigger
    LANGUAGE plpgsql STABLE
    AS $$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if (
    select "service_id"
    from groups
    where id = new."group_id"
    limit 1
) = any(
    select "service_id"
    from persons_services
    where "person_id" = new."person_id"
) then if (
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
        (
            select 1
            from services s,
                persons p,
                study_years sy_f,
                study_years sy_t,
                study_years p_sy
            where s.id = new.service_id
                and p.id = new.person_id
                and s.study_year_from is not null
                and s.study_year_to is not null
                and s.study_year_from = sy_f."order"
                and s.study_year_to = sy_t."order"
                and p.study_year_id = p_sy."order"
                and sy_f."order" <= p_sy."order"
                and sy_t."order" >= p_sy."order"
        )
        union
        (
            select 1
            from services s, persons p
            where s.id = new.service_id
                and p.id = new.person_id
                and s.study_year_from is null
                and s.study_year_to is null
        )
        union
        (
            select 1
            from persons p
            where p.id = new.person_id
				and p.study_year_id is null
        )
    )
) then return new;
else raise exception 'Person studyYear doesnot match service studyYearRange';
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
CREATE FUNCTION public.family_areas(family public.families, hasura_session json) RETURNS SETOF public.areas
    LANGUAGE sql STABLE
    AS $$
select *
FROM areas area
WHERE ST_Intersects(
        ST_Buffer(
            area.bounds,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        family.geolocation
    );
$$;
CREATE FUNCTION public.family_streets(family public.families, hasura_session json) RETURNS SETOF public.streets
    LANGUAGE sql STABLE
    AS $$
select *
FROM streets street
WHERE ST_Intersects(
        ST_Buffer(
            street.line,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        family.geolocation
    );
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
    service_gender boolean NOT NULL,
    photo_updated_at time without time zone,
    color bigint
);
CREATE FUNCTION public.get_person_classes(person public.persons, hasura_session json) RETURNS SETOF public.classes
    LANGUAGE sql STABLE
    AS $$
select "class"
FROM classes "class",
    persons_services ps
WHERE ps.person_id = person.id
    and ps.service_id = "class".service_id
    and "class".service_study_year = person.study_year_id
    and (
        "class".service_gender is null
        or "class".service_gender = person.gender
    );
$$;
CREATE FUNCTION public.person_areas(person public.persons, hasura_session json) RETURNS SETOF public.areas
    LANGUAGE sql STABLE
    AS $$
select *
FROM areas area
WHERE ST_Intersects(
        ST_Buffer(
            area.bounds,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        person.geolocation
    );
$$;
CREATE FUNCTION public.person_areas_from_id(person_id text, hasura_session json) RETURNS SETOF public.areas
    LANGUAGE sql STABLE
    AS $$
select area
FROM areas area,
    persons person
WHERE person.firestore_id = person_id
    and ST_Intersects(
        ST_Buffer(
            area.bounds,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        person.geolocation
    );
$$;
CREATE FUNCTION public.person_streets(person public.persons, hasura_session json) RETURNS SETOF public.streets
    LANGUAGE sql STABLE
    AS $$
select *
FROM streets street
WHERE ST_Intersects(
        ST_Buffer(
            street.line,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        person.geolocation
    );
$$;
CREATE FUNCTION public.persons_general_check() RETURNS trigger
    LANGUAGE plpgsql STABLE
    AS $$ begin if (
        new.geolocation is null
        and new.family_id is null
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
    ) then raise exception 'Person must have at least one of (geolocation, family, service, group)';
else return new;
end if;
END;
$$;
CREATE FUNCTION public.persons_groups_check() RETURNS trigger
    LANGUAGE plpgsql STABLE
    AS $$ BEGIN if (
        select "service_id"
        from groups
        where id = new."group_id"
        limit 1
    ) = any(
        select "service_id"
        from persons_services
        where "person_id" = new."person_id"
    ) then return new;
else raise exception 'Person must be in the same service as the group';
end if;
END;
$$;
CREATE TABLE public.persons_groups (
    person_id uuid NOT NULL,
    group_id uuid NOT NULL,
    rel_id uuid DEFAULT gen_random_uuid() NOT NULL
);
CREATE FUNCTION public.persons_groups_check(person_group public.persons_groups, hasura_session json) RETURNS boolean
    LANGUAGE plpgsql STABLE
    AS $$ BEGIN return (
        select "service_id"
        from groups
        where id = person_group."group_id"
        limit 1
    ) = any(
        select "service_id"
        from persons_services
        where "person_id" = person_group."person_id"
    );
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
select *
FROM areas area
WHERE ST_Intersects(
        ST_Buffer(
            area.bounds,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        store.geolocation
    );
$$;
CREATE FUNCTION public.store_streets(store public.stores, hasura_session json) RETURNS SETOF public.streets
    LANGUAGE sql STABLE
    AS $$
select *
FROM streets street
WHERE ST_Intersects(
        ST_Buffer(
            street.line,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        store.geolocation
    );
$$;
CREATE FUNCTION public.street_areas(street public.streets, hasura_session json) RETURNS SETOF public.areas
    LANGUAGE sql STABLE
    AS $$
select *
FROM areas area
WHERE ST_Intersects(
        ST_Buffer(
            area.bounds,
            (
                select "value"::integer
                from config
                where "key" = 'search_threshold'
            )
        ),
        street.line
    );
$$;
CREATE FUNCTION public.street_families(street public.streets, hasura_session json) RETURNS SETOF public.families
    LANGUAGE sql STABLE
    AS $$
select *
FROM families family
WHERE ST_DWithin(
        street.line,
        family.geolocation,
        (
            select "value"::integer
            from config
            where "key" = 'search_threshold'
        )
    );
$$;
CREATE FUNCTION public.street_persons(street public.streets, hasura_session json) RETURNS SETOF public.persons
    LANGUAGE sql STABLE
    AS $$
select *
FROM persons person
WHERE ST_DWithin(
        street.line,
        person.geolocation,
        (
            select "value"::integer
            from config
            where "key" = 'search_threshold'
        )
    );
$$;
CREATE FUNCTION public.street_stores(street public.streets, hasura_session json) RETURNS SETOF public.stores
    LANGUAGE sql STABLE
    AS $$
select *
FROM stores store
WHERE ST_DWithin(
        street.line,
        store.geolocation,
        (
            select "value"::integer
            from config
            where "key" = 'search_threshold'
        )
    );
$$;
CREATE FUNCTION public.user_allowed_to_change_user_data(_user auth.users_data, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select _user.uid <> (hasura_session->>'x-hasura-user-id')::uuid
    and (
        auth.user_can_manage_all_users((hasura_session->>'x-hasura-user-id')::uuid)
        or EXISTS (
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_group" is not null
                    AND manager_permissions."group_admin_on_users" = true
                    and manager_permissions."admin_on_group" = user_permissions."admin_on_group"
                limit 1
            )
            union
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_service" is not null
                    AND manager_permissions."service_admin_on_users" = true
                    and manager_permissions."admin_on_service" = user_permissions."admin_on_service"
                limit 1
            )
            union
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_area" is not null
                    AND manager_permissions."area_admin_on_users" = true
                    and manager_permissions."admin_on_area" = user_permissions."admin_on_area"
                limit 1
            )
        )
    );
$$;
CREATE FUNCTION public.user_allowed_to_change_user_permissions(_user auth.users_admin_on, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select _user.uid <> (hasura_session->>'x-hasura-user-id')::uuid
    and (
        auth.user_can_manage_all_users((hasura_session->>'x-hasura-user-id')::uuid)
        or EXISTS (
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_group" is not null
                    AND manager_permissions."group_admin_on_users" = true
                    and manager_permissions."admin_on_group" = user_permissions."admin_on_group"
                limit 1
            )
            union
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_service" is not null
                    AND manager_permissions."service_admin_on_users" = true
                    and manager_permissions."admin_on_service" = user_permissions."admin_on_service"
                limit 1
            )
            union
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_area" is not null
                    AND manager_permissions."area_admin_on_users" = true
                    and manager_permissions."admin_on_area" = user_permissions."admin_on_area"
                limit 1
            )
        )
    );
$$;
CREATE FUNCTION public.user_allowed_to_change_user_permissions(_user auth.users_permissions, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select _user.uid <> (hasura_session->>'x-hasura-user-id')::uuid
    and (
        auth.user_can_manage_all_users((hasura_session->>'x-hasura-user-id')::uuid)
        or EXISTS (
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_group" is not null
                    AND manager_permissions."group_admin_on_users" = true
                    and manager_permissions."admin_on_group" = user_permissions."admin_on_group"
                limit 1
            )
            union
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_service" is not null
                    AND manager_permissions."service_admin_on_users" = true
                    and manager_permissions."admin_on_service" = user_permissions."admin_on_service"
                limit 1
            )
            union
            (
                SELECT manager_permissions.uid
                FROM auth.users_admin_on manager_permissions,
                    auth.users_admin_on user_permissions
                WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    and user_permissions.uid = _user.uid
                    AND manager_permissions."admin_on_area" is not null
                    AND manager_permissions."area_admin_on_users" = true
                    and manager_permissions."admin_on_area" = user_permissions."admin_on_area"
                limit 1
            )
        )
    );
$$;
CREATE FUNCTION public.user_allowed_to_delete_user(_user auth.users_data, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select _user.uid <> (hasura_session->>'x-hasura-user-id')::uuid
        and auth.user_can_manage_all_users((hasura_session->>'x-hasura-user-id')::uuid);
$$;
CREATE FUNCTION public.user_allowed_to_read_area(area public.areas, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or exists (
        (
            select permissions.uid
            from auth.users_admin_on permissions
            where permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                and permissions."admin_on_area" is not null
                and permissions."admin_on_area" = area.id
            limit 1
        )
        union
        (
            select permissions.uid
            from auth.users_admin_on permissions,
                persons person,
                persons_groups groups
            where permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                and ST_DWithin(
                    area.bounds,
                    person.geolocation,
                    (
                        select "value"::integer
                        from config
                        where "key" = 'search_threshold'
                    )
                )
                and (
                    permissions."admin_on_group" is not null
                    and groups."person_id" = person.id
                    and groups."group_id" = permissions."admin_on_group"
                )
            limit 1
        )
        union
        (
            select permissions.uid
            from auth.users_admin_on permissions,
                persons person,
                persons_services services
            where permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                and ST_DWithin(
                    area.bounds,
                    person.geolocation,
                    (
                        select "value"::integer
                        from config
                        where "key" = 'search_threshold'
                    )
                )
                and permissions."admin_on_service" is not null
                and services."person_id" = person.id
                and services."service_id" = permissions."admin_on_service"
                and (
                    (
                        permissions."service_gender" is null
                        or permissions."service_gender" = person.gender
                    )
                    and (
                        permissions."service_study_year" is null
                        or permissions."service_study_year" = person."study_year_id"
                    )
                )
            limit 1
        )
    );
$$;
CREATE FUNCTION public.user_allowed_to_read_class(_class public.classes, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
            SELECT permissions.uid
            FROM auth.users_admin_on permissions
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_service" is not null
                AND _class."service_id" = permissions."admin_on_service"
                AND (
                    (
                        permissions."service_gender" IS NULL
                        OR permissions."service_gender" = _class."service_gender"
                    )
                    AND (
                        permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = _class."service_study_year"
                    )
                )
            limit 1
    ) $$;
CREATE FUNCTION public.user_allowed_to_read_family(family public.families, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or exists(
        select id
        from persons
        where uid = (hasura_session->>'x-hasura-user-id')::uuid
            and "family_id" = family.id
    )
    or EXISTS (
        SELECT area.id
        FROM auth.users_admin_on permissions,
            areas area
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND (
                permissions."admin_on_area" is not null
                AND permissions."admin_on_area" = area.id
                AND area.bounds is not null
                AND ST_DWithin(
                    area.bounds,
                    family.geolocation,
                    (
                        select "value"::integer
                        from config
                        where "key" = 'search_threshold'
                    )
                )
            )
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_read_group(_group public.groups, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT uid
        FROM auth.users_admin_on permissions
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_group" is not null
            AND permissions."admin_on_group" = _group.id
            and (
            	_group.validity is null
            	or _group.validity @> CURRENT_DATE
        	)
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_read_person(person public.persons, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select person.uid = (hasura_session->>'x-hasura-user-id')::uuid
    or auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        (
            SELECT person.id
            FROM auth.users_admin_on permissions,
                persons_groups groups
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_group" is not null
                AND groups."person_id" = person.id
                AND groups."group_id" = permissions."admin_on_group"
            limit 1
        )
        union
        (
            SELECT person.id
            FROM auth.users_admin_on permissions,
                persons_services services
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_service" is not null
                AND services."person_id" = person.id
                AND services."service_id" = permissions."admin_on_service"
                AND (
                    (
                        permissions."service_gender" IS NULL
                        OR permissions."service_gender" = person.gender
                    )
                    AND (
                        permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = person."study_year_id"
                    )
                )
            limit 1
        )
        union
        (
            (
                SELECT person.id
                FROM auth.users_admin_on permissions,
                    areas area
                WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                    AND permissions."admin_on_area" is not null
                    AND permissions."admin_on_area" = area.id
                    AND area.bounds is not null
                    AND ST_DWithin(
                        area.bounds,
                        person.geolocation,
                        (
                            select "value"::integer
                            from config
                            where "key" = 'search_threshold'
                        )
                    )
                limit 1
            )
        )
    ) $$;
CREATE FUNCTION public.user_allowed_to_read_service(service public.services, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT uid
        FROM auth.users_admin_on permissions
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_service" is not null
            AND permissions."admin_on_service" = service.id
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_read_store(store public.stores, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT area.id
        FROM auth.users_admin_on permissions,
            areas area
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_area" is not null
            AND permissions."admin_on_area" = area.id
            AND area.bounds is not null
            AND ST_DWithin(
                area.bounds,
                store.geolocation,
                (
                    select "value"::integer
                    from config
                    where "key" = 'search_threshold'
                )
            )
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_read_street(street public.streets, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT area.id
        FROM auth.users_admin_on permissions,
            areas area
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_area" is not null
            AND permissions."admin_on_area" = area.id
            AND area.bounds is not null
            AND ST_DWithin(
                area.bounds,
                street.line,
                (
                    select "value"::integer
                    from config
                    where "key" = 'search_threshold'
                )
            )
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_read_user(_user auth.users_data, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select _user.uid = (hasura_session->>'x-hasura-user-id')::uuid
    or auth.user_can_manage_all_users((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        (
            SELECT 1
            FROM auth.users_admin_on manager_permissions,
                auth.users_admin_on user_permissions
            WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                and user_permissions.uid = _user.uid
                AND manager_permissions."admin_on_group" is not null
                AND manager_permissions."group_admin_on_users" = true
                and manager_permissions."admin_on_group" = user_permissions."admin_on_group"
            limit 1
        )
        union
        (
            SELECT 1
            FROM auth.users_admin_on manager_permissions,
                auth.users_admin_on user_permissions
            WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                and user_permissions.uid = _user.uid
                AND manager_permissions."admin_on_service" is not null
                AND manager_permissions."service_admin_on_users" = true
                and manager_permissions."admin_on_service" = user_permissions."admin_on_service"
            limit 1
        )
        union
        (
            SELECT 1
            FROM auth.users_admin_on manager_permissions,
                auth.users_admin_on user_permissions
            WHERE manager_permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                and user_permissions.uid = _user.uid
                AND manager_permissions."admin_on_area" is not null
                AND manager_permissions."area_admin_on_users" = true
                and manager_permissions."admin_on_area" = user_permissions."admin_on_area"
            limit 1
        )
    );
$$;
CREATE FUNCTION public.user_allowed_to_write_area(area public.areas, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT permissions.uid
        FROM auth.users_admin_on permissions
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_area" is not null
            AND permissions."admin_on_area" = area.id
            AND permissions."area_allow_edit" = true
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_write_class(_class public.classes, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    OR EXISTS (
            SELECT permissions.uid
            FROM auth.users_admin_on permissions
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_service" is not null
                AND _class."service_id" = permissions."admin_on_service"
                AND (
                    (
                        permissions."service_gender" IS NULL
                        OR permissions."service_gender" = _class."service_gender"
                    )
                    AND (
                        permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = _class."service_study_year"
                    )
                )
                AND permissions."service_allow_edit" = true
            limit 1
    ) $$;
CREATE FUNCTION public.user_allowed_to_write_family(family public.families, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT area.id
        FROM auth.users_admin_on permissions,
            areas area
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_area" is not null
            AND permissions."admin_on_area" = area.id
            AND area.bounds is not null
            AND permissions."area_allow_edit" = true
            AND ST_DWithin(
                area.bounds,
                family.geolocation,
                (
                    select "value"::integer
                    from config
                    where "key" = 'search_threshold'
                )
            )
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_write_group(_group public.groups, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT uid
        FROM auth.users_admin_on permissions
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_group" is not null
            AND permissions."admin_on_group" = _group.id
            AND permissions."group_allow_edit" = true
            and (
            	_group.validity is null
            	or _group.validity @> CURRENT_DATE
        	)
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_write_person(person public.persons, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select person.uid = (hasura_session->>'x-hasura-user-id')::uuid
    or auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        (
            SELECT permissions.uid
            FROM auth.users_admin_on permissions,
                persons_groups groups
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_group" is not null
                AND groups."person_id" = person.id
                AND groups."group_id" = permissions."admin_on_group"
                AND permissions."group_allow_edit" = true
            limit 1
        )
        union
        (
            SELECT permissions.uid
            FROM auth.users_admin_on permissions,
                persons_services services
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_service" is not null
                AND services."person_id" = person.id
                AND services."service_id" = permissions."admin_on_service"
                AND (
                    (
                        permissions."service_gender" IS NULL
                        OR permissions."service_gender" = person.gender
                    )
                    AND (
                        permissions."service_study_year" IS NULL
                        OR permissions."service_study_year" = person."study_year_id"
                    )
                )
                AND permissions."service_allow_edit" = true
            limit 1
        )
        union
        (
            SELECT permissions.uid
            FROM auth.users_admin_on permissions,
                areas area
            WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
                AND permissions."admin_on_area" is not null
                AND permissions."admin_on_area" = area.id
                AND permissions."area_allow_edit" = true
                AND area.bounds is not null
                AND ST_DWithin(
                    area.bounds,
                    person.geolocation,
                    (
                        select "value"::integer
                        from config
                        where "key" = 'search_threshold'
                    )
                )
            limit 1
        )
    );
$$;
CREATE FUNCTION public.user_allowed_to_write_service(service public.services, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT uid
        FROM auth.users_admin_on permissions
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_service" is not null
            AND permissions."admin_on_service" = service.id
            AND permissions."service_allow_edit" = true
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_write_store(store public.stores, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or EXISTS (
        SELECT area.id
        FROM auth.users_admin_on permissions,
            areas area
        WHERE permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            AND permissions."admin_on_area" is not null
            AND permissions."admin_on_area" = area.id
            AND permissions."area_allow_edit" = true
            AND area.bounds is not null
            AND ST_DWithin(
                area.bounds,
                store.geolocation,
                (
                    select "value"::integer
                    from config
                    where "key" = 'search_threshold'
                )
            )
        limit 1
    );
$$;
CREATE FUNCTION public.user_allowed_to_write_street(street public.streets, hasura_session json) RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
select auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
    or exists (
        select area.id
        from auth.users_admin_on permissions,
            areas area
        where permissions.uid = (hasura_session->>'x-hasura-user-id')::uuid
            and permissions."admin_on_area" is not null
            and permissions."admin_on_area" = area.id
            and area.bounds is not null
            and permissions."area_allow_edit" = true
            and ST_DWithin(
                area.bounds,
                street.line,
                (
                    select "value"::integer
                    from config
                    where "key" = 'search_threshold'
                )
            )
        limit 1
    );
$$;
CREATE TABLE public.churches (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL
);
CREATE TABLE public.colleges (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    university_id uuid NOT NULL
);
CREATE TABLE public.config (
    key text NOT NULL,
    value text
);
CREATE TABLE public.families_families (
    outer_family_id uuid NOT NULL,
    inner_family_id uuid NOT NULL
);
CREATE TABLE public.fathers (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    church_id uuid
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
CREATE TABLE public.schools (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL
);
CREATE TABLE public.shammas_levels (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    "order" integer NOT NULL
);
CREATE TABLE public.study_years (
    name text NOT NULL,
    "order" smallint NOT NULL
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
    ADD CONSTRAINT areas_firestore_id_key UNIQUE (firestore_id);
ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);
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
    ADD CONSTRAINT "families_families_outerFamilyID_innerFamilyID_key" UNIQUE (outer_family_id, inner_family_id);
ALTER TABLE ONLY public.families_families
    ADD CONSTRAINT families_families_pkey PRIMARY KEY (inner_family_id);
ALTER TABLE ONLY public.families
    ADD CONSTRAINT families_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.fathers
    ADD CONSTRAINT fathers_name_key UNIQUE (name);
ALTER TABLE ONLY public.fathers
    ADD CONSTRAINT fathers_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_name_key UNIQUE (name);
ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.person_types
    ADD CONSTRAINT "personTypes_name_key" UNIQUE (name);
ALTER TABLE ONLY public.person_types
    ADD CONSTRAINT "personTypes_order_key" UNIQUE ("order");
ALTER TABLE ONLY public.person_types
    ADD CONSTRAINT "personTypes_pkey" PRIMARY KEY (id);
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_firestore_id_key UNIQUE (firestore_id);
ALTER TABLE ONLY public.persons_groups
    ADD CONSTRAINT "persons_groups_personID_groupID_key" UNIQUE (person_id, group_id);
ALTER TABLE ONLY public.persons_groups
    ADD CONSTRAINT persons_groups_pkey PRIMARY KEY (rel_id);
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT "persons_mainPhone_birthdate_key" UNIQUE (main_phone, birthdate);
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.persons_services
    ADD CONSTRAINT "persons_services_personID_serviceID_key" UNIQUE (person_id, service_id);
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
ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_name_key UNIQUE (name);
ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_firestore_id_key UNIQUE (firestore_id);
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
ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.study_years
    ADD CONSTRAINT "studyYears_name_key" UNIQUE (name);
ALTER TABLE ONLY public.study_years
    ADD CONSTRAINT "studyYears_order_key" UNIQUE ("order");
ALTER TABLE ONLY public.study_years
    ADD CONSTRAINT "studyYears_pkey" PRIMARY KEY ("order");
ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_name_key UNIQUE (name);
ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_name_key UNIQUE (name);
ALTER TABLE ONLY public.universities
    ADD CONSTRAINT universities_pkey PRIMARY KEY (id);
CREATE INDEX areas_bounds_index ON public.areas USING gist (bounds);
CREATE INDEX areas_idx_id_bounds ON public.areas USING btree (id, bounds);
CREATE INDEX families_locations_index ON public.families USING gist (geolocation);
CREATE INDEX persons_birthdays ON public.persons USING btree (public.get_person_birthday(persons.*));
CREATE INDEX persons_locations_index ON public.persons USING gist (geolocation);
CREATE INDEX stores_locations_index ON public.stores USING gist (geolocation);
CREATE INDEX streets_line_index ON public.streets USING gist (line);
CREATE TRIGGER check_person_group_service_rel BEFORE INSERT OR UPDATE ON public.persons_groups FOR EACH ROW EXECUTE FUNCTION public.check_person_group_service_rel();
CREATE TRIGGER check_persons_service_rel BEFORE INSERT OR UPDATE ON public.persons_services FOR EACH ROW EXECUTE FUNCTION public.check_persons_service_rel();
CREATE CONSTRAINT TRIGGER check_persons_tags_insertion AFTER INSERT OR UPDATE ON public.persons_tags DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_persons_tags_insertion();
CREATE CONSTRAINT TRIGGER check_store_admin_family_update AFTER UPDATE ON public.stores DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.check_store_admin_family_update();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.areas FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.families FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.families_families FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.groups FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.persons FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.persons_groups FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.persons_services FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.persons_tags FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.services FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.stores FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE TRIGGER edit_history BEFORE INSERT OR UPDATE ON public.streets FOR EACH ROW EXECUTE FUNCTION history.edit_history_trigger();
CREATE CONSTRAINT TRIGGER persons_general_check AFTER INSERT OR UPDATE ON public.persons DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.persons_general_check();
CREATE TRIGGER sync_user_with_person AFTER INSERT OR UPDATE ON public.persons FOR EACH ROW EXECUTE FUNCTION history.sync_user_with_person_trigger();
ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_service_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.classes
    ADD CONSTRAINT "classes_service_studyYear_fkey" FOREIGN KEY (service_study_year) REFERENCES public.study_years("order") ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE ONLY public.colleges
    ADD CONSTRAINT "colleges_universityID_fkey" FOREIGN KEY (university_id) REFERENCES public.universities(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.families_families
    ADD CONSTRAINT "families_families_innerFamilyID_fkey" FOREIGN KEY (inner_family_id) REFERENCES public.families(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.families_families
    ADD CONSTRAINT "families_families_outerFamilyID_fkey" FOREIGN KEY (outer_family_id) REFERENCES public.families(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.fathers
    ADD CONSTRAINT "fathers_churchID_fkey" FOREIGN KEY (church_id) REFERENCES public.churches(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.groups
    ADD CONSTRAINT "groups_serviceID_fkey" FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT "persons_churchID_fkey" FOREIGN KEY (church_id) REFERENCES public.churches(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT "persons_collegeID_fkey" FOREIGN KEY (college_id) REFERENCES public.colleges(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT "persons_familyID_fkey" FOREIGN KEY (family_id) REFERENCES public.families(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT "persons_fatherID_fkey" FOREIGN KEY (father_id) REFERENCES public.fathers(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons_groups
    ADD CONSTRAINT "persons_groups_groupID_fkey" FOREIGN KEY (group_id) REFERENCES public.groups(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons_groups
    ADD CONSTRAINT "persons_groups_personID_fkey" FOREIGN KEY (person_id) REFERENCES public.persons(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_job_fkey FOREIGN KEY (job_id) REFERENCES public.jobs(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT "persons_personType_fkey" FOREIGN KEY (person_type_id) REFERENCES public.person_types(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_qualification_fkey FOREIGN KEY (qualification_id) REFERENCES public.qualifications(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT "persons_schoolID_fkey" FOREIGN KEY (school_id) REFERENCES public.schools(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons_services
    ADD CONSTRAINT "persons_services_personID_fkey" FOREIGN KEY (person_id) REFERENCES public.persons(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons_services
    ADD CONSTRAINT "persons_services_serviceID_fkey" FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_shammas_level_fkey FOREIGN KEY (shammas_level_id) REFERENCES public.shammas_levels(id) ON UPDATE RESTRICT ON DELETE SET NULL;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_state_fkey FOREIGN KEY (state_id) REFERENCES public.person_states(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT "persons_studyYearID_fkey" FOREIGN KEY (study_year_id) REFERENCES public.study_years("order") ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE ONLY public.persons_tags
    ADD CONSTRAINT "persons_tags_personID_fkey" FOREIGN KEY (person_id) REFERENCES public.persons(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons_tags
    ADD CONSTRAINT "persons_tags_tagID_fkey" FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_uid_fkey FOREIGN KEY (uid) REFERENCES auth.users_data(uid) ON UPDATE RESTRICT ON DELETE SET NULL;
ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_next_service_fkey FOREIGN KEY (next_service) REFERENCES public.services(id) ON UPDATE RESTRICT ON DELETE SET NULL;
ALTER TABLE ONLY public.services
    ADD CONSTRAINT "services_studyYearFrom_fkey" FOREIGN KEY (study_year_from) REFERENCES public.study_years("order") ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE ONLY public.services
    ADD CONSTRAINT "services_studyYearTo_fkey" FOREIGN KEY (study_year_to) REFERENCES public.study_years("order") ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE ONLY public.stores
    ADD CONSTRAINT "stores_adminFamily_fkey" FOREIGN KEY (admin_family) REFERENCES public.families(id) ON UPDATE RESTRICT ON DELETE SET NULL;
CREATE POLICY policy1 ON public.areas;
