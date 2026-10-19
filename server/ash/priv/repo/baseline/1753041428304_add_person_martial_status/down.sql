
alter table "public"."persons" drop constraint "persons_martial_status_fkey";

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."persons" add column "martial_status" Text
--  not null default 'single';
