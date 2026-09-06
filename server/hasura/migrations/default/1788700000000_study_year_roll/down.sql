do $$
begin
    if exists (select 1 from pg_extension where extname = 'pg_cron') then
        perform cron.unschedule('study-year-roll');
    end if;
exception
    when others then
        raise notice 'study-year-roll is not scheduled';
end $$;

do $$
begin
    if exists (select 1 from pg_extension where extname = 'pg_cron') then
        perform cron.unschedule('study-year-roll-missed-check');
    end if;
exception
    when others then
        raise notice 'study-year-roll-missed-check is not scheduled';
end $$;

do $$
begin
    if exists (select 1 from operations.study_year_roll_runs where status = 'succeeded') then
        raise exception 'Cannot roll back: % completed study year roll(s) recorded. Rolling back this migration does not undo a roll; restore from backup instead.',
            (select count(*) from operations.study_year_roll_runs where status = 'succeeded');
    end if;
end $$;

drop procedure if exists operations.record_missed_study_year_roll(date);
drop procedure if exists operations.run_study_year_roll_when_due(date);
drop function if exists operations.run_study_year_roll(integer);
drop function if exists operations.apply_study_year_roll_plan();
drop function if exists operations.find_study_year_roll_blockers();
drop function if exists operations.plan_study_year_roll();
drop function if exists operations.study_year_outgrows_service(
    smallint, smallint
);
drop function if exists operations.study_year_roll_succeeded(integer);
drop function if exists operations.nayrouz_date(integer);
drop function if exists operations.current_season_year();
drop function if exists operations.cairo_now();
drop table if exists operations.study_year_roll_runs;
drop schema if exists operations;
