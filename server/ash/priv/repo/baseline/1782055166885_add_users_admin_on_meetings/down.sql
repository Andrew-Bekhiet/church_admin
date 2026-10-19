drop view if exists history.meetings_persons;
drop view if exists auth.users_admin_on_meetings;
drop view if exists auth.users_attendance_permissions;
create or replace view auth.users_attendance_permissions (
    uid,
    user_person_id,
    entity_type,
    entity_id,
    service_study_year,
    service_gender,
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
        uid,
        user_person_id,
        'any'::text as entity_type,
        NULL::uuid as entity_id,
        NULL::integer as service_study_year,
        NULL::boolean as service_gender,
        record_all_attendance as allow_record_attendance,
        record_all_servants_attendance as allow_record_servants_attendance,
        NULL::uuid as permission_id
    from users_global_permissions
    where
        read_all_data is TRUE
        and (
            record_all_attendance is TRUE
            or record_all_servants_attendance is TRUE
        )
    union all
    select
        uao.uid,
        approved_users.user_person_id,
        'service'::text as entity_type,
        uao.admin_on_service as entity_id,
        uao.service_study_year,
        uao.service_gender,
        COALESCE(uao.service_allow_record_attendance, FALSE)
            as allow_record_attendance,
        COALESCE(uao.service_allow_record_servants_attendance, FALSE)
            as allow_record_servants_attendance,
        uao.permission_id
    from auth.users_admin_on as uao
    inner join approved_users on uao.uid = approved_users.uid
    where
        uao.admin_on_service is not NULL
        and (
            COALESCE(uao.service_allow_record_attendance, FALSE)
            or COALESCE(uao.service_allow_record_servants_attendance, FALSE)
        )
    union all
    select
        uao.uid,
        approved_users.user_person_id,
        'group'::text as entity_type,
        uao.admin_on_group as entity_id,
        NULL::integer as service_study_year,
        NULL::boolean as service_gender,
        COALESCE(uao.group_allow_record_attendance, FALSE)
            as allow_record_attendance,
        COALESCE(uao.group_allow_record_servants_attendance, FALSE)
            as allow_record_servants_attendance,
        uao.permission_id
    from auth.users_admin_on as uao
    inner join approved_users on uao.uid = approved_users.uid
    where
        uao.admin_on_group is not NULL
        and (
            COALESCE(uao.group_allow_record_attendance, FALSE)
            or COALESCE(uao.group_allow_record_servants_attendance, FALSE)
        )
);
