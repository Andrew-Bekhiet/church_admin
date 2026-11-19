do $$
begin
  if not exists (
    select 1 from pg_constraint
    where
      conname = 'attendance_history_meeting_person_day_idx'
      and conrelid = 'history.attendance_history'::regclass
  ) then
    alter table history.attendance_history
    add constraint attendance_history_meeting_person_day_idx
    unique using index attendance_history_meeting_person_day_idx;
  end if;
end $$;
