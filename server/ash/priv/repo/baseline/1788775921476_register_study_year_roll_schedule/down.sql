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
