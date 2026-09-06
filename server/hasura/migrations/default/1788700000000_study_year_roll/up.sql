create schema if not exists operations;

create table if not exists operations.study_year_roll_runs (
    id bigint generated always as identity primary key,
    season_year integer not null,
    status text not null,
    recorded_at timestamptz not null default now(),
    error text,
    step_counts jsonb,
    constraint study_year_roll_runs_status_check
    check (status in ('succeeded', 'failed', 'missed'))
);

create unique index if not exists study_year_roll_runs_one_success_per_season
on operations.study_year_roll_runs (season_year)
where status = 'succeeded';

create or replace function operations.cairo_now()
returns timestamp
language sql
stable
return now() at time zone 'Africa/Cairo';

create or replace function operations.current_season_year()
returns integer
language sql
stable
return extract(year from operations.cairo_now())::integer;

create or replace function operations.nayrouz_date(p_season_year integer)
returns date
language sql
immutable
return make_date(p_season_year, 9, 11);

create or replace function operations.study_year_roll_succeeded(
    p_season_year integer
)
returns boolean
language sql
stable
return exists (
    select 1 from operations.study_year_roll_runs
    where season_year = p_season_year and status = 'succeeded'
);

create or replace function operations.study_year_outgrows_service(
    p_next_study_year smallint, p_service_last_study_year smallint
)
returns boolean
language sql
immutable
return p_service_last_study_year is not null
and (
    p_next_study_year is null or p_next_study_year > p_service_last_study_year
);

create or replace function operations.plan_study_year_roll()
returns void
language plpgsql
set client_min_messages = warning
as $$
begin
    drop table if exists _study_year_roll_ladder;
    drop table if exists _persons_study_year_roll;
    drop table if exists _persons_next_service_roll;
    drop table if exists _persons_services_after_roll;
    drop table if exists _stranded_persons_groups_roll;
    drop table if exists _classes_roll;
    drop table if exists _servant_scopes_roll;

    create temporary table _study_year_roll_ladder on commit drop as
    select "order" as study_year,
           lead("order") over (order by "order") as next_study_year
    from public.study_years;

    create temporary table _persons_study_year_roll on commit drop as
    select person.id as person_id,
           ladder.next_study_year,
           (ladder.next_study_year is null) as graduating
    from public.persons person
    join _study_year_roll_ladder ladder on ladder.study_year = person.study_year_id;

    create temporary table _persons_next_service_roll on commit drop as
    with leaving as (
        select membership.rel_id,
               membership.person_id,
               membership.service_id as source_service_id,
               service.next_service_id as destination_service_id
        from public.persons_services membership
        join _persons_study_year_roll person on person.person_id = membership.person_id
        join public.services service on service.id = membership.service_id
        where operations.study_year_outgrows_service(
            person.next_study_year, service.study_year_to_id
        )
    ),
    ranked as (
        select leaving.*,
               row_number() over (
                   partition by leaving.person_id, leaving.destination_service_id
                   order by leaving.rel_id
               ) as arrival_rank,
               exists (
                   select 1
                   from public.persons_services staying
                   where staying.person_id = leaving.person_id
                     and staying.service_id = leaving.destination_service_id
                     and not exists (
                         select 1 from leaving other where other.rel_id = staying.rel_id
                     )
               ) as destination_already_held
        from leaving
    )
    select rel_id,
           person_id,
           source_service_id,
           destination_service_id,
           case
               when destination_service_id is null then 'drop'
               when destination_already_held or arrival_rank > 1 then 'dedupe'
               else 'move'
           end as action
    from ranked;

    create temporary table _persons_services_after_roll on commit drop as
    select membership.person_id, membership.service_id
    from public.persons_services membership
    where not exists (
        select 1 from _persons_next_service_roll leaving
        where leaving.rel_id = membership.rel_id
    )
    union
    select moving.person_id, moving.destination_service_id
    from _persons_next_service_roll moving
    where moving.action = 'move';

    create temporary table _stranded_persons_groups_roll on commit drop as
    select membership.person_id, membership.group_id
    from public.persons_groups membership
    join public.groups grp on grp.id = membership.group_id
    where exists (
        select 1 from _persons_next_service_roll leaving
        where leaving.person_id = membership.person_id
          and leaving.source_service_id = grp.service_id
    )
    and not exists (
        select 1 from _persons_services_after_roll staying
        where staying.person_id = membership.person_id
          and staying.service_id = grp.service_id
    );

    create temporary table _classes_roll on commit drop as
    with cohort as (
        select cls.id as class_id,
               ladder.next_study_year,
               service.next_service_id,
               next_service.study_year_from_id as next_service_first_study_year,
               operations.study_year_outgrows_service(
                   ladder.next_study_year, service.study_year_to_id
               ) as outgrows_service
        from public.classes cls
        join public.services service on service.id = cls.service_id
        join _study_year_roll_ladder ladder on ladder.study_year = cls.service_study_year
        left join public.services next_service on next_service.id = service.next_service_id
        where cls.deleted_at is null
    ),
    planned as (
        select class_id,
               next_study_year,
               next_service_id,
               next_service_first_study_year,
               case
                   when outgrows_service and next_service_id is not null then 'relocate'
                   when not outgrows_service and next_study_year is not null then 'advance'
               end as action
        from cohort
    )
    select * from planned where action is not null;

    create temporary table _servant_scopes_roll on commit drop as
    select scope.permission_id,
           case
               when ladder.next_study_year is not null
                    and not operations.study_year_outgrows_service(
                        ladder.next_study_year, service.study_year_to_id
                    )
                   then ladder.next_study_year
               else service.study_year_from_id
           end as study_year_after_roll
    from auth.users_admin_on scope
    join public.services service on service.id = scope.admin_on_service
    join _study_year_roll_ladder ladder on ladder.study_year = scope.service_study_year;
