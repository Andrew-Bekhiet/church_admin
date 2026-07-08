-- Unused view, superseded by history.meeting_roster. Also removes its Hasura
-- relationships (persons.meetings, meetings.persons) — dropped in metadata.
drop view if exists history.meetings_persons;

-- No-op trigger: it is BEFORE INSERT but only guards OLD.day, which is always
-- null on insert. Remove the trigger and its function.
drop trigger if exists check_update on history.attendance_days;
drop function if exists history.check_attendance_days_update();

-- Functions orphaned when history.attendance_days_constraints was dropped
-- (migration 1782000000000). Their triggers are already gone.
drop function if exists history.check_service_group_rel();
drop function if exists history.check_service_study_year_rel();

-- Legacy join tables emptied by the structured-addresses migration
-- (1741866532992) and replaced by public.addresses.
drop table if exists public.streets_families;
drop table if exists public.streets_stores;

-- Visit taxonomy tables created in init and never wired up. visit_periods
-- FKs visit_categories, so drop it first.
drop table if exists history.visit_periods;
drop table if exists history.visit_categories;

-- Unused config table.
drop table if exists public.config;

-- Unused column on the shared day-dimension table (client only writes `day`).
alter table history.attendance_days drop column if exists notes;
