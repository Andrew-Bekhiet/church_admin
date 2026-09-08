alter table "auth"."users_data" alter column "auth_id" drop not null;

comment on column "auth"."users_data"."auth_id" is 'Firebase Auth UID. NULL until the invited user claims the seeded row by signing up.';

do $$
declare
  colliding_addresses bigint;
begin
  select count(*)
    into colliding_addresses
    from (
      select 1
        from "auth"."users_data"
       group by lower(trim("email"))
      having count(*) > 1
    ) as collisions;

  if colliding_addresses > 0 then
    raise exception 'Cannot canonicalise emails: % address(es) differ only by case or surrounding whitespace. Merge those users first.',
      colliding_addresses;
  end if;
end $$;

update "auth"."users_data" set "email" = lower(trim("email")) where "email" <> lower(trim("email"));

alter table "auth"."users_data" add constraint "users_data_email_canonical" check ("email" = lower(trim("email")));
