create or replace function auth.enforce_permission_grant_level()
returns trigger
language plpgsql
security definer
as $$
declare
    granter uuid := nullif(
        current_setting('hasura.user', true)::json ->> 'x-hasura-user-id', ''
    )::uuid;
begin
    if granter is null then
        return new;
    end if;

    if not exists (
        select 1
        from auth.users_permissions up
        where up.uid = granter and up.permission = new.permission
    ) then
        raise exception 'Cannot grant permission % you do not hold', new.permission
            using errcode = '42501';
    end if;

    return new;
end;
$$;

create trigger enforce_permission_grant_level
before insert or update on auth.users_permissions
for each row execute function auth.enforce_permission_grant_level();

create or replace function auth.enforce_admin_on_grant_level()
returns trigger
language plpgsql
security definer
as $$
declare
    granter uuid := nullif(
        current_setting('hasura.user', true)::json ->> 'x-hasura-user-id', ''
    )::uuid;
begin
    if granter is null then
        return new;
    end if;

    -- Global user managers may delegate any scope.
    if exists (
        select 1 from auth.users_permissions up
        where up.uid = granter and up.permission = 'manageAllUsers'
    ) then
        return new;
    end if;

    if new.admin_on_service is not null then
        if not exists (
            select 1
            from auth.users_admin_on g
            where g.uid = granter
                and g.admin_on_service = new.admin_on_service
                and coalesce(g.service_admin_on_users, false)
                and (g.service_study_year is null
                    or g.service_study_year = new.service_study_year)
                and (g.service_gender is null
                    or g.service_gender = new.service_gender)
                and (coalesce(g.service_allow_edit, false)
                    or not coalesce(new.service_allow_edit, false))
                and (coalesce(g.service_allow_export, false)
                    or not coalesce(new.service_allow_export, false))
                and (coalesce(g.service_allow_record_attendance, false)
                    or not coalesce(new.service_allow_record_attendance, false))
                and (coalesce(g.service_allow_record_servants_attendance, false)
                    or not coalesce(new.service_allow_record_servants_attendance, false))
                and (coalesce(g.service_write_related_families, false)
                    or not coalesce(new.service_write_related_families, false))
                and (coalesce(g.service_admin_on_users, false)
                    or not coalesce(new.service_admin_on_users, false))
        ) then
            raise exception 'Cannot grant service scope beyond your own authority'
                using errcode = '42501';
        end if;
    end if;

    if new.admin_on_group is not null then
        if not exists (
            select 1
            from auth.users_admin_on g
            where g.uid = granter
                and g.admin_on_group = new.admin_on_group
                and coalesce(g.group_admin_on_users, false)
                and (coalesce(g.group_allow_edit, false)
                    or not coalesce(new.group_allow_edit, false))
                and (coalesce(g.group_allow_export, false)
                    or not coalesce(new.group_allow_export, false))
                and (coalesce(g.group_allow_record_attendance, false)
                    or not coalesce(new.group_allow_record_attendance, false))
                and (coalesce(g.group_allow_record_servants_attendance, false)
                    or not coalesce(new.group_allow_record_servants_attendance, false))
                and (coalesce(g.group_write_related_families, false)
                    or not coalesce(new.group_write_related_families, false))
                and (coalesce(g.group_admin_on_users, false)
                    or not coalesce(new.group_admin_on_users, false))
        ) then
            raise exception 'Cannot grant group scope beyond your own authority'
                using errcode = '42501';
        end if;
    end if;

    if new.admin_on_area is not null then
        if not exists (
            select 1
            from auth.users_admin_on g
            where g.uid = granter
                and g.admin_on_area = new.admin_on_area
                and coalesce(g.area_admin_on_users, false)
                and (coalesce(g.area_allow_edit, false)
                    or not coalesce(new.area_allow_edit, false))
                and (coalesce(g.area_allow_export, false)
                    or not coalesce(new.area_allow_export, false))
                and (coalesce(g.area_admin_on_users, false)
                    or not coalesce(new.area_admin_on_users, false))
        ) then
            raise exception 'Cannot grant area scope beyond your own authority'
                using errcode = '42501';
        end if;
    end if;

    return new;
end;
$$;

create trigger enforce_admin_on_grant_level
before insert or update on auth.users_admin_on
for each row execute function auth.enforce_admin_on_grant_level();

CREATE OR REPLACE FUNCTION auth.check_users_permissions_level_consistency()
RETURNS trigger
LANGUAGE plpgsql
COST 100
STABLE NOT LEAKPROOF
AS $BODY$
DECLARE
    hasura_session JSON;
BEGIN
    -- manageAllUsers requires writeAllData requires readAllData
    IF new.permission = 'manageAllUsers' THEN
        IF NOT EXISTS (
            SELECT 1
            FROM auth.users_permissions
            WHERE uid = new.uid AND permission = 'writeAllData'
        ) THEN
            RAISE EXCEPTION 'manageAllUsers permission requires writeAllData';
        ELSIF NOT EXISTS (
            SELECT 1
            FROM auth.users_permissions
            WHERE uid = new.uid AND permission = 'readAllData'
        ) THEN
            RAISE EXCEPTION 'manageAllUsers permission requires both writeAllData and readAllData';
        END IF;

    ELSIF new.permission = 'writeAllData' THEN
        IF NOT EXISTS (
            SELECT 1
            FROM auth.users_permissions
            WHERE uid = new.uid AND permission = 'readAllData'
        ) THEN
            RAISE EXCEPTION 'writeAllData permission requires readAllData';
        END IF;
    END IF;
    
    RETURN NEW;
END;
$BODY$;

create constraint trigger check_users_permissions_level_consistency
after insert or update
on auth.users_permissions
deferrable initially deferred
for each row
execute procedure auth.check_users_permissions_level_consistency();
