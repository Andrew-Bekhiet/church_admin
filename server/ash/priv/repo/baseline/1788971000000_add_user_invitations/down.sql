do $$
begin
    if exists (select 1 from auth.invitations) then
        raise exception 'Cannot roll back: % invitation(s) would be deleted.',
            (select count(*) from auth.invitations);
    end if;

    if exists (
        select 1
        from auth.users_permissions
        where permission = 'onboardUsers'
    ) then
        raise exception 'Cannot roll back: % user(s) still hold onboardUsers.',
            (
                select count(*)
                from auth.users_permissions
                where permission = 'onboardUsers'
            );
    end if;

    if exists (select 1 from auth.users_data where email is null) then
        raise exception 'Cannot roll back: % user(s) have no email.',
            (select count(*) from auth.users_data where email is null);
    end if;
end;
$$;

drop function if exists auth.claim_invitation(p_code_digest text, p_auth_id text, p_email text);

drop table if exists auth.invitations;

delete from auth.permissions
where name = 'onboardUsers';

alter table auth.users_data alter column email set not null;
