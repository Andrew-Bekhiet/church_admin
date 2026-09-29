begin transaction read only;

select p.id as person_id, p.family_id, o.key as label, count(m.id) as members
from public.persons as p
left join public.person_types as own on own.id = p.person_type_id
cross join lateral jsonb_each_text(case when jsonb_typeof(p.other_phones) = 'object' then p.other_phones else '{}'::jsonb end) as o
join public.person_types as pt
    on pt.is_family_admin and regexp_replace(translate(btrim(pt.name), 'أإآةى', 'اايهي'), '^ال', '') = regexp_replace(translate(btrim(substring(o.key from '^\s*رقم الهاتف\s*\((.*)\)\s*$')), 'أإآةى', 'اايهي'), '^ال', '')
join public.persons as m on m.family_id = p.family_id and m.person_type_id = pt.id and m.deleted_at is null
where p.deleted_at is null and p.family_id is not null and not coalesce(own.is_family_admin, false)
group by p.id, p.family_id, o.key
having count(m.id) > 1
order by p.id, o.key;

rollback;
