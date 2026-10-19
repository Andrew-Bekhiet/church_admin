alter table "public"."families"
drop constraint "families_church_id_fkey";

ALTER TABLE "public"."families"
drop column "church_id";
