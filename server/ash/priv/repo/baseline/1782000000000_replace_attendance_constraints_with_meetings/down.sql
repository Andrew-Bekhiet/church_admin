-- Reverses meetings-based attendance back to day constraints.
-- Constraint days are derived from the recorded attendance datetimes, and the
-- service scope of group meetings is recovered from public.groups.service_id.

drop trigger if exists check_attendance_history_meeting
on history.attendance_history;

drop trigger if exists insert_person_edit_history
on history.attendance_history;

drop function if exists history.check_attendance_history_meeting();

alter table history.attendance_history
rename to attendance_history_new;

create table history.attendance_history (
    day_id date not null,
    service_id uuid not null,
    group_id uuid,
    person_id uuid not null,
    "time" timestamp without time zone default now() not null,
    recorded_by uuid default (
        (
            current_setting('hasura.user'::text, true)
        )::json ->> 'x-hasura-user-id'
    )::uuid not null,
    id uuid default gen_random_uuid() not null,
    service_study_year integer,
    service_gender boolean,
    as_admin boolean default false not null,
    constraint attendance_history_service_group_check check (
        (
            (group_id is not null)
            and (service_study_year is null)
            and (service_gender is null)
        )
        or (
            (group_id is null)
            and (service_gender is not null)
        )
    ),
    constraint attendance_history_time check (day_id = date("time"))
);

insert into history.attendance_history (
    id,
    day_id,
    service_id,
    group_id,
    person_id,
    "time",
    recorded_by,
    service_study_year,
    service_gender,
    as_admin
)
select
    ah.id,
    date(ah.datetime) as day_id,
    coalesce(m.service_id, g.service_id) as service_id,
    m.group_id,
    ah.person_id,
    ah.datetime::timestamp without time zone as "time",
    ah.recorded_by,
    m.service_study_year,
    m.service_gender,
    ah.as_servant as as_admin
from history.attendance_history_new as ah
inner join history.meetings as m on ah.meeting_id = m.id
left join public.groups as g on m.group_id = g.id
where m.service_id is not null or m.group_id is not null;

alter table history.attendance_history
add constraint attendance_history_pkey primary key (id);

alter table history.attendance_history
add constraint attendance_history_day_id_service_id_group_id_person_id_key
unique (day_id, service_id, group_id, person_id);

alter table history.attendance_history
add constraint attendance_history_day_id_fkey foreign key (day_id)
references history.attendance_days (day)
on update restrict on delete cascade;

alter table history.attendance_history
add constraint attendance_history_group_id_fkey foreign key (group_id)
references public.groups (id)
on update restrict on delete restrict;

alter table history.attendance_history
add constraint attendance_history_person_id_fkey foreign key (person_id)
references public.persons (id)
on update restrict on delete restrict;

alter table history.attendance_history
add constraint attendance_history_recorded_by_fkey foreign key (recorded_by)
references auth.users_data (uid)
on update restrict on delete restrict;

alter table history.attendance_history
add constraint attendance_history_service_id_fkey foreign key (service_id)
references public.services (id)
on update restrict on delete restrict;

alter table history.attendance_history
add constraint attendance_history_service_study_year_fkey
foreign key (service_study_year)
references public.study_years ("order")
on delete restrict;

create table history.attendance_days_constraints (
    day_id date not null,
    service_id uuid not null,
    service_study_year integer,
    service_gender boolean,
    group_id uuid,
    id uuid default gen_random_uuid() not null,
    constraint attendance_days_constraints_service_group_check check (
        (
            (service_study_year is null and service_gender is null)
            <> (group_id is null)
        )
        and (
            (service_study_year is not null and service_gender is not null)
            <> (group_id is not null)
        )
    )
);

insert into history.attendance_days (
    day
)
select distinct date(ah.datetime)
from history.attendance_history_new as ah
on conflict do nothing;

insert into history.attendance_days_constraints (
    day_id,
    service_id,
    service_study_year,
    service_gender,
    group_id
)
select distinct
    date(ah.datetime) as day_id,
    coalesce(m.service_id, g.service_id) as service_id,
    m.service_study_year,
    m.service_gender,
    m.group_id
from history.attendance_history_new as ah
inner join history.meetings as m on ah.meeting_id = m.id
left join public.groups as g on m.group_id = g.id
where m.service_id is not null or m.group_id is not null;

alter table history.attendance_days_constraints
add constraint attendance_days_constraints_pkey primary key (id);

alter table history.attendance_days_constraints
add constraint attendance_days_constraints_day_service_service_study_year_s_ke
unique (day_id, service_id, service_study_year, service_gender, group_id);

alter table history.attendance_days_constraints
add constraint attendance_days_constraints_fk foreign key (day_id)
references history.attendance_days (day)
on update restrict on delete cascade;

alter table history.attendance_days_constraints
add constraint attendance_days_constraints_group_fkey foreign key (group_id)
references public.groups (id)
on update restrict on delete cascade;

alter table history.attendance_days_constraints
add constraint attendance_days_constraints_service_fkey foreign key (service_id)
references public.services (id)
on update restrict on delete cascade;

alter table history.attendance_days_constraints
add constraint attendance_days_constraints_service_study_year_fkey
foreign key (service_study_year)
references public.study_years ("order")
on delete restrict;

