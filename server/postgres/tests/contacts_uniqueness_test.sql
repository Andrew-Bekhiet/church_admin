begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/contacts.psql

select plan(12);

create temp table ctx as
select
    pg_temp.make_family() as family_id,
    pg_temp.make_family() as other_family_id,
    pg_temp.make_person_type('father', true) as person_type_id,
    pg_temp.make_person_type('mother', true) as other_person_type_id,
    pg_temp.make_person() as person_id,
    pg_temp.make_person() as other_person_id;

select pg_temp.add_contact((select person_id from ctx), null, null, '+201001234567', true);
select pg_temp.add_contact(null, (select family_id from ctx), (select person_type_id from ctx), '+201001234567', true);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+201001234500');
    update public.contacts set phone = '+201001234567' where phone = '+201001234500'$$,
    '23505',
    null,
    'a person cannot end up with the same phone twice'
);

select lives_ok(
    $$select pg_temp.add_contact((select other_person_id from ctx), null, null, '+201001234567', true)$$,
    'two persons can have the same phone'
);

select throws_ok(
    $$select pg_temp.add_contact(null, (select family_id from ctx), (select person_type_id from ctx), '+201001234500');
    update public.contacts set phone = '+201001234567' where phone = '+201001234500'$$,
    '23505',
    null,
    'an unclaimed family and person type cannot end up with the same phone twice'
);

select lives_ok(
    $$select pg_temp.add_contact(null, (select other_family_id from ctx), (select person_type_id from ctx), '+201001234567', true)$$,
    'two families can have the same unclaimed phone'
);

select lives_ok(
    $$select pg_temp.add_contact(null, (select family_id from ctx), (select other_person_type_id from ctx), '+201001234567', true)$$,
    'two person types in one family can have the same unclaimed phone'
);

select is(
    (select count(*) from public.contacts where phone = '+201001234567'),
    5::bigint,
    'the same phone can be held by persons and unclaimed rows at once'
);

select throws_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+201001234568', true)$$,
    '23505',
    null,
    'a person cannot have two main phones'
);

select lives_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+201001234568')$$,
    'a person can have a main phone and another phone'
);

select lives_ok(
    $$select pg_temp.add_contact((select person_id from ctx), null, null, '+201001234569')$$,
    'a person can have several phones that are not main'
);

select throws_ok(
    $$select pg_temp.add_contact(null, (select family_id from ctx), (select person_type_id from ctx), '+201001234568', true)$$,
    '23505',
    null,
    'an unclaimed family and person type cannot have two main phones'
);

select lives_ok(
    $$select pg_temp.add_contact(null, (select family_id from ctx), (select person_type_id from ctx), '+201001234568')$$,
    'an unclaimed family and person type can have a main phone and another phone'
);

select is(
    (select count(*) from public.contacts where person_id = (select person_id from ctx) and is_main_phone),
    1::bigint,
    'a person ends with exactly one main phone'
);

select * from finish();
rollback;
