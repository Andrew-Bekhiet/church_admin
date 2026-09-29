CREATE OR REPLACE FUNCTION public.check_persons_groups_insertion()
 RETURNS trigger
 LANGUAGE plpgsql
 STABLE
AS $function$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if exists(
    select 1
    from groups
    join persons_services ps on groups.service_id = ps.service_id
    where groups.id = new."group_id"
        and ps.person_id = new."person_id"
) then 
    if (
        public."user_allowed_to_write_person"(
            (
                (
                    select persons
                    from persons
                    where id = new."person_id"
                )::persons
            ),
            hasura_session
        )
        and public."user_allowed_to_write_group"(
            (
                (
                    select groups
                    from groups
                    where id = new."group_id"
                )::groups
            ),
            hasura_session
        )
    ) then return new;
    else raise exception 'User not authorized to insert this person in this group';
    end if;
else raise exception 'Invalid group for person';
end if;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.check_persons_insertion()
 RETURNS trigger
 LANGUAGE plpgsql
 STABLE
AS $function$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or public."user_allowed_to_write_person"(new, hasura_session) then return new;
else raise exception 'User is not authorized to insert this person';
end if;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.check_persons_services_insertion()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or (
    public."user_allowed_to_write_person"(
        (
            (
                select persons
                from persons
                where id = new."person_id"
            )::persons
        ),
        hasura_session
    )
    and public."user_allowed_to_write_service"(
        (
            (
                select services
                from services
                where id = new."service_id"
            )::services
        ),
        hasura_session
    )
) then return new;
else raise exception 'User is not authorized to insert this person in this service';
end if;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.check_persons_tags_insertion()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if auth.user_can_write_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or public."user_allowed_to_write_person"(
    (
        (
            select persons
            from persons
            where id = new."person_id"
        )::persons
    ),
    hasura_session
) then return new;
else raise exception 'User is not authorized to insert these tags in this person';
end if;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.check_store_admin_family_update()
 RETURNS trigger
 LANGUAGE plpgsql
 STABLE
AS $function$
DECLARE hasura_session JSON;
begin hasura_session := current_setting('hasura.user', 't')::JSON;
if new."admin_family" = old."admin_family"
or (
    new."admin_family" is null
    and old."admin_family" is null
)
or auth.user_can_read_all_data((hasura_session->>'x-hasura-user-id')::uuid)
or (
    (
        new."admin_family" is null
        or public."user_allowed_to_write_family"(
            (
                select families
                from families
                where id = new."admin_family"
                limit 1
            )::families, hasura_session
        )
    )
    and (
        old."admin_family" is null
        or public."user_allowed_to_write_family"(
            (
                select families
                from families
                where id = old."admin_family"
                limit 1
            )::families, hasura_session
        )
    )
) then return new;
else raise exception 'User is not authorized to update store with new family';
end if;
END;
$function$
;


create constraint trigger check_persons_tags_insertion
after insert or update on public.persons_tags
deferrable initially deferred
for each row execute function public.check_persons_tags_insertion();

create constraint trigger check_store_admin_family_update
after update on public.stores
deferrable initially deferred
for each row execute function public.check_store_admin_family_update();
