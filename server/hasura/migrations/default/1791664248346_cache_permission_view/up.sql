-- Writers to the permission inputs wait until the cache and its sync triggers
-- commit together, so no change lands between the build and the triggers.
lock table
auth.users_admin_on,
auth.users_data,
auth.users_permissions,
public.addresses,
public.areas_streets,
public.classes,
public.persons,
public.persons_groups,
public.persons_services
in share mode;

create table if not exists auth.users_permissions_by_entity_id_cache as
select
    uid,
    entity_type,
    "table",
    entity_id,
    bool_or(allow_edit) as allow_edit,
    bool_or(allow_export) as allow_export
from auth.users_permissions_by_entity_id
group by uid, entity_type, "table", entity_id;

alter table auth.users_permissions_by_entity_id_cache
add constraint users_permissions_by_entity_id_cache_key
unique nulls not distinct (uid, entity_type, entity_id, "table");

create index if not exists users_permissions_by_entity_id_cache_entity_idx
on auth.users_permissions_by_entity_id_cache (entity_type, entity_id);

create or replace function auth.sync_users_permissions_by_entity_id_cache()
returns trigger
language plpgsql
as $$
begin
    -- Waiting here, in its own statement, gives the sync below a snapshot
    -- taken after every earlier writer committed; a sync whose snapshot
    -- predates an earlier writer's commit would undo that writer's changes.
    perform pg_advisory_xact_lock(
        'auth.users_permissions_by_entity_id_cache'::regclass::oid::bigint
    );

    with fresh as materialized (
        select
            uid,
            entity_type,
            "table",
            entity_id,
            bool_or(allow_edit) as allow_edit,
            bool_or(allow_export) as allow_export
        from auth.users_permissions_by_entity_id
        group by uid, entity_type, "table", entity_id
    ),

    revoked as (
        select uid, entity_type, "table", entity_id
        from auth.users_permissions_by_entity_id_cache
        except
        select uid, entity_type, "table", entity_id
        from fresh
    ),

    deleted as (
        delete from auth.users_permissions_by_entity_id_cache as cached
        using revoked
        where
            cached.uid = revoked.uid
            and cached.entity_type = revoked.entity_type
            and cached."table" is not distinct from revoked."table"
            and cached.entity_id is not distinct from revoked.entity_id
    )

    insert into auth.users_permissions_by_entity_id_cache
    select * from fresh
    except
    select uid, entity_type, "table", entity_id, allow_edit, allow_export
    from auth.users_permissions_by_entity_id_cache
    on conflict on constraint users_permissions_by_entity_id_cache_key
    do update set
        allow_edit = excluded.allow_edit,
        allow_export = excluded.allow_export;

    return null;
end;
$$;

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of
uid,
permission_id,
admin_on_area,
admin_on_group,
admin_on_service,
area_admin_on_users,
area_allow_edit,
area_allow_export,
group_admin_on_users,
group_allow_edit,
group_allow_export,
group_allow_record_servants_attendance,
group_write_related_families,
service_admin_on_users,
service_allow_edit,
service_allow_export,
service_allow_record_servants_attendance,
service_gender,
service_study_year,
service_write_related_families
on auth.users_admin_on
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of uid
on auth.users_data
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of uid, permission
on auth.users_permissions
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of family_id, store_id, area_id
on public.addresses
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of area_id, street_id
on public.areas_streets
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of
id, service_id, service_gender, service_study_year, service_study_year_to
on public.classes
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of
id, uid, family_id, store_id, study_year_id, gender, deleted_at
on public.persons
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of person_id, group_id
on public.persons_groups
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();

create or replace trigger sync_users_permissions_by_entity_id_cache
after insert or delete or truncate or update of person_id, service_id
on public.persons_services
for each statement
execute function auth.sync_users_permissions_by_entity_id_cache();
