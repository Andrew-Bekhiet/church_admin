begin transaction read only;

select o.key as label, count(*) as persons
from public.persons as p
cross join lateral jsonb_each_text(case when jsonb_typeof(p.other_phones) = 'object' then p.other_phones else '{}'::jsonb end) as o
where nullif(btrim(o.value), '') is not null
group by o.key
order by count(*) desc, o.key;

rollback;
