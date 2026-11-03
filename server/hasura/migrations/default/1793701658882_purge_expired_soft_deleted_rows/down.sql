do $$
begin
    if exists (select 1 from pg_extension where extname = 'pg_cron') then
        perform cron.unschedule('purge-expired-soft-deleted-rows');
    end if;
exception
    when others then
        raise notice 'purge-expired-soft-deleted-rows is not scheduled';
end $$;

do $$
begin
    if exists (select 1 from operations.soft_deleted_purge_runs) then
        raise exception 'Cannot roll back: % soft-deleted purge run(s) recorded. Rolling back drops their log and does not restore purged rows; restore from backup instead.',
            (select count(*) from operations.soft_deleted_purge_runs);
    end if;
end $$;

drop procedure if exists operations.purge_expired_soft_deleted_rows_or_record_failure();
drop function if exists operations.purge_expired_soft_deleted_rows(timestamptz);
drop function if exists operations.delete_unguarded_expired_soft_deleted_rows(
    bigint, text, timestamptz
);
drop function if exists operations.record_soft_deleted_rows_kept_by_guards(
    bigint, text, timestamptz
);
drop function if exists operations.soft_deleted_purge_guards();
drop function if exists operations.soft_deleted_purge_order();
drop function if exists operations.soft_deleted_rows_retention();
drop table if exists operations.soft_deleted_purge_kept_rows;
drop table if exists operations.soft_deleted_purge_runs;
