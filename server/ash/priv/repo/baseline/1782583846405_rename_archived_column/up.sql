ALTER TABLE history.meetings RENAME COLUMN archived TO is_archived;

CREATE OR REPLACE FUNCTION history.check_attendance_history_meeting()
RETURNS trigger
LANGUAGE plpgsql
AS $$
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

    if meeting.is_archived then
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
