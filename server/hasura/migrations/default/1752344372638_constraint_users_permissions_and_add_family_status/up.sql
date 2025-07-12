
CREATE TABLE "public"."martial_statuses" ("name" Text NOT NULL, PRIMARY KEY ("name") );

insert into martial_statuses values ('married'), ('separated'), ('divorced'), ('widowed');

alter table "public"."families" add column "status" text
 not null default 'married';

alter table "public"."families"
  add constraint "families_status_fkey"
  foreign key ("status")
  references "public"."martial_statuses"
  ("name") on update cascade on delete restrict;

CREATE TABLE "auth"."permissions" ("name" text NOT NULL, PRIMARY KEY ("name") );

insert into auth.permissions values ('approved'),
('manageAllUsers'),
('readAllData'),
('writeAllData'),
('recordHistory'),
('changeOldHistory'),
('recoverDeleted'),
('exportData');

alter table "auth"."users_permissions"
  add constraint "users_permissions_permission_fkey"
  foreign key ("permission")
  references "auth"."permissions"
  ("name") on update cascade on delete restrict;
