
alter table "public"."persons" add column "martial_status" Text
 not null default 'single';

alter table "public"."persons"
  add constraint "persons_martial_status_fkey"
  foreign key ("martial_status")
  references "public"."martial_statuses"
  ("name") on update restrict on delete restrict;
