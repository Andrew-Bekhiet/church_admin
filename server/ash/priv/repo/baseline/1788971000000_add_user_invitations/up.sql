alter table auth.users_data alter column email drop not null;

insert into auth.permissions (name)
values ('onboardUsers')
on conflict (name) do nothing;

create table if not exists auth.invitations (
    id uuid primary key default gen_random_uuid(),
    user_uid uuid not null unique,
    code_digest text not null unique,
    created_by uuid not null,
    created_at timestamptz not null default now(),
    expires_at timestamptz,
    claimed_at timestamptz,
    constraint invitations_user_uid_fkey
    foreign key (user_uid)
    references auth.users_data (uid)
    on update restrict
    on delete cascade,
    constraint invitations_created_by_fkey
    foreign key (created_by)
    references auth.users_data (uid)
    on update restrict
    on delete restrict,
    constraint invitations_code_digest_format
    check (code_digest ~ '^[0-9a-f]{64}$'),
    constraint invitations_expiry_after_creation
    check (expires_at is null or expires_at > created_at)
);

create or replace function auth.claim_invitation(p_code_digest text, p_auth_id text, p_email text)
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
$function$
