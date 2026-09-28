begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/contacts.psql

select plan(8);

create temp table ctx as
select
    pg_temp.make_family() as family_id,
    pg_temp.make_person_type('father', true) as person_type_id;
alter table ctx add column person_id uuid;
update ctx set person_id = pg_temp.make_person(family_id, person_type_id);

select lives_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+201001234567')$$,
    'a contact owned by a person is accepted'
);

select lives_ok(
    $$select pg_temp.add_contact(null, (select family_id from ctx), (select person_type_id from ctx), '+201001234567')$$,
    'a contact owned by a family and person type is accepted'
);

select throws_ok(
    $$select pg_temp.add_contact(null, null, null, '+201001234568')$$,
    '23514',
    null,
    'a contact with no owner is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), (select family_id from ctx), null, '+201001234568')$$,
    '23514',
    null,
    'a contact owned by a person and a family is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, (select person_type_id from ctx), '+201001234568')$$,
    '23514',
    null,
    'a contact owned by a person and a person type is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), (select family_id from ctx), (select person_type_id from ctx), '+201001234568')$$,
    '23514',
    null,
    'a contact owned by a person, a family and a person type is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact(null, (select family_id from ctx), null, '+201001234568')$$,
    '23514',
    null,
    'a contact owned by a family without a person type is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact(null, null, (select person_type_id from ctx), '+201001234568')$$,
    '23514',
    null,
    'a contact owned by a person type without a family is rejected'
);

select * from finish();
rollback;
