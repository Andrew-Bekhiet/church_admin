do $$
begin
  if exists (select 1 from public.persons_fingerprint_ids) then
    raise exception 'Cannot roll back: % fingerprint id(s) are linked to persons', (select count(*) from public.persons_fingerprint_ids);
  end if;

  if exists (
    select 1 from auth.users_permissions as new_name_holders
    where
      new_name_holders.permission = 'appMaintenance'
      and not exists (
        select 1 from auth.users_permissions as old_name_holders
        where
          old_name_holders.uid = new_name_holders.uid
          and old_name_holders.permission = 'maintenanceNotifications'
      )
  ) then
    raise exception 'Cannot roll back: some users hold appMaintenance without maintenanceNotifications and would lose app maintenance';
  end if;

  if exists (
    select 1 from auth.users_permissions as fingerprint_holders
    where
      fingerprint_holders.permission = 'manageFingerprintIds'
      and not exists (
        select 1 from auth.users_permissions as old_name_holders
        where
          old_name_holders.uid = fingerprint_holders.uid
          and old_name_holders.permission = 'maintenanceNotifications'
      )
  ) then
    raise exception 'Cannot roll back: manageFingerprintIds was granted to users beyond the maintenanceNotifications holders';
  end if;
end $$;

drop table if exists public.persons_fingerprint_ids;

drop domain if exists public.fingerprint_employee_code;

delete from auth.users_permissions
where permission in ('appMaintenance', 'manageFingerprintIds');

delete from auth.permissions
where name in ('appMaintenance', 'manageFingerprintIds');
