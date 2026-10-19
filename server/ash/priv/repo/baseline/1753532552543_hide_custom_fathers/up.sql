
alter table "public"."fathers" add column "is_hidden" Boolean
 not null default 'true';

update fathers set is_hidden = false;
