
alter table "public"."persons" add column "serving_church" uuid
 null;

alter table "public"."persons" add column "service_type" text
 null;

alter table "public"."persons"
  add constraint "persons_serving_church_fkey"
  foreign key ("serving_church")
  references "public"."churches"
  ("id") on update restrict on delete restrict;

alter table "public"."persons" rename column "serving_church" to "serving_church_id";
