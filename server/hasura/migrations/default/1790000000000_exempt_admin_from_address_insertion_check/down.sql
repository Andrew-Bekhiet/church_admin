create or replace function check_address_insertion()
returns trigger
language plpgsql
security definer
as $function$
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
            and (
                (entity_type = 'family' and new.family_id is not null and entity_id = new.family_id)
                or (entity_type = 'store' and new.store_id is not null and entity_id = new.store_id)
                or (entity_type = 'any' and entity_id is null)
            )
    ) then
        return new;
    else
        raise exception 'You do not have permission to insert this address';
    end if;
END;
$function$;
