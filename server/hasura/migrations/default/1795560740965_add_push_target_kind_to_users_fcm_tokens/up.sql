do $$
begin
  if not exists (
    select 1 from pg_type
    where typnamespace = 'public'::regnamespace and typname = 'push_target_kind'
  ) then
    create domain public.push_target_kind as text
    constraint push_target_kind_is_registration_token_or_installation_id_check
    check (value in ('registration_token', 'installation_id'));
  end if;
end $$;

alter table public.users_fcm_tokens
add column if not exists kind public.push_target_kind not null default 'registration_token';

create unique index if not exists users_fcm_tokens_one_owner_per_installation_id_idx
on public.users_fcm_tokens (token)
where kind = 'installation_id';
