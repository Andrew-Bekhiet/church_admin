create table if not exists auth.user_types (
    "name" text primary key
);

insert into auth.user_types (name)
values ('human'), ('fingerprint_bot'), ('maintenance_bot')
on conflict (name) do nothing;

alter table auth.users_data
add column if not exists "type" text not null default 'human'
references auth.user_types (name) on update cascade on delete restrict;

create unique index if not exists users_data_one_user_per_non_human_type_idx
on auth.users_data ("type")
where "type" <> 'human';

alter table auth.users_data
drop constraint if exists users_data_non_human_auth_id_is_unclaimable_placeholder_check;

alter table auth.users_data
add constraint users_data_non_human_auth_id_is_unclaimable_placeholder_check check (
    "type" = 'human' or auth_id = 'non-human:' || "type"
);

insert into auth.users_data (name, auth_id, "type")
select
    'بصمة الحضور' as "name",
    'non-human:fingerprint_bot' as auth_id,
    'fingerprint_bot' as "type"
where not exists (
    select 1 from auth.users_data
    where "type" = 'fingerprint_bot'
);
