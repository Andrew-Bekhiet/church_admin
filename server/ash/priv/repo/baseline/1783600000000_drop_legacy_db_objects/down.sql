alter table history.attendance_days add column if not exists notes text;

create table if not exists public.config (
    "key" text not null,
    "value" text
);
alter table only public.config
add constraint config_pkey primary key ("key");

create table if not exists history.visit_categories (
    "id" uuid default gen_random_uuid() not null,
    "name" text not null,
    "type" boolean default true not null
);
comment on column history.visit_categories."type" is 'how visits run in this category: true => by area, false => by service';
alter table only history.visit_categories
add constraint visit_categories_pk primary key ("id");

create table if not exists history.visit_periods (
    "id" uuid default gen_random_uuid() not null,
    "category_id" uuid not null,
    "name" text not null,
    "date_from" date not null,
    "date_to" date not null
);
alter table only history.visit_periods
add constraint visit_periods_pk primary key ("id");
alter table only history.visit_periods
add constraint visit_periods_unique unique ("id", "category_id");
create index if not exists idx_visit_periods_category_id on history.visit_periods using btree ("category_id");
alter table only history.visit_periods
add constraint visit_periods_fk foreign key ("category_id") references history.visit_categories ("id") on update cascade on delete restrict;

create table if not exists public.streets_families (
    "street_id" uuid not null,
    "family_id" uuid not null
);
alter table only public.streets_families
add constraint streets_families_pk primary key ("street_id", "family_id");
create index if not exists streets_families_family_id_idx on public.streets_families using btree ("family_id");
alter table only public.streets_families
add constraint streets_families_families_fk foreign key ("family_id") references public.families ("id") on update cascade on delete cascade;
alter table only public.streets_families
add constraint streets_families_streets_fk foreign key ("street_id") references public.streets ("id") on update cascade on delete cascade;

create table if not exists public.streets_stores (
    "street_id" uuid not null,
    "store_id" uuid not null
);
alter table only public.streets_stores
add constraint streets_stores_pk primary key ("street_id", "store_id");
create index if not exists streets_stores_store_id_idx on public.streets_stores using btree ("store_id");
alter table only public.streets_stores
add constraint streets_stores_stores_fk foreign key ("store_id") references public.stores ("id") on update cascade on delete cascade;
alter table only public.streets_stores
add constraint streets_stores_streets_fk foreign key ("street_id") references public.streets ("id") on update cascade on delete cascade;

create or replace function history.check_service_group_rel() returns trigger
language plpgsql
as $$
declare hasura_session JSON;
begin if new.group_id is null
or exists(
    (
        select 1
        from groups
        where id = new.group_id
            and service_id = new.service_id
        limit 1
    )
) then return new;
else raise exception 'group_id doesnot match service_id';
end if;
end;
$$;

create or replace function history.check_service_study_year_rel() returns trigger
language plpgsql
as $$
declare hasura_session JSON;
begin if new.group_id is not null
or exists(
    (
        select 1
        from services
        where id = new.service_id
            and study_year_from_id is null
            and study_year_to_id is null
        limit 1
    )
    union
    (
        select 1
        from services
        where id = new.service_id
            and new.service_study_year between study_year_from_id and study_year_to_id
        limit 1
    )
) then return new;
else raise exception 'service_study_year doesnot match service_id';
end if;
end;
$$;


create or replace function history.check_attendance_days_update() returns trigger
language plpgsql
as $$
DECLARE hasura_session JSON;
begin if (
    old.day is null
    or new.day = old.day
) then return new;
else raise exception 'Cannot change already existing day';
end if;
END;
$$;
create trigger check_update before insert on history.attendance_days for each row execute function history.check_attendance_days_update();

create or replace view history.meetings_persons (meeting_id, person_id) as (
    select
        meeting.id as meeting_id,
        pg.person_id
    from history.meetings as meeting
    inner join persons_groups as pg on meeting.group_id = pg.group_id
    union all
    select
        meeting.id as meeting_id,
        ps.person_id
    from history.meetings as meeting
    inner join persons_services as ps on meeting.service_id = ps.service_id
    inner join persons as p on ps.person_id = p.id
    where (
        meeting.service_study_year is null
        or meeting.service_study_year = p.study_year_id
    )
    and (
        meeting.service_gender is null
        or meeting.service_gender = p.gender
    )
);
