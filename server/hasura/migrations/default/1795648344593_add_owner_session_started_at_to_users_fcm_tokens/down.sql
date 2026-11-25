do $$
begin
  if exists (select 1 from public.users_fcm_tokens where owner_session_started_at is not null) then
    raise exception 'Cannot roll back: % push target(s) record their owner''s session start',
      (select count(*) from public.users_fcm_tokens where owner_session_started_at is not null);
  end if;
end $$;

alter table public.users_fcm_tokens drop column if exists owner_session_started_at;
