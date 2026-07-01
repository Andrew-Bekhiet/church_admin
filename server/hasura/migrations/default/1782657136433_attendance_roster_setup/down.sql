drop view if exists history.meeting_roster;

do $$
begin
    execute format('alter database %I reset jit', current_database());
    execute format(
        'alter database %I set search_path to %s',
        current_database(),
        '"$user", public, topology'
    );
end
$$;

drop index if exists history.attendance_history_meeting_person_day_idx;

create unique index attendance_history_meeting_person_day_idx
on history.attendance_history (
    ((datetime at time zone 'UTC')::date),
    meeting_id,
    person_id
);

drop index if exists history.attendance_history_roster_lookup_idx;
drop index if exists auth.users_admin_on_admin_on_service_idx;
drop index if exists auth.users_admin_on_admin_on_group_idx;
