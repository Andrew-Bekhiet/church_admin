begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql
\ir fixtures/contacts.psql

select plan(4);

select * from pg_temp.make_household() \gset
select pg_temp.make_person(:'family', :'father_type') as father \gset

select pg_temp.add_contact(:'father', null, null, '+201000000001', true) as father_contact \gset

delete from history.edit_history;

update public.contacts set phone = '+201000000002' where id = :'father_contact';

select is(
    (select count(*) from history.edit_history where record_id in (:'child', :'sibling', :'mother')),
    0::bigint,
    'changing a father number leaves the siblings and the mother without new edits'
);

select is(
    (select count(*) from history.edit_history where record_id = :'father'),
    1::bigint,
    'changing a father number records exactly one edit on the father'
);

delete from history.edit_history;

update public.persons set name = 'renamed' where id = :'child';

select is(
    (select count(*) from history.edit_history where record_id = :'child'),
    1::bigint,
    'changing any other person column still records an edit'
);

delete from history.edit_history;

select pg_temp.make_person(:'family', :'child_type') as newcomer \gset

select is(
    (select count(*) from history.edit_history where record_id = :'newcomer'),
    1::bigint,
    'creating a person still records an edit'
);

select * from finish();
rollback;
