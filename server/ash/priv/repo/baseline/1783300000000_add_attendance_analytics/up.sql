alter table history.attendance_history
add column day date generated always as
((datetime at time zone 'UTC')::date) stored;

-- Rebase the per-day uniqueness rule on the stored column so analytics can
-- filter and group by day without repeating the expression.
drop index history.attendance_history_meeting_person_day_idx;

create unique index attendance_history_meeting_person_day_idx
on history.attendance_history (day, meeting_id, person_id, as_servant);

create index attendance_history_meeting_day_idx
on history.attendance_history using btree (meeting_id, day);

-- A meeting is considered "held" on a day iff any attendance was recorded.
-- Fold the demographic breakdown into history.meeting_days instead of keeping a
-- separate history.meeting_day_demographics view. meeting_days is now
-- demographic-grained: one row per (meeting, day, study year, gender). Rolling
-- these rows up over study_year_id + gender reproduces the previous day-grain
-- totals, which callers now do client-side where they need whole-day counts.
create view history.meeting_days (
    meeting_id,
    day,
    study_year_id,
    gender,
    persons_count,
    servants_count,
    total_count
) as
select
    ah.meeting_id,
    ah.day,
    p.study_year_id,
    p.gender,
    (count(*) filter (where ah.as_servant is false))::integer as persons_count,
    (count(*) filter (where ah.as_servant is true))::integer as servants_count,
    count(*)::integer as total_count
from history.attendance_history as ah
inner join public.persons as p on ah.person_id = p.id
group by ah.meeting_id, ah.day, p.study_year_id, p.gender;
