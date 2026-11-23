create or replace view history.meeting_auto_presence_candidates (
    person_id,
    meeting_id,
    as_servant,
    window_kind,
    iso_weekday,
    window_start_time,
    window_end_time
) as
select
    roster.person_id,
    roster.meeting_id,
    roster.as_servant,
    'attendance'::text as window_kind,
    meetings.auto_attendance_weekday as iso_weekday,
    meetings.auto_attendance_start_time as window_start_time,
    meetings.auto_attendance_end_time as window_end_time
from history.meeting_roster as roster
inner join history.meetings as meetings on roster.meeting_id = meetings.id
where
    meetings.is_archived is false
    and meetings.auto_attendance_weekday is not null
    and (roster.as_servant is false or meetings.auto_attendance_records_servants)

union all

select
    roster.person_id,
    roster.meeting_id,
    roster.as_servant,
    'communion'::text as window_kind,
    meetings.auto_attendance_weekday as iso_weekday,
    meetings.auto_communion_start_time as window_start_time,
    meetings.auto_communion_end_time as window_end_time
from history.meeting_roster as roster
inner join history.meetings as meetings on roster.meeting_id = meetings.id
where
    meetings.is_archived is false
    and meetings.auto_attendance_weekday is not null
    and meetings.auto_communion_start_time is not null;
