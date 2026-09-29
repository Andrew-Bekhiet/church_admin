begin transaction read only;

select p.id as person_id, 'other_phones is not an object' as problem, null::text as label
from public.persons as p
where jsonb_typeof(p.other_phones) <> 'object'
union all
select p.id, 'other_phones value is not a string', o.key
from public.persons as p
cross join lateral jsonb_each(p.other_phones) as o
where jsonb_typeof(p.other_phones) = 'object' and jsonb_typeof(o.value) <> 'string'
order by person_id, label;

rollback;
