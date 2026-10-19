CREATE OR REPLACE FUNCTION public.persons_general_check()
RETURNS trigger
LANGUAGE plpgsql
STABLE
AS $$
BEGIN
  IF (
    NEW.family_id IS NULL
    AND NEW.store_id IS NULL
    AND NEW.uid IS NULL
    AND NOT EXISTS (
      SELECT 1
      FROM persons_services
      WHERE person_id = NEW.id
      LIMIT 1
    )
    AND NOT EXISTS (
      SELECT 1
      FROM persons_groups
      WHERE person_id = NEW.id
      LIMIT 1
    )
  ) THEN
    RAISE EXCEPTION 'Person must have at least one of (family, store, service, group, uid)';
  ELSE
    RETURN NEW;
  END IF;
END;
$$;

CREATE CONSTRAINT TRIGGER persons_container_check 
    AFTER INSERT OR UPDATE ON public.persons 
    DEFERRABLE INITIALLY DEFERRED 
    FOR EACH ROW EXECUTE FUNCTION persons_general_check();

create or replace function public.mark_linked_person_as_servant()
returns trigger
language plpgsql
as $function$
begin
    if new.uid is not null then
        new.is_servant := true;
    end if;

    return new;
end;
$function$;

create trigger mark_linked_person_as_servant
before insert or update of uid on public.persons
for each row
execute function public.mark_linked_person_as_servant();

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

CREATE TRIGGER "sync_user_with_person" AFTER INSERT OR UPDATE ON "public"."persons" FOR EACH ROW EXECUTE FUNCTION "history"."sync_user_with_person_trigger"();

CREATE CONSTRAINT TRIGGER "check_persons_service_rel" AFTER INSERT OR UPDATE ON "public"."persons_services" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_persons_service_rel"();

CREATE CONSTRAINT TRIGGER "check_person_group_service_rel" AFTER INSERT OR UPDATE ON "public"."persons_groups" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_person_group_service_rel"();

