
alter table "public"."families" add column "church_id" uuid
 null;

alter table "public"."families"
  add constraint "families_church_id_fkey"
  foreign key ("church_id")
  references "public"."churches"
  ("id") on update restrict on delete restrict;
