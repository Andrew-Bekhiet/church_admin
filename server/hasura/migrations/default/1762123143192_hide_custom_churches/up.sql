
alter table "public"."churches" add column "is_hidden" boolean not null default 'true';

update churches set is_hidden = false;
