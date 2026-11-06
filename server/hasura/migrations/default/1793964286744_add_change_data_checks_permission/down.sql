do $$
begin
  if exists (
    select 1
    from auth.users_permissions as granted
    where granted.permission = 'changeDataChecks'
      and not exists (
        select 1
        from auth.users_permissions as write_all
        where write_all.uid = granted.uid
          and write_all.permission = 'writeAllData'
      )
  ) then
    raise exception 'Cannot roll back: % user(s) were granted changeDataChecks without writeAllData', (
      select count(*)
      from auth.users_permissions as granted
      where granted.permission = 'changeDataChecks'
        and not exists (
          select 1
          from auth.users_permissions as write_all
          where write_all.uid = granted.uid
            and write_all.permission = 'writeAllData'
        )
    );
  end if;
end $$;

delete from auth.users_permissions
where permission = 'changeDataChecks';

delete from auth.permissions
where name = 'changeDataChecks';
