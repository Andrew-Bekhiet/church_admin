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
add column if not exists auto_attendance_start_time time,
add column if not exists auto_attendance_end_time time,
add column if not exists auto_communion_start_time time,
add column if not exists auto_communion_end_time time,
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
    num_nulls(auto_attendance_weekday, auto_attendance_start_time, auto_attendance_end_time) in (0, 3)
) not valid,
add constraint meetings_auto_communion_window_bounds_set_together_check check (
    num_nulls(auto_communion_start_time, auto_communion_end_time) in (0, 2)
) not valid,
add constraint meetings_auto_communion_window_requires_attendance_window_check check (
    auto_communion_start_time is null or auto_attendance_weekday is not null
) not valid,
add constraint meetings_auto_attendance_window_starts_before_it_ends_check check (
    auto_attendance_start_time < auto_attendance_end_time
) not valid,
add constraint meetings_auto_communion_window_starts_before_it_ends_check check (
    auto_communion_start_time < auto_communion_end_time
) not valid,
add constraint meetings_auto_communion_and_attendance_windows_disjoint_check check (
    auto_communion_end_time <= auto_attendance_start_time
    or auto_attendance_end_time <= auto_communion_start_time
) not valid;
