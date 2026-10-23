insert into auth.permissions (name)
values ('screenCaptureNotifications')
on conflict (name) do nothing;

create table if not exists operations.screen_capture_attempts (
    id bigint generated always as identity primary key,
    "uid" uuid not null references auth.users_data ("uid") on delete cascade,
    capture_kind text not null,
    recorded_at timestamptz not null default now(),
    constraint screen_capture_attempts_capture_kind_check
    check (capture_kind in ('screenshot', 'screen_recording'))
);

create index if not exists screen_capture_attempts_uid_recorded_at
on operations.screen_capture_attempts ("uid", recorded_at desc);
