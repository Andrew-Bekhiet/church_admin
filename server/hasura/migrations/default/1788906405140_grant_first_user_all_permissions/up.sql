create or replace function auth.grant_first_user_all_permissions(user_uid uuid)
returns setof auth.users_permissions
language plpgsql
volatile
as $$
declare
  permission_name text;
  granted auth.users_permissions;
begin
  perform pg_advisory_xact_lock(hashtext('auth.grant_first_user_all_permissions'));

  if exists (select 1 from auth.users_permissions) then
    return;
  end if;

  -- check_users_permissions_level_consistency is a BEFORE ROW trigger and does
  -- not see rows inserted by its own statement, so each permission is inserted
  -- on its own, prerequisites first.
  for permission_name in
    select name
    from auth.permissions
    order by array_position(
      array['readAllData', 'writeAllData', 'manageAllUsers'],
      name
    ) nulls first
  loop
    insert into auth.users_permissions (uid, permission)
    values (user_uid, permission_name)
    returning * into granted;

    return next granted;
  end loop;
end;
$$;
