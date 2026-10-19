
alter table "auth"."users_permissions" drop constraint "users_permissions_permission_fkey";

DROP TABLE "auth"."permissions";

alter table "public"."families" drop constraint "families_status_fkey";

DROP TABLE "public"."martial_statuses";

ALTER TABLE "public"."families" DROP COLUMN "status";
