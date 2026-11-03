do $$
declare
    v_colliding_groups integer;
begin
    select count(*) into v_colliding_groups
    from (
        select 1
        from history.attendance_history
        group by
            (datetime at time zone 'Africa/Cairo')::date,
            meeting_id,
            person_id,
            as_servant
        having count(*) > 1
    ) as colliding;

    if v_colliding_groups > 0 then
        raise exception
        'Cannot rebucket attendance days in Cairo time: % person/meeting/day group(s) hold more than one record',
        v_colliding_groups;
    end if;
end
$$;

-- Pinned linter lacks SET EXPRESSION: [sqlfluff/sqlfluff#8705](https://github.com/sqlfluff/sqlfluff/issues/8705)
alter table history.attendance_history -- noqa: PRS
alter column day set expression as ((datetime at time zone 'Africa/Cairo')::date);
