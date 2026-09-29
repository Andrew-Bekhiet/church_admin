create or replace view auth.users_permissions_by_family_id (uid, family_id, allow_edit) as
select
    access.uid,
    p.family_id,
    coalesce(bool_or(access.allow_edit and not coalesce(t.is_family_admin, false)), false) as allow_edit
from auth.users_permissions_by_entity_id as access
inner join public.persons as p on p.id = access.entity_id and p.deleted_at is null
left join public.person_types as t on t.id = p.person_type_id
where access.entity_type = 'person' and p.family_id is not null
group by access.uid, p.family_id;
