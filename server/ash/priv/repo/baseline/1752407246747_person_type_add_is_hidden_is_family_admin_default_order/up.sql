
alter table "public"."person_types" add column "is_family_admin" Boolean
 not null default 'false';

alter table "public"."person_types" add column "is_hidden" Boolean
 not null default 'false';

CREATE SEQUENCE IF NOT EXISTS person_types_order_seq OWNED BY person_types."order";
ALTER TABLE person_types
    ALTER COLUMN "order" SET DEFAULT nextval('person_types_order_seq');
SELECT setval('person_types_order_seq', COALESCE((SELECT MAX("order") FROM person_types), 0) + 1, false);
