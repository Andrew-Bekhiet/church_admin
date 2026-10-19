alter table "public"."families" drop constraint if exists "check_deceased_spouse_name";

alter table "public"."families" add constraint "check_deceased_spouse_name"
check (
    "deceased_spouse_name" is null
    or "status" in ('widowed', 'widowedWithoutChildren')
) not valid;

alter table "public"."families" validate constraint "check_deceased_spouse_name";
