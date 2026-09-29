begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/permissions.psql

select plan(7);

select
    pg_temp.make_person_type('father', true) as father_type,
    pg_temp.make_person_type('child') as child_type,
    pg_temp.make_family() as family,
    pg_temp.make_group() as group_one,
    pg_temp.make_group() as group_two \gset

select
    pg_temp.make_person(:'family', :'father_type') as father,
    pg_temp.make_person(:'family', :'child_type') as child \gset

select
    pg_temp.make_group_admin(:'group_one', false) as reader,
    pg_temp.make_group_admin(:'group_two', true) as father_editor,
    pg_temp.make_group_admin(pg_temp.make_group(), true) as outsider \gset

select pg_temp.add_to_group(:'father', :'group_two');

select is(
    (select count(*)::int from auth.users_permissions_by_family_id where uid = :'reader' and family_id = :'family'),
    0,
    'a user with no access to any member of the family has no family access'
);

select pg_temp.add_to_group(:'child', :'group_one');

select is(
    (select count(*)::int from auth.users_permissions_by_family_id where uid = :'reader' and family_id = :'family'),
    1,
    'a user who can read a child has access to the family'
);

select is(
    (select allow_edit from auth.users_permissions_by_family_id where uid = :'reader' and family_id = :'family'),
    false,
    'a read-only user cannot edit the family'
);

select is(
    (select allow_edit from auth.users_permissions_by_family_id where uid = :'father_editor' and family_id = :'family'),
    false,
    'a user who can edit only the family admin member cannot edit the family'
);

select is(
    (select count(*)::int from auth.users_permissions_by_family_id where uid = :'father_editor' and family_id = :'family'),
    1,
    'a user who can edit only the family admin member can still read the family'
);

select pg_temp.add_to_group(:'child', :'group_two');

select is(
    (select allow_edit from auth.users_permissions_by_family_id where uid = :'father_editor' and family_id = :'family'),
    true,
    'a user who can edit a non-admin member can edit the family'
);

update public.persons set deleted_at = now() where id = :'child';

select is(
    (select count(*)::int from auth.users_permissions_by_family_id where uid = :'reader' and family_id = :'family'),
    0,
    'a soft-deleted member grants no family access'
);

select * from finish();
rollback;
