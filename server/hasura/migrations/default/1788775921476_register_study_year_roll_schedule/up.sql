do $$
begin
    if exists (select 1 from pg_available_extensions where name = 'pg_cron') then
        if current_setting('shared_preload_libraries', true) like '%pg_cron%' then
            create extension if not exists pg_cron;

            perform cron.schedule(
                'study-year-roll',
                '0 * 11 9 *',
                'call operations.run_study_year_roll_when_due()'
            );

            perform cron.schedule(
                'study-year-roll-missed-check',
                '0 6 12 9 *',
                'call operations.record_missed_study_year_roll()'
            );
        else
            raise exception 'pg_cron is available but not preloaded; add pg_cron to shared_preload_libraries and restart Postgres, then re-run this migration';
        end if;
    else
        raise warning 'pg_cron is not available; study year roll schedule not registered';
    end if;
end $$;
