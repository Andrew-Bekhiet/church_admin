create or replace function
public.persons_service_is_outside_service_study_years(
    persons_service public.persons_services
)
returns boolean
language sql
stable
as $$
    select not exists (
        select 1
        from public.persons p
        inner join public.services s on s.id = persons_service.service_id
        where
            p.id = persons_service.person_id
            and (
                p.study_year_id is null
                or (s.study_year_from_id is null and s.study_year_to_id is null)
                or (
                    s.study_year_from_id <= p.study_year_id
                    and s.study_year_to_id >= p.study_year_id
                )
            )
    )
$$;
