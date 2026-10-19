
alter table "public"."families" add column "deceased_spouse_name" text
 null;

alter table "public"."families" add constraint "check_deceased_spouse_name" check (status = 'widowed' and deceased_spouse_name is not null or status <> 'widowed' and deceased_spouse_name is null);
