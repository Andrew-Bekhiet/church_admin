ALTER TABLE public.persons ADD CONSTRAINT persons_is_shammas_check CHECK (
    gender is true and is_shammas is true and shammas_level_id is not null
    or is_shammas is false and shammas_level_id is null
);

ALTER TABLE public.persons DROP CONSTRAINT persons_shammas_level;
