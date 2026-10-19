
alter table "public"."persons" drop constraint "check_valid_national_id";

alter table "public"."persons" drop column "national_id";
