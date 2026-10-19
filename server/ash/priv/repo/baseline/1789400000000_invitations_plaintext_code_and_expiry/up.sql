do $$
begin
    if exists (select 1 from auth.invitations) then
        raise exception 'Cannot migrate: % invitation(s) already exist, but this migration assumes the table is empty.',
            (select count(*) from auth.invitations);
    end if;
end $$;

create or replace function auth.generate_invitation_code()
returns text
language sql
volatile
as $function$
    select array_to_string(
        array(
            select substring(
                '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
                from (get_byte(gen_random_bytes(1), 0) % 36) + 1
                for 1
            )
            from generate_series(1, 12)
        ),
        ''
    );
$function$;

create or replace function auth.format_invitation_code(code text)
returns text
language sql
immutable
as $function$
    select substring(code from 1 for 4)
        || '-' || substring(code from 5 for 4)
        || '-' || substring(code from 9 for 4);
$function$;

alter table auth.invitations
drop constraint if exists invitations_code_digest_format;

alter table auth.invitations
drop column if exists code_digest;

alter table auth.invitations
add column code text unique;

update auth.invitations
set code = auth.format_invitation_code(auth.generate_invitation_code());

alter table auth.invitations
alter column code set not null,
alter column code set default auth.format_invitation_code(
    auth.generate_invitation_code()
);

alter table auth.invitations
add constraint invitations_code_format
check (code ~ '^[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}$');

alter table auth.invitations
drop constraint if exists invitations_expiry_after_creation;

update auth.invitations
set expires_at = created_at + interval '7 days'
where expires_at is null;

alter table auth.invitations
alter column expires_at set not null,
alter column expires_at set default (now() + interval '7 days');

alter table auth.invitations
add constraint invitations_expiry_after_creation
check (expires_at > created_at);

alter table auth.invitations
add constraint invitations_expiry_within_thirty_days
check (expires_at <= created_at + interval '30 days');

drop function if exists auth.claim_invitation(
    p_code_digest text, p_auth_id text, p_email text
);

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

create or replace function auth.prevent_email_change_after_claim()
returns trigger
language plpgsql
as $function$
begin
    if new.email is distinct from old.email and old.auth_id is not null then
        raise exception 'Cannot change email of a claimed account';
    end if;

    return new;
end;
$function$;

drop trigger if exists prevent_email_change_after_claim on auth.users_data;

create trigger prevent_email_change_after_claim
before update on auth.users_data
for each row
execute function auth.prevent_email_change_after_claim();
