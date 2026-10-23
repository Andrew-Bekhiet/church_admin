do $$
begin
  if exists (select 1 from operations.screen_capture_attempts) then
    raise exception 'Cannot roll back: % screen capture attempt(s) are recorded', (select count(*) from operations.screen_capture_attempts);
  end if;
end $$;

drop table if exists operations.screen_capture_attempts;

delete from auth.users_permissions
where permission = 'screenCaptureNotifications';

delete from auth.permissions
where name = 'screenCaptureNotifications';
