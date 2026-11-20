delete from auth.users_data
where user_type <> 'human';

alter table auth.users_data
drop constraint if exists users_data_non_human_auth_id_is_unclaimable_placeholder_check;

drop index if exists auth.users_data_one_user_per_non_human_type_idx;

alter table auth.users_data
drop column if exists user_type;

drop table if exists auth.user_types;
