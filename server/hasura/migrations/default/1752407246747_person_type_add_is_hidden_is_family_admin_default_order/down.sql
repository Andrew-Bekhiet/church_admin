ALTER TABLE person_types ALTER COLUMN "order" DROP DEFAULT;

DROP SEQUENCE IF EXISTS person_types_order_seq;

ALTER TABLE "public"."person_types" DROP COLUMN "is_hidden";
ALTER TABLE "public"."person_types" DROP COLUMN "is_family_admin";
