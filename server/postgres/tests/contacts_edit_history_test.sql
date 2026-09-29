begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/contacts.psql

select plan(8);

select
    pg_temp.make_person_type('father', true) as person_type,
    pg_temp.make_family() as family,
    pg_temp.make_family() as other_family,
    pg_temp.make_user('editor') as editor \gset

select
    pg_temp.make_person(:'other_family', :'person_type') as father \gset

select set_config(
    'hasura.user',
    json_build_object('x-hasura-user-id', :'editor', 'x-hasura-role', 'user')::text,
    true
);

select pg_temp.add_contact(:'father', null, null, '+201000000001', true) as owned_contact \gset
select pg_temp.add_contact(null, :'family', :'person_type', '+201000000002') as unclaimed_contact \gset

delete from history.edit_history;

update public.contacts set label = 'Work' where id = :'owned_contact';

select is(
    (select count(*) from history.edit_history where "table" = 'persons' and record_id = :'father'),
    1::bigint,
    'editing a claimed contact records one edit on its person'
);

select is(
    (select count(*) from history.edit_history where record_id <> :'father'),
    0::bigint,
    'editing a claimed contact records nothing on any other record'
);

delete from history.edit_history;

update public.contacts set label = 'Home' where id = :'unclaimed_contact';

select is(
    (select count(*) from history.edit_history where "table" = 'families' and record_id = :'family'),
    1::bigint,
    'editing an unclaimed contact records one edit on its family'
);

delete from history.edit_history;

update public.persons set name = 'renamed' where id = :'father';

select is(
    (select recorded_by from history.edit_history where record_id = :'father'),
    :'editor'::uuid,
    'a direct person edit is attributed to the session user'
);

delete from history.edit_history;

update public.contacts set label = 'Mobile' where id = :'owned_contact';

select results_eq(
    format($$select recorded_by, user_role from history.edit_history where record_id = %L$$, :'father'),
    format($$values (%L::uuid, 'user')$$, :'editor'),
    'a contact edit is attributed to the session user the way a direct person edit is'
);

delete from history.edit_history;

update public.persons set family_id = :'family', person_type_id = :'person_type' where id = :'father';

select is(
    (select count(*) from history.edit_history where "table" = 'persons' and record_id = :'father'),
    2::bigint,
    'moving the father into the family records the person edit and the claim of the unclaimed contact'
);

delete from history.edit_history;

delete from public.contacts where id = :'owned_contact';

select is(
    (select count(*) from history.edit_history where "table" = 'persons' and record_id = :'father'),
    1::bigint,
    'deleting a contact records an edit on its owner'
);

select pg_temp.add_contact(:'father', null, null, '+201000000009') as switched_contact \gset

delete from history.edit_history;

select set_config('church_admin.skip_contact_edit_history', 'on', true);
update public.contacts set label = 'Silent' where id = :'switched_contact';

select is(
    (select count(*) from history.edit_history),
    0::bigint,
    'a contact edit records nothing while contact edit history is switched off'
);

select * from finish();
rollback;
