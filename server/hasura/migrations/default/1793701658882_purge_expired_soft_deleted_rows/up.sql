create schema if not exists operations;

do $$
begin
    if not exists (
        select 1 from pg_type
        where typname = 'soft_deleted_purge_run_status'
          and typnamespace = 'operations'::regnamespace
    ) then
        create domain operations.soft_deleted_purge_run_status as text
        check (value in ('completed', 'failed'));
    end if;
end $$;

create table if not exists operations.soft_deleted_purge_runs (
    id bigint generated always as identity primary key,
    recorded_at timestamptz not null default now(),
    deleted_before timestamptz not null,
    status operations.soft_deleted_purge_run_status not null,
    purged_counts jsonb,
    error text
);

create table if not exists operations.soft_deleted_purge_kept_rows (
    id bigint generated always as identity primary key,
    run_id bigint not null,
    table_name text not null,
    row_id uuid not null,
    kept_because text not null,
    error_sqlstate text,
    error_constraint text,
    error text,
    error_detail text,
    constraint soft_deleted_purge_kept_rows_run_id_fkey
    foreign key (run_id) references operations.soft_deleted_purge_runs (id)
    on delete cascade
);

create index if not exists soft_deleted_purge_kept_rows_run_id_idx
on operations.soft_deleted_purge_kept_rows (run_id);

create or replace function operations.soft_deleted_rows_retention()
returns interval
language sql
immutable
return interval '45 days';

create or replace function operations.soft_deleted_purge_order()
returns text []
language sql
immutable
return array[
    'public.persons',
    'public.classes',
    'public.groups',
    'public.stores',
    'public.families',
    'public.services',
    'public.streets',
    'public.areas'
];

create or replace function operations.is_live_person_without_own_connection(
    p_person public.persons
)
returns boolean
language sql
immutable
return p_person.deleted_at is null
and p_person.family_id is null
and p_person.store_id is null
and p_person.uid is null;

create or replace function operations.soft_deleted_purge_guards()
returns table (target_table text, keep_reason text, keep_predicate text)
language sql
immutable
as $$
    values
        (
            'public.stores',
            'store_still_has_persons',
            'exists (select 1 from public.persons person where person.store_id = doomed.id)'
        ),
        (
            'public.families',
            'family_still_has_persons',
            'exists (select 1 from public.persons person where person.family_id = doomed.id)'
        ),
        (
            'public.families',
            'family_still_administers_store',
            'exists (select 1 from public.stores store where store.admin_family = doomed.id)'
        ),
        (
            'public.services',
            'service_is_next_service_of_live_service',
            'exists (select 1 from public.services previous'
            || ' where previous.next_service_id = doomed.id and previous.deleted_at is null)'
        ),
        (
            'public.areas',
            'area_still_has_live_streets',
            'exists (select 1 from public.areas_streets link'
            || ' join public.streets street on street.id = link.street_id'
            || ' where link.area_id = doomed.id and street.deleted_at is null)'
        ),
        (
            'public.groups',
            'group_is_last_connection_of_live_person',
            'exists (select 1 from public.persons_groups link'
            || ' join public.persons person on person.id = link.person_id'
            || ' where link.group_id = doomed.id'
            || ' and operations.is_live_person_without_own_connection(person)'
            || ' and not exists (select 1 from public.persons_groups other'
            || ' join public.groups grp on grp.id = other.group_id'
            || ' where other.person_id = person.id and other.group_id <> doomed.id and grp.deleted_at is null)'
            || ' and not exists (select 1 from public.persons_services other'
            || ' join public.services service on service.id = other.service_id'
            || ' where other.person_id = person.id and service.deleted_at is null))'
        ),
        (
            'public.services',
            'service_is_last_connection_of_live_person',
            'exists (select 1 from public.persons_services link'
            || ' join public.persons person on person.id = link.person_id'
            || ' where link.service_id = doomed.id'
            || ' and operations.is_live_person_without_own_connection(person)'
            || ' and not exists (select 1 from public.persons_services other'
            || ' join public.services service on service.id = other.service_id'
            || ' where other.person_id = person.id and other.service_id <> doomed.id'
            || ' and service.deleted_at is null)'
            || ' and not exists (select 1 from public.persons_groups other'
            || ' join public.groups grp on grp.id = other.group_id'
            || ' where other.person_id = person.id and grp.deleted_at is null))'
        )
$$;

create or replace function operations.record_soft_deleted_rows_kept_by_guards(
    p_run_id bigint, p_table text, p_deleted_before timestamptz
)
returns void
language plpgsql
as $$
declare
    v_guard record;
begin
    for v_guard in
        select guard.keep_reason, guard.keep_predicate
        from operations.soft_deleted_purge_guards() guard
        where guard.target_table = p_table
    loop
        execute format(
            'insert into operations.soft_deleted_purge_kept_rows (run_id, table_name, row_id, kept_because)'
            ' select $1, $2, doomed.id, $3 from %s doomed where doomed.deleted_at < $4 and (%s)',
            p_table::regclass,
            v_guard.keep_predicate
        )
        using p_run_id, p_table, v_guard.keep_reason, p_deleted_before;
    end loop;
