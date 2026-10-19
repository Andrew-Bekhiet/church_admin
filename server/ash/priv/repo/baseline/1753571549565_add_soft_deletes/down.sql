
-- Drop trigger and functio

DROP INDEX streets_deleted_at_idx;

alter table "public"."streets"
drop constraint "streets_deleted_by_fkey";

alter table "public"."streets"
drop column "deleted_by";

alter table "public"."streets"
drop column "deleted_at";

DROP INDEX stores_deleted_at_idx;

alter table "public"."stores"
drop constraint "stores_deleted_by_fkey";

alter table "public"."stores"
drop column "deleted_by";

alter table "public"."stores"
drop column "deleted_at";

DROP INDEX services_deleted_at_idx;

alter table "public"."services"
drop constraint "services_deleted_by_fkey";

alter table "public"."services"
drop column "deleted_by";

alter table "public"."services"
drop column "deleted_at";

DROP INDEX persons_deleted_at_idx;

alter table "public"."persons"
drop constraint "persons_deleted_by_fkey";

alter table "public"."persons"
drop column "deleted_by";

alter table "public"."persons"
drop column "deleted_at";

DROP INDEX groups_deleted_at_idx;

alter table "public"."groups"
drop constraint "groups_deleted_by_fkey";

alter table "public"."groups"
drop column "deleted_by";

alter table "public"."groups"
drop column "deleted_at";

DROP INDEX families_deleted_at_idx;

alter table "public"."families"
drop constraint "families_deleted_by_fkey";

alter table "public"."families"
drop column "deleted_by";

alter table "public"."families"
drop column "deleted_at";

DROP INDEX classes_deleted_at_idx;

alter table "public"."classes"
drop constraint "classes_deleted_by_fkey";

alter table "public"."classes"
drop column "deleted_by";

alter table "public"."classes"
drop column "deleted_at";

DROP INDEX areas_deleted_at_idx;

alter table "public"."areas"
drop constraint "areas_deleted_by_fkey";

alter table "public"."areas"
drop column "deleted_by";

alter table "public"."areas"
drop column "deleted_at";
