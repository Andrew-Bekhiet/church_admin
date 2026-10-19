
alter table "public"."families" drop constraint "check_deceased_spouse_name";

alter table "public"."families" drop column "deceased_spouse_name";