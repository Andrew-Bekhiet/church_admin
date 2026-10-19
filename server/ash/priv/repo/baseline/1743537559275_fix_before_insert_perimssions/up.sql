CREATE OR REPLACE FUNCTION check_row_insertion_permission()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    AS $function$
DECLARE
    hasura_uid uuid;
    required_entity_type text;
    any_entity_type text;
BEGIN
    IF current_setting('hasura.user'::text, true) is null THEN
        return new;
    END IF;

    hasura_uid := (current_setting('hasura.user'::text, true)::json ->> 'x-hasura-user-id')::uuid;
    required_entity_type := TG_ARGV[0];
    any_entity_type := COALESCE(TG_ARGV[1], 'any');

    if exists(
        select 1 from auth.users_permissions_by_entity_id
        where uid = hasura_uid
            and allow_edit = true
            and (entity_type = any_entity_type and entity_id is null)
                or (entity_type = required_entity_type and entity_id = new.id)
    ) then
        return new;
    else
        raise notice 'Permission denies inserting % with id % for user %', required_entity_type, new.id, hasura_uid;
        raise exception 'Permission denied';
    end if;
END;
$function$;

create constraint trigger check_family_insertion
after insert on families
DEFERRABLE INITIALLY DEFERRED 
for each row
execute function check_row_insertion_permission('family');

create constraint trigger check_person_insertion
after insert on persons
DEFERRABLE INITIALLY DEFERRED 
for each row
execute function check_row_insertion_permission('person');

create constraint trigger check_store_insertion
after insert on stores
DEFERRABLE INITIALLY DEFERRED 
for each row
execute function check_row_insertion_permission('store');

CREATE OR REPLACE FUNCTION check_address_insertion()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    AS $function$
DECLARE
    hasura_uid uuid;
BEGIN
    IF current_setting('hasura.user'::text, true) is null THEN
        return new;
    END IF;

    hasura_uid := (current_setting('hasura.user'::text, true)::json ->> 'x-hasura-user-id')::uuid;

    if exists(
        select 1 from auth.users_permissions_by_entity_id
        where uid = hasura_uid
            and allow_edit = true
            and (entity_type = 'family' and new.family_id is not null and entity_id = new.family_id)
                or (entity_type = 'store' and new.store_id is not null and entity_id = new.store_id)
                or (entity_type = 'any' and entity_id is null)
    ) then
        return new;
    else
        raise exception 'You do not have permission to insert this address';
    end if;
END;
$function$;

create constraint trigger check_address_insertion
after insert on addresses
DEFERRABLE INITIALLY DEFERRED 
for each row
execute function check_address_insertion();
