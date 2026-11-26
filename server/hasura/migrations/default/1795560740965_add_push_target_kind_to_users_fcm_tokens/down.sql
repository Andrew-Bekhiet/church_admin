do $$
begin
  if exists (select 1 from public.users_fcm_tokens where kind = 'installation_id') then
    raise exception 'Cannot roll back: % installation id(s) are registered for push notifications',
      (select count(*) from public.users_fcm_tokens where kind = 'installation_id');
  end if;
end $$;

drop index if exists public.users_fcm_tokens_one_owner_per_installation_id_idx;

alter table public.users_fcm_tokens drop column if exists kind;

drop domain if exists public.push_target_kind;
