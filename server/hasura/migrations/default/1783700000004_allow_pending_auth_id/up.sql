alter table "auth"."users_data" alter column "auth_id" drop not null;

comment on column "auth"."users_data"."auth_id" is 'Firebase Auth UID. NULL until the invited user verifies their email and claims the row.';

update "auth"."users_data" set "email" = lower(trim("email")) where "email" <> lower(trim("email"));

alter table "auth"."users_data" add constraint "users_data_email_canonical" check ("email" = lower(trim("email")));
