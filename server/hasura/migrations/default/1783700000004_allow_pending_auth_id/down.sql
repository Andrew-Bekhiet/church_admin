alter table "auth"."users_data" drop constraint if exists "users_data_email_canonical";

do $$
begin
  if exists (select 1 from "auth"."users_data" where "auth_id" is null) then
    raise exception 'Cannot roll back: % pending invite(s) still have a null auth_id. Resolve or remove them first.',
      (select count(*) from "auth"."users_data" where "auth_id" is null);
  end if;
end $$;

alter table "auth"."users_data" alter column "auth_id" set not null;

comment on column "auth"."users_data"."auth_id" is null;
