set check_function_bodies = off;

create or replace function sync_area_streets() returns trigger
language plpgsql
as
$$
BEGIN
	IF TG_OP = 'UPDATE' AND NEW.bounds IS DISTINCT FROM OLD.bounds THEN
		DELETE FROM public.areas_streets areas_streets
		WHERE areas_streets.area_id = OLD.id
			AND EXISTS (
				SELECT 1
				FROM public.streets s
				WHERE s.id = areas_streets.street_id
					AND s.line IS NOT NULL
					AND (NEW.bounds IS NULL
						OR NOT ST_DWithin(NEW.bounds, s.line, 0)
					)
			);
	END IF;

	IF TG_OP = 'INSERT' OR NEW.bounds IS DISTINCT FROM OLD.bounds THEN
		INSERT INTO public.areas_streets (area_id, street_id)
		SELECT NEW.id, s.id
		FROM public.streets s
		WHERE ST_DWithin(NEW.bounds, s.line, 0)
			ON CONFLICT DO NOTHING;
	END IF;

	RETURN NEW;
END;
$$;

create or replace function sync_street_areas() returns trigger
language plpgsql
as
$$
BEGIN
	IF TG_OP = 'UPDATE' AND NEW.line IS DISTINCT FROM OLD.line THEN
		DELETE FROM public.areas_streets areas_streets
		WHERE areas_streets.street_id = OLD.id
			AND EXISTS (
				SELECT 1
				FROM public.areas a
				WHERE a.id = areas_streets.area_id
					AND a.bounds IS NOT NULL
					AND (NEW.line IS NULL
						OR NOT ST_DWithin(a.bounds, NEW.line, 0)
					)
			);
	END IF;

	IF TG_OP = 'INSERT' OR NEW.line IS DISTINCT FROM OLD.line THEN
		INSERT INTO public.areas_streets (area_id, street_id)
		SELECT a.id, NEW.id
		FROM public.areas a
		WHERE ST_DWithin(a.bounds, NEW.line, 0)
			ON CONFLICT DO NOTHING;
	END IF;

	RETURN NEW;
END;
$$;

create or replace function check_street_has_area() returns trigger
language plpgsql
as
$$
BEGIN
	IF TG_OP = 'INSERT' OR NEW.line IS DISTINCT FROM OLD.line THEN
		IF (
			EXISTS (
				SELECT 1 FROM areas_streets WHERE street_id = NEW.id
			)
			OR EXISTS (
				SELECT 1
				FROM public.areas a
				WHERE ST_DWithin(a.bounds, NEW.line, 0)
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

CREATE TRIGGER "sync_area_streets" AFTER INSERT OR UPDATE ON "public"."areas" FOR EACH ROW EXECUTE FUNCTION "public"."sync_area_streets"();

CREATE TRIGGER "sync_street_areas" AFTER INSERT OR UPDATE ON "public"."streets" FOR EACH ROW EXECUTE FUNCTION "public"."sync_street_areas"();

CREATE CONSTRAINT TRIGGER "check_street_has_area" AFTER INSERT OR UPDATE ON "public"."streets" DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION "public"."check_street_has_area"();

CREATE OR REPLACE FUNCTION public.check_store_admin_family_or_address()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    STABLE NOT LEAKPROOF
AS $BODY$
DECLARE hasura_session JSON;
begin
if new.admin_family is null and not exists(select 1 from addresses where store_id = new.id) then
raise exception 'Store must belong to an admin family or have an address';
else return new;
end if;
END;
$BODY$;

CREATE OR REPLACE FUNCTION public.check_address_street_same_area()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    STABLE NOT LEAKPROOF
AS $BODY$
DECLARE hasura_session JSON;
begin
if not exists(select 1 from areas_streets where area_id = new.area_id and street_id = new.street_id) then
raise exception 'Address must belong to the same area as the street';
else return new;
end if;
END;
$BODY$;


CREATE CONSTRAINT TRIGGER check_store_admin_family_or_address
    AFTER INSERT OR UPDATE 
    ON public.stores
    DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW
    EXECUTE FUNCTION public.check_store_admin_family_or_address();
CREATE CONSTRAINT TRIGGER check_address_street_same_area
    AFTER INSERT OR UPDATE 
    ON public.addresses
    DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW
    EXECUTE FUNCTION public.check_address_street_same_area();

-- Temporary bridge for app versions that only know house_number; drop it
-- together with house_number once they are retired.
create or replace function public.sync_house_code_with_legacy_house_number()
returns trigger
language plpgsql
as $$
declare
  leading_digits text;
begin
  if tg_op = 'UPDATE' and new.house_code is not distinct from old.house_code then
    if new.house_number is distinct from old.house_number then
      new.house_code := new.house_number::text;
    end if;

    return new;
  end if;

  if tg_op = 'INSERT' and new.house_code is null then
    new.house_code := new.house_number::text;

    return new;
  end if;

  leading_digits := translate(
    substring(new.house_code from '^[0-9٠-٩]+'),
    '٠١٢٣٤٥٦٧٨٩',
    '0123456789'
  );
  new.house_number := case
    when leading_digits::integer <= 32767 then leading_digits::smallint
  end;

  return new;
end
$$;

drop trigger if exists sync_house_code_with_legacy_house_number on public.addresses;

create trigger sync_house_code_with_legacy_house_number
before insert or update of house_code, house_number on public.addresses
for each row
execute function public.sync_house_code_with_legacy_house_number();
