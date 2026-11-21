create table if not exists auth.user_types (
    "name" text primary key
);

insert into auth.user_types (name)
values ('human'), ('fingerprint_bot'), ('maintenance_bot')
on conflict (name) do nothing;

alter table auth.users_data
add column if not exists user_type text not null default 'human';

alter table auth.users_data
drop constraint if exists users_data_user_type_fkey;

alter table auth.users_data
add constraint users_data_user_type_fkey
foreign key (user_type) references auth.user_types (name) on update cascade on delete restrict not valid;

create unique index if not exists users_data_one_user_per_non_human_type_idx
on auth.users_data (user_type)
where user_type <> 'human';

alter table auth.users_data
drop constraint if exists users_data_non_human_auth_id_is_unclaimable_placeholder_check;

alter table auth.users_data
add constraint users_data_non_human_auth_id_is_unclaimable_placeholder_check check (
    user_type = 'human' or auth_id = 'non-human:' || user_type
) not valid;

insert into auth.users_data (name, auth_id, user_type)
select
    'بصمة الحضور' as "name",
    'non-human:fingerprint_bot' as auth_id,
    'fingerprint_bot' as user_type
where not exists (
    select 1 from auth.users_data
    where user_type = 'fingerprint_bot'
);