end;
$$;

create or replace function operations.delete_unguarded_expired_soft_deleted_rows(
    p_run_id bigint, p_table text, p_deleted_before timestamptz
)
returns bigint
language plpgsql
as $$
declare
    v_unguarded text;
    v_expired_ids uuid [];
    v_id uuid;
    v_purged bigint := 0;
    v_rows bigint;
    v_sqlstate text;
    v_constraint text;
    v_error text;
    v_error_detail text;
begin
    select coalesce(string_agg(format('not (%s)', guard.keep_predicate), ' and '), 'true')
    into v_unguarded
    from operations.soft_deleted_purge_guards() guard
    where guard.target_table = p_table;

    execute format(
        'select coalesce(array_agg(doomed.id), ''{}'') from %s doomed'
        ' where doomed.deleted_at < $1 and %s',
        p_table::regclass,
        v_unguarded
    )
    into v_expired_ids
    using p_deleted_before;

    begin
        execute format(
            'delete from %s doomed where doomed.id = any($1) and doomed.deleted_at < $2 and %s',
            p_table::regclass,
            v_unguarded
        )
        using v_expired_ids, p_deleted_before;
        get diagnostics v_purged = row_count;

        return v_purged;
    exception
        when others then
            v_purged := 0;
    end;

    foreach v_id in array v_expired_ids loop
        begin
            execute format(
                'delete from %s doomed where doomed.id = $1 and doomed.deleted_at < $2 and %s',
                p_table::regclass,
                v_unguarded
            )
            using v_id, p_deleted_before;
            get diagnostics v_rows = row_count;
            v_purged := v_purged + v_rows;
        exception
            when others then
                get stacked diagnostics
                    v_sqlstate = returned_sqlstate,
                    v_constraint = constraint_name,
                    v_error = message_text,
                    v_error_detail = pg_exception_detail;

                insert into operations.soft_deleted_purge_kept_rows (
                    run_id,
                    table_name,
                    row_id,
                    kept_because,
                    error_sqlstate,
                    error_constraint,
                    error,
                    error_detail
                )
                values (
                    p_run_id,
                    p_table,
                    v_id,
                    'delete_failed',
                    v_sqlstate,
                    nullif(v_constraint, ''),
                    v_error,
                    nullif(v_error_detail, '')
                );
        end;
    end loop;

    return v_purged;
end;
$$;

create or replace function operations.purge_expired_soft_deleted_rows(
    p_deleted_before timestamptz default null
)
returns table (target_table text, purged_rows bigint)
language plpgsql
as $$
declare
    v_deleted_before timestamptz := coalesce(
        p_deleted_before, now() - operations.soft_deleted_rows_retention()
    );
    v_run_id bigint;
    v_table text;
    v_purged_counts jsonb := '{}';
begin
    perform pg_advisory_xact_lock(hashtext('operations.purge_expired_soft_deleted_rows'));

    set constraints all immediate;

    insert into operations.soft_deleted_purge_runs (deleted_before, status)
    values (v_deleted_before, 'completed')
    returning id into v_run_id;

    foreach v_table in array operations.soft_deleted_purge_order() loop
        perform operations.record_soft_deleted_rows_kept_by_guards(
            v_run_id, v_table, v_deleted_before
        );

        v_purged_counts := v_purged_counts || jsonb_build_object(
            v_table,
            operations.delete_unguarded_expired_soft_deleted_rows(
                v_run_id, v_table, v_deleted_before
            )
        );
    end loop;

    update operations.soft_deleted_purge_runs run
    set purged_counts = v_purged_counts
    where run.id = v_run_id;

    return query
    select purged.key, purged.value::bigint
    from jsonb_each_text(v_purged_counts) purged;
end;
$$;

create or replace procedure operations.purge_expired_soft_deleted_rows_or_record_failure()
language plpgsql
as $$
declare
    v_deleted_before timestamptz := now() - operations.soft_deleted_rows_retention();
    v_error text;
    v_error_detail text;
begin
    begin
        perform operations.purge_expired_soft_deleted_rows(v_deleted_before);
    exception
        when others then
            get stacked diagnostics
                v_error = message_text,
                v_error_detail = pg_exception_detail;
    end;

    if v_error is not null then
        insert into operations.soft_deleted_purge_runs (deleted_before, status, error)
        values (
            v_deleted_before,
            'failed',
            concat_ws(chr(10), v_error, nullif(v_error_detail, ''))
        );
    end if;
end;
$$;

do $$
begin
    if exists (select 1 from pg_available_extensions where name = 'pg_cron') then
        if current_setting('shared_preload_libraries', true) like '%pg_cron%' then
            create extension if not exists pg_cron;

            perform cron.schedule(
                'purge-expired-soft-deleted-rows',
                '0 1 * * 0',
                'call operations.purge_expired_soft_deleted_rows_or_record_failure()'
            );
        else
            raise exception 'pg_cron is available but not preloaded; add pg_cron to shared_preload_libraries and restart Postgres, then re-run this migration';
        end if;
    else
        raise warning 'pg_cron is not available; soft-deleted rows purge schedule not registered';
    end if;
end $$;
