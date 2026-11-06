do $$
begin
  if exists (select 1 from auth.users_permissions where permission = 'changeDataChecks') then
    raise exception 'Cannot roll back: % user(s) hold changeDataChecks', (select count(*) from auth.users_permissions where permission = 'changeDataChecks');
  end if;
end $$;

delete from auth.permissions
where name = 'changeDataChecks';
