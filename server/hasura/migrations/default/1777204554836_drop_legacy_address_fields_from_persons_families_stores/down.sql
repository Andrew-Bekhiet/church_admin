ALTER TABLE public.persons
  ADD COLUMN IF NOT EXISTS address_text text,
  ADD COLUMN IF NOT EXISTS geolocation geography(Point, 4326);

ALTER TABLE public.families
  ADD COLUMN IF NOT EXISTS address_text text,
  ADD COLUMN IF NOT EXISTS geolocation geography(Point, 4326);

ALTER TABLE public.stores
  ADD COLUMN IF NOT EXISTS address_text text,
  ADD COLUMN IF NOT EXISTS geolocation geography(Point, 4326);
