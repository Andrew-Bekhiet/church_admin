create table if not exists public.data_check_overrides (
    family_id uuid primary key
    references public.families (id) on update cascade on delete cascade,
    is_complete boolean not null,
    updated_by uuid
    references auth.users_data (uid) on update cascade on delete set null
);

create or replace view public.data_checks as
with members as (
    select
        p.family_id,
        bool_or(pt.is_family_admin) as has_family_admin,
        bool_or(not pt.is_family_admin) as has_non_admin_member
    from public.persons as p
    inner join public.person_types as pt on p.person_type_id = pt.id
    where p.deleted_at is null and p.family_id is not null
    group by p.family_id
),

address_facts as (
    select
        a.family_id,
        a.area_id is not null as has_area,
        a.street_id is not null as has_street,
        nullif(btrim(a.special_landmark), '') is not null
            as has_special_landmark,
        coalesce(char_length(btrim(a.special_landmark)) < 50, false)
            as special_landmark_is_short,
        -- Migrated addresses copied the whole legacy free-text address into
        -- special_landmark; street, storey, apartment and house-number words
        -- in it mean it was never split into the structured fields.
        coalesce(
            a.special_landmark
            !~ array_to_string(
                array[
                    'شارع',
                    '(^|\s)ش(\s|\.|/|[0-9٠-٩])',
                    'الدور',
                    '(^|\s)دور(\s|$)',
                    'شق[ةه]',
                    '^\s*[0-9٠-٩]'
                ],
                '|'
            ),
            true
        ) as special_landmark_is_not_a_full_address
    from public.addresses as a
    where a.family_id is not null
),

checks as (
    select
        f.id as family_id,
        coalesce(m.has_family_admin, false) as has_family_admin,
        coalesce(m.has_non_admin_member, false) as has_non_admin_member,
        a.family_id is not null as has_address,
        coalesce(a.has_area, false) as has_area,
        coalesce(a.has_street, false) as has_street,
        coalesce(a.has_special_landmark, false) as has_special_landmark,
        coalesce(a.special_landmark_is_short, false)
            as special_landmark_is_short,
        coalesce(a.special_landmark_is_not_a_full_address, false)
            as special_landmark_is_not_a_full_address
    from public.families as f
    left join members as m on f.id = m.family_id
    left join address_facts as a on f.id = a.family_id
    where f.deleted_at is null
),

verdicts as (
    select
        c.*,
        c.has_family_admin and c.has_non_admin_member as family_check,
        c.has_address
        and c.has_area
        and c.has_street
        and c.has_special_landmark
        and c.special_landmark_is_short
        and c.special_landmark_is_not_a_full_address as address_check
    from checks as c
)

select
    v.family_id,
    v.family_check,
    v.address_check,
    o.is_complete as user_override,
    coalesce(o.is_complete, v.family_check and v.address_check)
        as is_complete,
    jsonb_build_array(
        jsonb_build_object(
            'group', 'family', 'check', 'has_family_admin',
            'passed', v.has_family_admin
        ),
        jsonb_build_object(
            'group', 'family', 'check', 'has_non_admin_member',
            'passed', v.has_non_admin_member
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'has_address',
            'passed', v.has_address
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'has_area',
            'passed', v.has_area
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'has_street',
            'passed', v.has_street
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'has_special_landmark',
            'passed', v.has_special_landmark
        ),
        jsonb_build_object(
            'group', 'address', 'check', 'special_landmark_is_short',
            'passed', v.special_landmark_is_short
        ),
        jsonb_build_object(
            'group', 'address',
            'check', 'special_landmark_is_not_a_full_address',
            'passed', v.special_landmark_is_not_a_full_address
        )
    ) as details
from verdicts as v
left join public.data_check_overrides as o on v.family_id = o.family_id;
