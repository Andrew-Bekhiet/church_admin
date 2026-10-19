create or replace function auth.claim_invitation(
    p_code text, p_auth_id text, p_email text
)
returns setof auth.users_data
language plpgsql
security definer
set search_path to 'pg_catalog', 'auth', 'public'
as $function$
declare
    v_invitation auth.invitations%rowtype;
    v_user auth.users_data%rowtype;
    v_email text := nullif(lower(trim(p_email)), '');
    v_code text := upper(regexp_replace(coalesce(p_code, ''), '\s+', '', 'g'));
begin
    if v_code !~ '^[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}$'
        or nullif(trim(p_auth_id), '') is null
        or v_email is null then
        return;
    end if;

    select *
    into v_invitation
    from auth.invitations
    where code = v_code
    for update;

    if not found then
        return;
    end if;

    select *
    into v_user
    from auth.users_data
    where uid = v_invitation.user_uid
    for update;

    if not found then
        return;
    end if;

    if v_invitation.claimed_at is not null then
        if v_user.auth_id = p_auth_id then
            return next v_user;
        end if;

        return;
    end if;

    if v_invitation.expires_at <= clock_timestamp() then
        return;
    end if;

    if v_user.auth_id is not null
        or (v_user.email is not null and v_user.email <> v_email) then
        return;
    end if;

    update auth.users_data
    set
        auth_id = p_auth_id,
        email = coalesce(email, v_email)
    where uid = v_user.uid
    returning * into v_user;

    update auth.invitations
    set claimed_at = clock_timestamp()
    where id = v_invitation.id;

    return next v_user;
end;
$function$;
