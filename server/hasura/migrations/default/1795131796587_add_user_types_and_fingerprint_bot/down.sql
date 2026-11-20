lock table auth.users_data in access exclusive mode;

do $$
begin
  if exists (
    select 1 from auth.users_data as non_human
    where
      non_human.user_type <> 'human'
      and (
        exists (select 1 from history.attendance_history where recorded_by = non_human.uid)
        or exists (select 1 from history.kodas_history where recorded_by = non_human.uid)
        or exists (select 1 from history.edit_history where recorded_by = non_human.uid)
      )
  ) then
    raise exception 'Cannot roll back: a non-human user has recorded attendance, kodas or edits';
  end if;

  if exists (
    select 1 from auth.users_data as non_human
    where
      non_human.user_type <> 'human'
      and (
        exists (select 1 from auth.users_permissions where "uid" = non_human.uid)
        or exists (select 1 from auth.users_admin_on where "uid" = non_human.uid)
        or exists (select 1 from auth.invitations where non_human.uid in (user_uid, created_by))
        or exists (select 1 from public.persons where "uid" = non_human.uid)
        or exists (select 1 from public.users_fcm_tokens where "uid" = non_human.uid)
        or exists (select 1 from operations.screen_capture_attempts where "uid" = non_human.uid)
      )
  ) then
    raise exception 'Cannot roll back: a non-human user holds permissions, admin scopes, invitations, FCM tokens or screen capture records, or is linked to a person';
  end if;
end $$;

delete from auth.users_data
where user_type <> 'human';

alter table auth.users_data
drop constraint if exists users_data_non_human_auth_id_is_unclaimable_placeholder_check,
drop constraint if exists users_data_user_type_fkey;

drop index if exists auth.users_data_one_user_per_non_human_type_idx;

alter table auth.users_data
drop column if exists user_type;

drop table if exists auth.user_types;
