-- E2E backend only, never a migration: copies every app table once the seeds
-- and the admin sign-up are in, so each journey can start from that state.
drop schema if exists e2e_snapshot cascade;
create schema e2e_snapshot;

create table e2e_snapshot.copied_tables (
    source regclass primary key,
    snapshot regclass not null,
    insertable_columns text not null
);

do $$
declare
    app_table record;
    insertable_columns text;
    copy_name text;
begin
    for app_table in
        select c.oid::regclass as source, n.nspname, c.relname
        from pg_class as c
        inner join pg_namespace as n on c.relnamespace = n.oid
        where
            c.relkind in ('r', 'p')
            and not c.relispartition
            and n.nspname not in (
                'pg_catalog', 'information_schema', 'pg_toast', 'hdb_catalog', 'e2e_snapshot'
            )
            and not exists (
                select 1
                from pg_depend as d
                where
                    d.classid = 'pg_class'::regclass
                    and d.objid = c.oid
                    and d.deptype = 'e'
            )
    loop
        select string_agg(quote_ident(a.attname), ', ' order by a.attnum)
        into insertable_columns
        from pg_attribute as a
        where
            a.attrelid = app_table.source
            and a.attnum > 0
            and not a.attisdropped
            and a.attgenerated = '';

        copy_name := app_table.nspname || '__' || app_table.relname;
        execute format(
            'create table e2e_snapshot.%I as select %s from %s',
            copy_name, insertable_columns, app_table.source
        );
        insert into e2e_snapshot.copied_tables
        values (
            app_table.source,
            format('e2e_snapshot.%I', copy_name)::regclass,
            insertable_columns
        );
    end loop;
end
$$;

-- Replica mode keeps triggers, including foreign keys and the permission cache
-- sync, from firing on rows that are already consistent in the snapshot.
create function e2e_snapshot.restore_seeded_state()
returns void
language plpgsql
set session_replication_role = replica
as $$
declare
    copied record;
begin
    execute (
        select 'truncate ' || string_agg(source::text, ', ')
        from e2e_snapshot.copied_tables
    );

    for copied in select * from e2e_snapshot.copied_tables loop
        execute format(
            'insert into %s (%s) overriding system value select %s from %s',
            copied.source, copied.insertable_columns, copied.insertable_columns, copied.snapshot
        );
    end loop;
end
$$;
