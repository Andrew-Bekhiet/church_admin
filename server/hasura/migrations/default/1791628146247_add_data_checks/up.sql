create table if not exists public.data_check_overrides (
    family_id uuid primary key
    references public.families (id) on update cascade on delete cascade,
    is_complete boolean not null,
    updated_by uuid
    references auth.users_data (uid) on update cascade on delete set null
);

create or replace view public.data_checks as
select
    f.id as family_id,
    o.is_complete as user_override,
    v.family_check,
    v.address_check,
    case o.is_complete
        when true then 100
        when false then least(v.completeness_percent, 99)
        else v.completeness_percent
    end as completeness_percent,
    coalesce(o.is_complete, v.family_check and v.address_check)
        as is_complete,
    jsonb_build_array(
        jsonb_build_object(
            'group', 'family', 'check', 'has_family_admin',
            'passed', c.has_family_admin
        ),
        jsonb_build_object(
            'group', 'family', 'check', 'has_non_admin_member',
            'passed', c.has_non_admin_member
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'has_address',
            'passed', c.has_address
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'has_area',
            'passed', c.has_area
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'has_street',
            'passed', c.has_street
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'has_special_landmark',
            'passed', c.has_special_landmark
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'special_landmark_is_short',
            'passed', c.special_landmark_is_short
        ),
        jsonb_build_object(
            'group', 'address',
            'check', 'special_landmark_is_not_a_full_address',
            'passed', c.special_landmark_is_not_a_full_address
        )
    ) as details
from public.families as f
-- Lateral per-family lookups let a filter on family_id (Hasura's
-- persons.dataCheck / families.dataCheck joins) reach the persons and
-- addresses indexes instead of aggregating every family first. The checks
-- reference those lateral rows, so they cannot be CTEs.
left join lateral (
    select
        bool_or(pt.is_family_admin) as has_family_admin,
        bool_or(not pt.is_family_admin) as has_non_admin_member
    from public.persons as p
    inner join public.person_types as pt on p.person_type_id = pt.id
    where p.family_id = f.id and p.deleted_at is null
) as m on true
left join public.addresses as a on f.id = a.family_id
left join public.data_check_overrides as o on f.id = o.family_id
cross join
    lateral ( -- noqa: ST05
        select
            coalesce(m.has_family_admin, false) as has_family_admin,
            coalesce(m.has_non_admin_member, false) as has_non_admin_member,
            a.family_id is not null as has_address,
            a.area_id is not null as has_area,
            a.street_id is not null as has_street,
            coalesce(btrim(a.special_landmark) <> '', false)
                as has_special_landmark,
            coalesce(
                char_length(btrim(a.special_landmark)) between 1 and 49, false
            )
                as special_landmark_is_short,
            -- Migrated addresses copied the legacy free-text address into
            -- special_landmark; street, storey, apartment and house-number
            -- words in it mean it was never split into structured fields.
            a.family_id is not null
            and coalesce(
                a.special_landmark
                !~ (
                    'شارع|(^|\s)ش(\s|\.|/|[0-9٠-٩])|الدور'
                    || '|(^|\s)دور(\s|$)|شق[ةه]|^\s*[0-9٠-٩]'
                ),
                true
            ) as special_landmark_is_not_a_full_address
    ) as c
cross join
    lateral ( -- noqa: ST05
        select
            c.has_family_admin and c.has_non_admin_member as family_check,
            c.has_address
            and c.has_area
            and c.has_street
            and c.has_special_landmark
            and c.special_landmark_is_short
            and c.special_landmark_is_not_a_full_address as address_check,
            (
                c.has_family_admin::int
                + c.has_non_admin_member::int
                + c.has_address::int
                + c.has_area::int
                + c.has_street::int
                + c.has_special_landmark::int
                + c.special_landmark_is_short::int
                + c.special_landmark_is_not_a_full_address::int
            ) * 100 / 8 as completeness_percent
    ) as v
where f.deleted_at is null;
