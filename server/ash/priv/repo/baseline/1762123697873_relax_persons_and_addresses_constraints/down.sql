CREATE UNIQUE INDEX IF NOT EXISTS idx_persons_clean_name_main_phone_birthdate ON public.persons USING btree (replace(replace(replace(replace(replace(name, 'ى'::text, 'ي'::text), 'أ'::text, 'ا'::text), 'إ'::text, 'ا'::text), 'آ'::text, 'ا'::text), 'ة'::text, 'ه'::text), main_phone, birthdate);

ALTER TABLE public.addresses ALTER COLUMN area_id SET NOT NULL;
ALTER TABLE public.addresses ALTER COLUMN street_id SET NOT NULL;