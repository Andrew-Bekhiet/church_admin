begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/contacts.psql

select plan(8);

create temp table ctx as
select pg_temp.make_person(null, null) as person_id;

select lives_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+201001234567')$$,
    'an Egyptian mobile number in E.164 format is accepted'
);

select lives_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+14155552671')$$,
    'a number from another country in E.164 format is accepted'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '201001234567')$$,
    '23514',
    null,
    'a number without the plus sign is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+20 100 123 4567')$$,
    '23514',
    null,
    'a number containing spaces is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+0201001234567')$$,
    '23514',
    null,
    'a number whose country code starts with zero is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+12345')$$,
    '23514',
    null,
    'a number with fewer than seven digits is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+1234567890123456')$$,
    '23514',
    null,
    'a number with more than fifteen digits is rejected'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+20abc1234567')$$,
    '23514',
    null,
    'a number containing letters is rejected'
);

select * from finish();
rollback;