end;
$$;

create or replace function operations.find_study_year_roll_blockers()
returns table (issue_code text, detail text)
language plpgsql
as $$
declare
    v_service_count bigint;
begin
    perform operations.plan_study_year_roll();

    select count(*) into v_service_count from public.services;

    return query
    with recursive chain (start_id, service_id, depth) as (
        select service.id, service.next_service_id, 1
        from public.services service
        where service.next_service_id is not null
        union all
        select chain.start_id, service.next_service_id, chain.depth + 1
        from chain
        join public.services service on service.id = chain.service_id
        where chain.service_id <> chain.start_id
          and chain.depth <= v_service_count
    )
    select 'next_service_cycle',
           format('service %s is part of a next_service_id cycle', chain.start_id)
    from chain
    where chain.service_id = chain.start_id;

    return query
    select 'next_service_deleted',
           format(
               'service %s routes to soft-deleted service %s', source.id, destination.id
           )
    from public.services source
    join public.services destination on destination.id = source.next_service_id
    where destination.deleted_at is not null
      and (
          exists (
              select 1 from _persons_next_service_roll leaving
              where leaving.source_service_id = source.id
          )
          or exists (
              select 1 from _classes_roll cohort
              where cohort.next_service_id = destination.id and cohort.action = 'relocate'
          )
      );

    return query
    select 'person_loses_last_connection',
           format(
               'person %s would keep no service, group, family, store or uid', person.id
           )
    from public.persons person
    where person.family_id is null
      and person.store_id is null
      and person.uid is null
      and exists (
          select 1 from _persons_study_year_roll rolling
          where rolling.person_id = person.id
      )
      and not exists (
          select 1 from _persons_services_after_roll staying
          where staying.person_id = person.id
      )
      and not exists (
          select 1 from public.persons_groups membership
          where membership.person_id = person.id
            and not exists (
                select 1 from _stranded_persons_groups_roll stranded
                where stranded.person_id = membership.person_id
                  and stranded.group_id = membership.group_id
            )
      );

    return query
    select 'class_placement_mismatch',
           format(
               'class %s moves to service %s whose first year %s does not match its cohort year %s',
               cohort.class_id,
               cohort.next_service_id,
               cohort.next_service_first_study_year,
               cohort.next_study_year
           )
    from _classes_roll cohort
    where cohort.action = 'relocate'
      and cohort.next_service_first_study_year is distinct from cohort.next_study_year;
end;
$$;

create or replace function operations.apply_study_year_roll_plan()
returns table (step text, affected_rows bigint)
language plpgsql
as $$
declare
    v_rows bigint;
begin
    update public.persons person
    set study_year_id = null,
        work_status = case
            when person.work_status = 'student' then 'unemployed'
            else person.work_status
        end
    from _persons_study_year_roll plan
    where plan.person_id = person.id and plan.graduating;
    get diagnostics v_rows = row_count;
    return query select 'graduate_top_cohort_persons'::text, v_rows;

    update public.persons person
    set study_year_id = plan.next_study_year
    from _persons_study_year_roll plan
    where plan.person_id = person.id and not plan.graduating;
    get diagnostics v_rows = row_count;
    return query select 'advance_persons_study_years'::text, v_rows;

    delete from public.persons_services membership
    using _persons_next_service_roll plan
    where membership.rel_id = plan.rel_id and plan.action = 'drop';
    get diagnostics v_rows = row_count;
    return query
    select 'drop_persons_services_memberships_without_next_service'::text, v_rows;

    delete from public.persons_services membership
    using _persons_next_service_roll plan
    where membership.rel_id = plan.rel_id and plan.action = 'dedupe';
    get diagnostics v_rows = row_count;
    return query select 'dedupe_converging_persons_services_memberships'::text, v_rows;

    update public.persons_services membership
    set service_id = plan.destination_service_id
    from _persons_next_service_roll plan
    where membership.rel_id = plan.rel_id and plan.action = 'move';
    get diagnostics v_rows = row_count;
    return query
    select 'advance_persons_services_memberships_to_next_service'::text, v_rows;

    delete from public.persons_groups membership
    using _stranded_persons_groups_roll plan
    where membership.person_id = plan.person_id and membership.group_id = plan.group_id;
    get diagnostics v_rows = row_count;
    return query select 'drop_stranded_persons_groups_memberships'::text, v_rows;

    update public.classes cls
    set service_study_year = plan.next_study_year
    from _classes_roll plan
    where cls.id = plan.class_id and plan.action = 'advance';
    get diagnostics v_rows = row_count;
    return query select 'advance_classes_study_years'::text, v_rows;

    update public.classes cls
    set service_id = plan.next_service_id,
        service_study_year = plan.next_service_first_study_year
    from _classes_roll plan
    where cls.id = plan.class_id and plan.action = 'relocate';
    get diagnostics v_rows = row_count;
    return query select 'relocate_classes_to_next_service'::text, v_rows;

    update auth.users_admin_on scope
    set service_study_year = plan.study_year_after_roll
    from _servant_scopes_roll plan
    where scope.permission_id = plan.permission_id and plan.study_year_after_roll is not null;
    get diagnostics v_rows = row_count;
    return query select 'advance_servant_scopes_study_years'::text, v_rows;

    select count(*) into v_rows
    from _servant_scopes_roll plan
    where plan.study_year_after_roll is null;
    return query select 'servant_scopes_left_unchanged'::text, v_rows;

    select count(*) into v_rows
    from public.services service
    where service.deleted_at is null
      and service.study_year_from_id is not null
      and not exists (
          select 1 from public.classes cls
          where cls.service_id = service.id
            and cls.service_study_year = service.study_year_from_id
            and cls.deleted_at is null
      );
    return query select 'services_missing_first_grade_class'::text, v_rows;
