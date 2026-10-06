create or replace function check_row_insertion_permission() returns trigger
security definer
language plpgsql
as
$$
declare
    hasura_uid           uuid;
    required_entity_type text;
begin
    if current_setting('hasura.user'::text, true) is null or
       (current_setting('hasura.user'::text, true)::json ->> 'x-hasura-role') = 'admin' then
        return new;
    end if;

    hasura_uid := (current_setting('hasura.user'::text, true)::json ->> 'x-hasura-user-id')::uuid;
    required_entity_type := tg_argv[0];

    if exists(select 1
              from auth.users_permissions_on_any
              where uid = hasura_uid
                  and allow_edit = true
                  and entity_type = 'any'
                  and entity_id is null
        ) then
        return new;
    end if;

    if required_entity_type = 'person' then
        if exists(select 1
                  from auth.users_permissions_on_family
                  where uid = hasura_uid
                      and allow_edit = true
                      and entity_type = 'family'
                      and entity_id = new.family_id
            )
            or exists(select 1
                      from auth.users_permissions_on_person
                      where uid = hasura_uid
                          and allow_edit = true
                          and entity_type = 'person'
                          and entity_id = new.id
            ) then
            return new;
        end if;
    elseif required_entity_type = 'family' then
        if exists(select 1
                  from auth.users_permissions_on_family
                  where uid = hasura_uid
                      and allow_edit = true
                      and entity_type = 'family'
                      and entity_id = new.id
            )
            or exists(select 1
                      from auth.users_permissions_on_person
                      where uid = hasura_uid
                          and allow_edit = true
                          and entity_type = 'person'
                          and entity_id in (
                              select persons.id
                              from persons
                              where persons.family_id = new.id
                                  and persons.deleted_at is null
                                  and public.person_inserted_in_current_transaction(persons)
                          )
            ) then
            return new;
        end if;
    elseif required_entity_type = 'store' then
        if exists(select 1
                  from auth.users_permissions_on_store
                  where uid = hasura_uid
                      and allow_edit = true
                      and entity_type = 'store'
                      and entity_id = new.id
            ) then
            return new;
        end if;
    else
        raise exception 'check_row_insertion_permission does not support entity type %', required_entity_type;
    end if;

    raise exception 'Permission denies inserting % with id % for user %', required_entity_type, new.id, hasura_uid;
end;
$$;

create or replace function check_address_insertion()
returns trigger
language plpgsql
security definer
as $function$
declare
    hasura_uid uuid;
begin
    if current_setting('hasura.user'::text, true) is null or
       (current_setting('hasura.user'::text, true)::json ->> 'x-hasura-role') = 'admin' then
        return new;
    end if;

    hasura_uid := (current_setting('hasura.user'::text, true)::json ->> 'x-hasura-user-id')::uuid;

    if exists(
        select 1 from families
        where families.id = new.family_id
            and public.family_inserted_in_current_transaction(families)
    ) then
        return new;
    end if;

    if exists(
        select 1 from auth.users_permissions_on_any
        where uid = hasura_uid
            and allow_edit = true
            and entity_type = 'any'
            and entity_id is null
    )
    or exists(
        select 1 from auth.users_permissions_on_family
        where uid = hasura_uid
            and allow_edit = true
            and entity_type = 'family'
            and new.family_id is not null
            and entity_id = new.family_id
    )
    or exists(
        select 1 from auth.users_permissions_on_store
        where uid = hasura_uid
            and allow_edit = true
            and entity_type = 'store'
            and new.store_id is not null
            and entity_id = new.store_id
    ) then
        return new;
    else
        raise exception 'You do not have permission to insert this address';
    end if;
end;
$function$;
