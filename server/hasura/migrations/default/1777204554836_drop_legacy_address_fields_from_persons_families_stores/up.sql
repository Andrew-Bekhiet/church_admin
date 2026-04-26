ALTER TABLE public.persons
  DROP COLUMN IF EXISTS address_text,
  DROP COLUMN IF EXISTS geolocation;

ALTER TABLE public.families
  DROP COLUMN IF EXISTS address_text,
  DROP COLUMN IF EXISTS geolocation;

ALTER TABLE public.stores
  DROP COLUMN IF EXISTS address_text,
  DROP COLUMN IF EXISTS geolocation;