end;
$$;

create or replace function operations.run_study_year_roll(
    p_season_year integer default null
)
returns table (step text, affected_rows bigint)
language plpgsql
as $$
declare
    v_season integer := coalesce(p_season_year, operations.current_season_year());
    v_blockers text;
begin
    perform pg_advisory_xact_lock(hashtext('operations.study_year_roll'));

    lock table
        public.study_years,
        public.services,
        public.persons,
        public.persons_services,
        public.persons_groups,
        public.classes,
        auth.users_admin_on
    in share row exclusive mode;

    if operations.study_year_roll_succeeded(v_season) then
        return query select 'skipped_already_rolled'::text, 0::bigint;

        return;
    end if;

    select string_agg(format('%s: %s', blocker.issue_code, blocker.detail), chr(10))
    into v_blockers
    from operations.find_study_year_roll_blockers() blocker;

    if v_blockers is not null then
        raise exception 'study year roll blocked for season %', v_season
            using detail = v_blockers;
    end if;

    create temporary table _study_year_roll_result on commit drop as
    select * from operations.apply_study_year_roll_plan();

    set constraints all immediate;

    insert into operations.study_year_roll_runs (season_year, status, step_counts)
    select v_season, 'succeeded', jsonb_object_agg(result.step, result.affected_rows)
    from _study_year_roll_result result;

    return query select result.step, result.affected_rows from _study_year_roll_result result;
end;
$$;

create or replace procedure operations.run_study_year_roll_when_due(
    p_today date default null
)
language plpgsql
as $$
declare
    v_today date := coalesce(p_today, operations.cairo_now()::date);
    v_season integer := extract(year from v_today)::integer;
    v_error text;
    v_error_detail text;
begin
    if v_today <> operations.nayrouz_date(v_season)
       or operations.study_year_roll_succeeded(v_season)
    then
        return;
    end if;

    begin
        perform operations.run_study_year_roll(v_season);
    exception
        when others then
            get stacked diagnostics
                v_error = message_text,
                v_error_detail = pg_exception_detail;
    end;

    if v_error is not null then
        insert into operations.study_year_roll_runs (season_year, status, error)
        values (v_season, 'failed', concat_ws(chr(10), v_error, nullif(v_error_detail, '')));
    end if;
end;
$$;

create or replace procedure operations.record_missed_study_year_roll(
    p_today date default null
)
language plpgsql
as $$
declare
    v_today date := coalesce(p_today, operations.cairo_now()::date);
    v_season integer := extract(year from v_today)::integer;
begin
    if exists (
        select 1 from operations.study_year_roll_runs
        where season_year = v_season and status in ('succeeded', 'missed')
    ) then
        return;
    end if;

    insert into operations.study_year_roll_runs (season_year, status, error)
    values (
        v_season,
        'missed',
        format('no successful roll recorded for season %s by %s Cairo', v_season, v_today)
    );
end;
$$;

do $$
begin
    if exists (select 1 from pg_available_extensions where name = 'pg_cron')
       and current_setting('shared_preload_libraries') like '%pg_cron%'
    then
        create extension if not exists pg_cron;

        perform cron.schedule(
            'study-year-roll',
            '0 * 11 9 *',
            'call operations.run_study_year_roll_when_due()'
        );

        perform cron.schedule(
            'study-year-roll-missed-check',
            '0 6 12 9 *',
            'call operations.record_missed_study_year_roll()'
        );
    else
        raise warning 'pg_cron is not preloaded; study year roll schedule not registered';
    end if;
end $$;
