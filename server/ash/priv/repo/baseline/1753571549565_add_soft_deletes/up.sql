alter table "public"."areas" add column "deleted_at" timestamptz null;

alter table "public"."areas" add column "deleted_by" UUID null;

alter table "public"."areas"
  add constraint "areas_deleted_by_fkey"
  foreign key ("deleted_by")
  references "auth"."users_data"
  ("uid") on update restrict on delete restrict;

CREATE INDEX areas_deleted_at_idx ON public.areas (deleted_at);

alter table "public"."classes" add column "deleted_at" timestamptz null;

alter table "public"."classes" add column "deleted_by" UUID null;

alter table "public"."classes"
  add constraint "classes_deleted_by_fkey"
  foreign key ("deleted_by")
  references "auth"."users_data"
  ("uid") on update restrict on delete restrict;

CREATE INDEX classes_deleted_at_idx ON public.classes (deleted_at);

alter table "public"."families" add column "deleted_at" timestamptz null;

alter table "public"."families" add column "deleted_by" UUID null;

alter table "public"."families"
  add constraint "families_deleted_by_fkey"
  foreign key ("deleted_by")
  references "auth"."users_data"
  ("uid") on update restrict on delete restrict;

CREATE INDEX families_deleted_at_idx ON public.families (deleted_at);

alter table "public"."groups" add column "deleted_at" timestamptz null;

alter table "public"."groups" add column "deleted_by" UUID null;

alter table "public"."groups"
  add constraint "groups_deleted_by_fkey"
  foreign key ("deleted_by")
  references "auth"."users_data"
  ("uid") on update restrict on delete restrict;

CREATE INDEX groups_deleted_at_idx ON public.groups (deleted_at);

alter table "public"."persons" add column "deleted_at" timestamptz null;

alter table "public"."persons" add column "deleted_by" UUID null;

alter table "public"."persons"
  add constraint "persons_deleted_by_fkey"
  foreign key ("deleted_by")
  references "auth"."users_data"
  ("uid") on update restrict on delete restrict;

CREATE INDEX persons_deleted_at_idx ON public.persons (deleted_at);

alter table "public"."services" add column "deleted_at" timestamptz null;

alter table "public"."services" add column "deleted_by" UUID null;

alter table "public"."services"
  add constraint "services_deleted_by_fkey"
  foreign key ("deleted_by")
  references "auth"."users_data"
  ("uid") on update restrict on delete restrict;

CREATE INDEX services_deleted_at_idx ON public.services (deleted_at);

alter table "public"."stores" add column "deleted_at" timestamptz null;

alter table "public"."stores" add column "deleted_by" UUID null;

alter table "public"."stores"
  add constraint "stores_deleted_by_fkey"
  foreign key ("deleted_by")
  references "auth"."users_data"
  ("uid") on update restrict on delete restrict;

CREATE INDEX stores_deleted_at_idx ON public.stores (deleted_at);

alter table "public"."streets" add column "deleted_at" timestamptz null;

alter table "public"."streets" add column "deleted_by" UUID null;

alter table "public"."streets"
  add constraint "streets_deleted_by_fkey"
  foreign key ("deleted_by")
  references "auth"."users_data"
  ("uid") on update restrict on delete restrict;

CREATE INDEX streets_deleted_at_idx ON public.streets (deleted_at);
