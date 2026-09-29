begin transaction read only;

with entries as (
    select p.id as person_id, p.family_id, e.key, e.value, n.phone
    from public.persons as p
    cross join lateral (
        select null::text as key, p.main_phone as value
        union all
        select o.key, o.value from jsonb_each_text(case when jsonb_typeof(p.other_phones) = 'object' then p.other_phones else '{}'::jsonb end) as o
    ) as e
    cross join lateral (
        select case when c.v ~ '^\+[1-9][0-9]{6,14}$' then c.v end as phone
        from (
            select case
                when s.d like '+%' then s.d
                when s.d like '00%' then '+' || substr(s.d, 3)
                when s.d like '0%' then '+20' || substr(s.d, 2)
                else '+20' || s.d
            end as v
            from (select regexp_replace(e.value, '[\s\-\.\(\)]', '', 'g') as d) as s
        ) as c
    ) as n
    where nullif(btrim(e.value), '') is not null
),
role_entries as (
    select e.family_id, pt.id as person_type_id, e.key, e.person_id, e.phone
    from entries as e
    join public.person_types as pt
        on pt.is_family_admin and regexp_replace(translate(btrim(pt.name), 'أإآةى', 'اايهي'), '^ال', '') = regexp_replace(translate(btrim(substring(e.key from '^\s*رقم الهاتف\s*\((.*)\)\s*$')), 'أإآةى', 'اايهي'), '^ال', '')
    where e.family_id is not null and e.phone is not null
)
select r.family_id, r.key as label, count(distinct r.phone) as distinct_numbers, array_agg(r.person_id order by r.person_id) as person_ids
from role_entries as r
group by r.family_id, r.person_type_id, r.key
having count(distinct r.phone) > 1
order by r.family_id, r.key;

rollback;
