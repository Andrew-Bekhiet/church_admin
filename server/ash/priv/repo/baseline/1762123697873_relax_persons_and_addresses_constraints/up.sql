DROP INDEX IF EXISTS public.idx_persons_clean_name_main_phone_birthdate;

ALTER TABLE public.addresses ALTER COLUMN area_id DROP NOT NULL;
ALTER TABLE public.addresses ALTER COLUMN street_id DROP NOT NULL;