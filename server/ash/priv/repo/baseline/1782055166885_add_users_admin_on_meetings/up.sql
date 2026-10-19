drop view if exists auth.users_attendance_permissions;
create or replace view auth.users_admin_on_meetings (
    uid,
    user_person_id,
    meeting_id,
    allow_record_attendance,
    allow_record_servants_attendance,
    permission_id
) as (
    with approved_users as (
        select
            up.uid,
            p.id as user_person_id
        from auth.users_permissions as up
        left join persons as p on up.uid = p.uid
        where up.permission = 'approved'
    ),

    approved_users_admin_on as (
        select
            uao.uid,
            approved_users.user_person_id,
            uao.permission_id,
            uao.admin_on_service,
            uao.service_study_year,
            uao.service_gender,
            uao.service_allow_record_attendance,
            uao.service_allow_record_servants_attendance,
            uao.admin_on_group,
            uao.group_allow_record_attendance,
            uao.group_allow_record_servants_attendance
        from auth.users_admin_on as uao
        inner join approved_users on uao.uid = approved_users.uid
    ),

    users_global_permissions as (
        select
            permissions.uid,
            approved_users.user_person_id,
            BOOL_OR(permissions.permission = 'readAllData') as read_all_data,
            BOOL_OR(permissions.permission = 'readAllData')
            and BOOL_OR(permissions.permission = 'recordAllAttendance')
                as record_all_attendance,
            BOOL_OR(permissions.permission = 'readAllData')
            and BOOL_OR(
                permissions.permission = 'recordAllServantsAttendance'
            ) as record_all_servants_attendance
        from approved_users
        inner join
            auth.users_permissions as permissions
            on approved_users.uid = permissions.uid
        group by permissions.uid, approved_users.user_person_id
    )

    select
        up.uid,
        up.user_person_id,
        meeting.id as meeting_id,
        up.record_all_attendance,
        up.record_all_servants_attendance,
        NULL as permission_id
    from users_global_permissions as up
    inner join history.meetings as meeting
        on
            up.record_all_attendance
            or up.record_all_servants_attendance

    union all

    select
        uao.uid,
        uao.user_person_id,
        meeting.id as meeting_id,
        uao.service_allow_record_attendance,
        uao.service_allow_record_servants_attendance,
        uao.permission_id
    from history.meetings as meeting
    inner join approved_users_admin_on as uao on meeting.service_id = uao.admin_on_service
    where (
        uao.service_study_year is NULL
        or meeting.service_study_year is NULL
        or meeting.service_study_year = uao.service_study_year
    )
    and (
        uao.service_gender is NULL
        or meeting.service_gender is NULL
        or meeting.service_gender = uao.service_gender
    )

    union all

    select
        uao.uid,
        uao.user_person_id,
        meeting.id as meeting_id,
        uao.group_allow_record_attendance,
        uao.group_allow_record_servants_attendance,
        uao.permission_id
    from approved_users_admin_on as uao
    inner join history.meetings as meeting on uao.admin_on_group = meeting.group_id

);

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
        meeting.service_study_year is NULL
        or meeting.service_study_year = p.study_year_id
    )
    and (
        meeting.service_gender is NULL
        or meeting.service_gender = p.gender
    )
);
