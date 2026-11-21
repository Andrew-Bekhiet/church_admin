create or replace function auth.user_can_edit_user(user_data auth.users_data, hasura_session json)
returns boolean
language plpgsql
stable
as $function$
begin
    return exists(
            select 1
            from auth.users_permissions_by_entity_id
            where uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                and allow_edit is true
                and entity_type = 'any-user'
                and entity_id is null
        )
        or exists(
            select 1
            from auth.users_permissions_by_entity_id
            where uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                and allow_edit is true
                and entity_type = 'user'
                and entity_id = user_data.uid
        );
end;
$function$;
