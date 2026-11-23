alter table history.attendance_history
drop constraint if exists attendance_history_day_meeting_id_person_id_as_servant_key;

create unique index if not exists attendance_history_meeting_person_day_idx
on history.attendance_history ("day", meeting_id, person_id, as_servant);
