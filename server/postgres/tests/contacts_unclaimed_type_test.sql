begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/contacts.psql

select plan(4);

select
    pg_temp.make_person_type('father', true) as admin_type,
    pg_temp.make_person_type('child', false) as plain_type,
    pg_temp.make_family() as family \gset

select throws_ok(
    format(
        $$insert into public.contacts (family_id, person_type_id, phone) values (%L, %L, '+201000000001')$$,
        :'family', :'plain_type'
    ),
    '23514',
    'contacts/unclaimed-type-not-family-admin',
    'an unclaimed contact cannot be for a type that is not a family admin'
);

select lives_ok(
    format(
        $$insert into public.contacts (family_id, person_type_id, phone) values (%L, %L, '+201000000001')$$,
        :'family', :'admin_type'
    ),
    'an unclaimed contact can be for a family admin type'
);

select throws_ok(
    format(
        $$update public.contacts set person_type_id = %L where phone = '+201000000001'$$,
        :'plain_type'
    ),
    '23514',
    'contacts/unclaimed-type-not-family-admin',
    'an unclaimed contact cannot be moved to a type that is not a family admin'
);

select pg_temp.make_person(:'family', :'plain_type') as child \gset

select lives_ok(
    format(
        $$insert into public.contacts (person_id, phone) values (%L, '+201000000002')$$,
        :'child'
    ),
    'a person of a type that is not a family admin can own contacts'
);

select * from finish();
rollback;
