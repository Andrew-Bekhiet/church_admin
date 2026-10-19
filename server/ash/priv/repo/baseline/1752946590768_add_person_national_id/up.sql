
alter table "public"."persons" add column "national_id" integer
 null;

alter table "public"."persons" add constraint "check_valid_national_id" check (national_id is null OR national_id >= '20000000000000'::bigint);
