
alter table "public"."persons" rename column "serving_church_id" to "serving_church";

alter table "public"."persons" drop constraint "persons_serving_church_fkey";

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."persons" add column "service_type" text
--  null;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."persons" add column "serving_church" uuid
--  null;
