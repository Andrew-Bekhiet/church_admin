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

ALTER TABLE public.persons
DROP COLUMN IF EXISTS address_text,
DROP COLUMN IF EXISTS geolocation;

ALTER TABLE public.families
DROP COLUMN IF EXISTS address_text,
DROP COLUMN IF EXISTS geolocation;

ALTER TABLE public.stores
DROP COLUMN IF EXISTS address_text,
DROP COLUMN IF EXISTS geolocation;
