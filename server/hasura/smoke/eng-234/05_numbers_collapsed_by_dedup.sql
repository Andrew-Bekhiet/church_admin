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
)
select e.person_id, count(*) as entries, array_agg(coalesce(e.key, 'main_phone') order by e.key nulls first) as fields
from entries as e
where e.phone is not null
group by e.person_id, e.phone
having count(*) > 1
order by e.person_id;

rollback;