create index attendance_days_constraints_dayid_serviceid_groupid
on history.attendance_days_constraints
using btree (day_id, service_id, group_id);

create or replace function history.check_attendance_history_day_constraints()
returns trigger
language plpgsql
as $$
begin
    if (
        select exists(
            select 1
            from history.attendance_days_constraints
            where
                day_id = new.day_id
                and service_id = new.service_id
                and (
                    service_study_year is null
                    or service_study_year = new.service_study_year
                )
                and (
                    service_gender is null
                    or service_gender = new.service_gender
                )
                and new.group_id is null
            limit 1
        )
        or exists(
            select 1
            from history.attendance_days_constraints
            where
                day_id = new.day_id
                and service_id = new.service_id
                and group_id = new.group_id
            limit 1
        )
    ) then
        return new;
    else
        raise exception 'Row violates attendance_days_constraints';
    end if;
end;
$$;

create or replace function history.check_person_group_service_rel()
returns trigger
language plpgsql
as $$
begin
    if (
        (
            not new.as_admin
            and (
                (
                    new.group_id is null
                    and exists(
                        select 1
                        from persons_services
                        where
                            person_id = new.person_id
                            and service_id = new.service_id
                        limit 1
                    )
                )
                or (
                    exists (
                        select 1
                        from persons_groups
                        where
                            person_id = new.person_id
                            and group_id = new.group_id
                        limit 1
                    )
                    and exists (
                        select 1
                        from groups
                        where
                            id = new.group_id
                            and service_id = new.service_id
                        limit 1
                    )
                )
            )
            and (
                new.group_id is not null
                or exists (
                    (
                        select 1
                        from persons
                        where
                            id = new.person_id
                            and study_year_id = new.service_study_year
                            and gender = new.service_gender
                        limit 1
                    )
                    union
                    (
                        select 1
                        from persons
                        where
                            id = new.person_id
                            and study_year_id is null
                            and new.service_study_year is null
                            and gender = new.service_gender
                        limit 1
                    )
                )
            )
        )
        or (
            new.as_admin
            and exists(
                (
                    select 1
                    from auth.users_admin_on
                    inner join persons as p on uid = p.uid and p.id = new.person_id
                    where
                        admin_on_service = new.service_id
                        and (
                            service_study_year is null
                            or service_study_year = new.service_study_year
                        )
                        and (
                            service_gender is null
                            or service_gender = new.service_gender
                        )
                )
                union
                (
                    select 1
                    from auth.users_admin_on
                    inner join persons as p on uid = p.uid and p.id = new.person_id
                    where admin_on_group = new.group_id
                )
            )
        )
    ) then
        return new;
    else
        raise exception 'Cannot insert this person in this group/service';
    end if;
end;
$$;

create trigger check_attendance_history_day_constraints
before insert or update on history.attendance_history
for each row execute function history.check_attendance_history_day_constraints();

create trigger check_person_group_service_rel
before insert or update on history.attendance_history
for each row execute function history.check_person_group_service_rel();

create trigger check_service_group_rel
before insert or update on history.attendance_days_constraints
for each row execute function history.check_service_group_rel();

create trigger check_service_study_year_rel
before insert or update on history.attendance_days_constraints
for each row execute function history.check_service_study_year_rel();

create trigger insert_person_edit_history
after insert or update on history.attendance_history
for each row execute function history.insert_person_edit_history();

create or replace function history.user_allowed_to_read_attendance_record(
    attendance history.attendance_history,
    hasura_session json
) returns boolean
language sql stable security definer
as $$
select auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
    or (
        public.user_allowed_to_read_service(
            (
                select services
                from services
                where id = attendance.service_id
            ),
            hasura_session
        )
        and (
            attendance.group_id is null
            or public.user_allowed_to_read_group(
                (
                    select groups
                    from groups
                    where id = attendance.group_id
                ),
                hasura_session
            )
        )
        and public.user_allowed_to_read_person(
            (
                select persons
                from persons
                where id = attendance.person_id
            ),
            hasura_session
        )
    );
$$;

create or replace function history.user_allowed_to_read_day_constraint(
    constraint history.attendance_days_constraints,
    hasura_session json
) returns boolean
language sql stable security definer
as $$
select auth.user_can_read_all_data((hasura_session ->> 'x-hasura-user-id')::uuid)
    or exists (
        (
            select 1
            from auth.users_admin_on permissions
            where permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                and permissions.admin_on_group = constraint.group_id
            limit 1
        )
        union
        (
            select 1
            from auth.users_admin_on permissions
            where permissions.uid = (hasura_session ->> 'x-hasura-user-id')::uuid
                and permissions.admin_on_service = constraint.service_id
                and (
                    permissions.service_study_year is null
                    or constraint.service_study_year = permissions.service_study_year
                )
                and (
                    permissions.service_gender is null
                    or constraint.service_gender = permissions.service_gender
                )
            limit 1
        )
    );
$$;

drop table if exists history.attendance_history_new;
drop table if exists history.meetings;
drop function if exists history.check_meeting_service_study_year_rel();
drop type if exists history.meeting_audience;
