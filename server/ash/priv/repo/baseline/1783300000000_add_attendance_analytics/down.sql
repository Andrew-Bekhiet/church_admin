drop view history.meeting_days;

drop index history.attendance_history_meeting_day_idx;

drop index history.attendance_history_meeting_person_day_idx;

create unique index attendance_history_meeting_person_day_idx
on history.attendance_history (
    ((datetime at time zone 'UTC')::date),
    meeting_id,
    person_id,
    as_servant
);

alter table history.attendance_history
drop column day;
