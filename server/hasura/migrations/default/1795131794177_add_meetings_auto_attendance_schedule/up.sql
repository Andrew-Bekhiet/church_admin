do $$
begin
  if not exists (
    select 1 from pg_type
    where typname = 'iso_weekday' and typnamespace = 'history'::regnamespace
  ) then
    create domain history.iso_weekday as smallint
    constraint iso_weekday_between_monday_1_and_sunday_7_check check (value between 1 and 7);
  end if;
end $$;

alter table history.meetings
add column if not exists auto_attendance_weekday history.iso_weekday,
add column if not exists auto_attendance_starts_at time,
add column if not exists auto_attendance_ends_at time,
add column if not exists auto_communion_starts_at time,
add column if not exists auto_communion_ends_at time,
add column if not exists auto_attendance_records_servants boolean not null default false;

alter table history.meetings
drop constraint if exists meetings_auto_attendance_weekday_and_window_set_together_check,
drop constraint if exists meetings_auto_communion_window_bounds_set_together_check,
drop constraint if exists meetings_auto_communion_window_requires_attendance_window_check,
drop constraint if exists meetings_auto_attendance_window_starts_before_it_ends_check,
drop constraint if exists meetings_auto_communion_window_starts_before_it_ends_check,
drop constraint if exists meetings_auto_communion_and_attendance_windows_disjoint_check;

alter table history.meetings
add constraint meetings_auto_attendance_weekday_and_window_set_together_check check (
    num_nulls(auto_attendance_weekday, auto_attendance_starts_at, auto_attendance_ends_at) in (0, 3)
),
add constraint meetings_auto_communion_window_bounds_set_together_check check (
    num_nulls(auto_communion_starts_at, auto_communion_ends_at) in (0, 2)
),
add constraint meetings_auto_communion_window_requires_attendance_window_check check (
    auto_communion_starts_at is null or auto_attendance_weekday is not null
),
add constraint meetings_auto_attendance_window_starts_before_it_ends_check check (
    auto_attendance_starts_at < auto_attendance_ends_at
),
add constraint meetings_auto_communion_window_starts_before_it_ends_check check (
    auto_communion_starts_at < auto_communion_ends_at
),
add constraint meetings_auto_communion_and_attendance_windows_disjoint_check check (
    auto_communion_ends_at <= auto_attendance_starts_at
    or auto_attendance_ends_at <= auto_communion_starts_at
);
