do $$
begin
  if exists (select 1 from history.meetings where auto_attendance_weekday is not null) then
    raise exception 'Cannot roll back: % meeting(s) have an automatic attendance schedule', (select count(*) from history.meetings where auto_attendance_weekday is not null);
  end if;

  if exists (select 1 from history.meetings where auto_attendance_records_servants) then
    raise exception 'Cannot roll back: % meeting(s) record servants from fingerprint punches', (select count(*) from history.meetings where auto_attendance_records_servants);
  end if;
end $$;

alter table history.meetings
drop constraint if exists meetings_auto_communion_and_attendance_windows_disjoint_check,
drop constraint if exists meetings_auto_communion_window_starts_before_it_ends_check,
drop constraint if exists meetings_auto_attendance_window_starts_before_it_ends_check,
drop constraint if exists meetings_auto_communion_window_requires_attendance_window_check,
drop constraint if exists meetings_auto_communion_window_bounds_set_together_check,
drop constraint if exists meetings_auto_attendance_weekday_and_window_set_together_check;

alter table history.meetings
drop column if exists auto_attendance_records_servants,
drop column if exists auto_communion_ends_at,
drop column if exists auto_communion_starts_at,
drop column if exists auto_attendance_ends_at,
drop column if exists auto_attendance_starts_at,
drop column if exists auto_attendance_weekday;

drop domain if exists history.iso_weekday;
