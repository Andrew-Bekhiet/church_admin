create type history.meeting_audience as enum (
    'onlyPersons',
    'onlyServants',
    'personsAndServants'
);

create table history.meetings (
    id uuid default gen_random_uuid() not null,
    "name" text not null,
    service_id uuid,
    service_study_year integer,
    service_gender boolean,
    group_id uuid,
    audience history.meeting_audience default 'personsAndServants'::history.meeting_audience not null,
    archived boolean default false not null,
    constraint meetings_pkey primary key (id),
    constraint meetings_scope_check check (
        (group_id is null) <> (service_id is null)
    ),
    constraint meetings_service_properties_check check (
        group_id is null
        or service_study_year is null and service_gender is null

    ),
    constraint meetings_service_fkey foreign key (service_id)
    references public.services (id)
    on update restrict on delete cascade,
    constraint meetings_service_study_year_fkey foreign key (service_study_year)
    references public.study_years ("order")
    on delete restrict,
    constraint meetings_group_fkey foreign key (group_id)
    references public.groups (id)
    on update restrict on delete cascade
);

create or replace function history.check_meeting_service_study_year_rel()
returns trigger
language plpgsql
as $$
begin
    if new.group_id is not null or new.service_study_year is null then
        return new;
    end if;

    if exists (
        select 1
        from public.services
        where
            id = new.service_id
            and study_year_from_id is null
            and study_year_to_id is null
        limit 1
    )
    or exists (
        select 1
        from public.services
        where
            id = new.service_id
            and new.service_study_year
            between study_year_from_id and study_year_to_id
        limit 1
    ) then
        return new;
    end if;

    raise exception 'service_study_year doesnot match service_id';
end;
$$;
create trigger check_service_study_year_rel
before insert or update on history.meetings
for each row execute function history.check_meeting_service_study_year_rel();

drop trigger if exists check_attendance_history_day_constraints
on history.attendance_history;

drop trigger if exists check_person_group_service_rel
on history.attendance_history;

drop function if exists history.user_allowed_to_read_attendance_record(
    history.attendance_history,
    json
);
drop function if exists history.user_allowed_to_write_attendance_record(
    history.attendance_history,
    json
);

drop table if exists history.attendance_history;

create table history.attendance_history (
    id uuid default gen_random_uuid() not null,
    meeting_id uuid not null,
    person_id uuid not null,
    "datetime" timestamptz default now() not null,
    as_servant boolean default false not null,
    recorded_by uuid default (
        (
            current_setting('hasura.user'::text, true)
        )::json ->> 'x-hasura-user-id'
    )::uuid not null,
    constraint attendance_history_pkey primary key (id),
    constraint attendance_history_meeting_id_fkey foreign key (meeting_id)
    references history.meetings (id)
    on update cascade on delete restrict,
    constraint attendance_history_person_id_fkey foreign key (person_id)
    references public.persons (id)
    -- Keep records for deleted persons for analytics and reports
    on update cascade on delete no action,
    constraint attendance_history_recorded_by_fkey foreign key (recorded_by)
    references auth.users_data (uid)
    -- Keep records for deleted users for analytics and reports
    on update cascade on delete no action
);


-- One record per person/as-servant state per day per meeting.
create unique index attendance_history_meeting_person_day_idx
on history.attendance_history (
    (("datetime" at time zone 'UTC')::date),
    meeting_id,
    person_id,
    as_servant
);

create index attendance_history_person_id_idx
on history.attendance_history using btree (person_id);
create index attendance_history_meeting_id_idx
on history.attendance_history using btree (meeting_id);

create or replace function history.check_attendance_history_meeting()
returns trigger
language plpgsql
as $$
declare
    meeting history.meetings%rowtype;
begin
    select *
    into meeting
    from history.meetings
    where id = new.meeting_id;

    if not found then
        raise exception 'Meeting not found';
    end if;

    if meeting.archived then
        raise exception 'Cannot record attendance for archived meeting';
    end if;

    if meeting.audience = 'onlyServants'::history.meeting_audience
        and not new.as_servant then
        raise exception 'servants audience requires as_servant = true';
    end if;

    if meeting.audience = 'onlyPersons'::history.meeting_audience
        and new.as_servant then
        raise exception 'persons audience requires as_servant = false';
    end if;

    if new.as_servant then
        if not exists (
            select 1
            from public.persons as p
            inner join auth.users_admin_on as uao on uao.uid = p.uid
            where
                p.id = new.person_id
                and (
                    (
                        meeting.group_id is not null
                        and uao.admin_on_group = meeting.group_id
                    )
                    or (
                        meeting.service_id is not null
                        and uao.admin_on_service = meeting.service_id
                        and (
                            uao.service_study_year is null
                            or meeting.service_study_year is null
                            or uao.service_study_year = meeting.service_study_year
                        )
                        and (
                            uao.service_gender is null
                            or meeting.service_gender is null
                            or uao.service_gender = meeting.service_gender
                        )
                    )
                )
            limit 1
        ) then
            raise exception 'Person is not a servant admin on this meeting scope';
        end if;
    elsif meeting.group_id is not null then
        if not exists (
            select 1
            from public.persons_groups as pg
            where
                pg.person_id = new.person_id
                and pg.group_id = meeting.group_id
            limit 1
        ) then
            raise exception 'Person does not belong to meeting group';
        end if;
    elsif not exists (
        select 1
        from public.persons_services as ps
        inner join public.persons as p on p.id = ps.person_id
        where
            ps.person_id = new.person_id
            and ps.service_id = meeting.service_id
            and (
                meeting.service_study_year is null
                or p.study_year_id = meeting.service_study_year
            )
            and (
                meeting.service_gender is null
                or p.gender = meeting.service_gender
            )
        limit 1
    ) then
        raise exception 'Person does not belong to meeting service scope';
    end if;

    return new;
end;
$$;

create trigger check_attendance_history_meeting
before insert or update on history.attendance_history
for each row execute function history.check_attendance_history_meeting();

drop trigger if exists check_service_group_rel
on history.attendance_days_constraints;

drop trigger if exists check_service_study_year_rel
on history.attendance_days_constraints;

drop function if exists history.check_attendance_history_day_constraints();
drop function if exists history.check_person_group_service_rel();
drop function if exists history.user_allowed_to_read_day_constraint(
    history.attendance_days_constraints,
    json
);
drop function if exists history.user_allowed_to_write_day_constraint(
    history.attendance_days_constraints,
    json
);

drop table if exists history.attendance_days_constraints;
