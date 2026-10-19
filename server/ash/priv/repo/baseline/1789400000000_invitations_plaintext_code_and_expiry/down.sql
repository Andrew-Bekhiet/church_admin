do $$
begin
    if exists (select 1 from auth.invitations) then
        raise exception 'Cannot roll back: % invitation(s) would lose their plaintext code.',
            (select count(*) from auth.invitations);
    end if;
end $$;

drop trigger if exists prevent_email_change_after_claim on auth.users_data;

drop function if exists auth.prevent_email_change_after_claim();

drop function if exists auth.claim_invitation(
    p_code text, p_auth_id text, p_email text
);

create or replace function auth.claim_invitation(
    p_code_digest text, p_auth_id text, p_email text
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
begin
    if p_code_digest !~ '^[0-9a-f]{64}$'
        or nullif(trim(p_auth_id), '') is null
        or v_email is null then
        return;
    end if;

    select *
    into v_invitation
    from auth.invitations
    where code_digest = p_code_digest
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

    if v_invitation.expires_at is not null
        and v_invitation.expires_at <= clock_timestamp() then
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

alter table auth.invitations
drop constraint if exists invitations_expiry_within_thirty_days;

alter table auth.invitations
drop constraint if exists invitations_expiry_after_creation;

alter table auth.invitations
alter column expires_at drop not null,
alter column expires_at drop default;

alter table auth.invitations
add constraint invitations_expiry_after_creation
check (expires_at is null or expires_at > created_at);

alter table auth.invitations
drop constraint if exists invitations_code_format;

alter table auth.invitations
alter column code drop default,
alter column code drop not null;

alter table auth.invitations
add column code_digest text;

update auth.invitations
set code_digest = encode(digest(code, 'sha256'), 'hex');

alter table auth.invitations
alter column code_digest set not null;

alter table auth.invitations
add constraint invitations_code_digest_format
check (code_digest ~ '^[0-9a-f]{64}$');

alter table auth.invitations
drop constraint if exists invitations_code_key;

alter table auth.invitations
add constraint invitations_code_digest_key unique (code_digest);

alter table auth.invitations
drop column if exists code;

drop function if exists auth.format_invitation_code(code text);

drop function if exists auth.generate_invitation_code();
