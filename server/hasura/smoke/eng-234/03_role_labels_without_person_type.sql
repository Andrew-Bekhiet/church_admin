begin transaction read only;

select p.id as person_id, o.key as label
from public.persons as p
cross join lateral jsonb_each_text(case when jsonb_typeof(p.other_phones) = 'object' then p.other_phones else '{}'::jsonb end) as o
where o.key ~ '^\s*رقم الهاتف\s*\((.*)\)\s*$'
    and not exists (
        select 1
        from public.person_types as pt
        where pt.is_family_admin
            and regexp_replace(translate(btrim(pt.name), 'أإآةى', 'اايهي'), '^ال', '') = regexp_replace(translate(btrim(substring(o.key from '^\s*رقم الهاتف\s*\((.*)\)\s*$')), 'أإآةى', 'اايهي'), '^ال', '')
    )
order by p.id, o.key;

rollback;
