alter table public.users_fcm_tokens
add column if not exists owner_session_started_at timestamptz;
