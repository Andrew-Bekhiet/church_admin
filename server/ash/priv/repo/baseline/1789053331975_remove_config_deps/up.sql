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
