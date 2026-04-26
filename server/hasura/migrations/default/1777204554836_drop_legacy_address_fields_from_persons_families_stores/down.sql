ALTER TABLE public.persons
ADD COLUMN IF NOT EXISTS address_text text,
ADD COLUMN IF NOT EXISTS geolocation GEOGRAPHY (POINT, 4326);

ALTER TABLE public.families
ADD COLUMN IF NOT EXISTS address_text text,
ADD COLUMN IF NOT EXISTS geolocation GEOGRAPHY (POINT, 4326);

ALTER TABLE public.stores
ADD COLUMN IF NOT EXISTS address_text text,
ADD COLUMN IF NOT EXISTS geolocation GEOGRAPHY (POINT, 4326);

CREATE OR REPLACE FUNCTION public.persons_general_check()
RETURNS trigger
LANGUAGE plpgsql
STABLE
AS $$
BEGIN
  IF (
    NEW.geolocation IS NULL
    AND NEW.family_id IS NULL
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
    RAISE EXCEPTION 'Person must have at least one of (geolocation, family, store, service, group, uid)';
  ELSE
    RETURN NEW;
  END IF;
END;
$$;
