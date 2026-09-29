begin;
create extension if not exists pgtap;
\ir fixtures/base.psql

select plan(10);

select
    pg_temp.make_person_type('father', true) as person_type,
    pg_temp.make_family() as family_unclaimed,
    pg_temp.make_family() as family_claimed \gset

insert into public.contacts (family_id, person_type_id, phone, label)
values
    (:'family_unclaimed', :'person_type', '+201000000001', null),
    (:'family_unclaimed', :'person_type', '+201000000002', 'kept'),
    (:'family_unclaimed', :'person_type', '+201000000003', null),
    (:'family_claimed', :'person_type', '+201000000011', null);

select pg_temp.make_person(:'family_claimed', :'person_type') as father \gset

select lives_ok(
    format(
        $$insert into public.contacts (family_id, person_type_id, phone) values (%L, %L, '+201000000001')$$,
        :'family_unclaimed', :'person_type'
    ),
    'inserting a number the family already has unclaimed for that type raises no error'
);

select is(
    (select count(*) from public.contacts where phone = '+201000000001'),
    1::bigint,
    'an unclaimed duplicate leaves a single row'
);

insert into public.contacts (family_id, person_type_id, phone, label)
values (:'family_unclaimed', :'person_type', '+201000000001', 'Work');

select is(
    (select label from public.contacts where phone = '+201000000001'),
    'Work',
    'a duplicate insert gives its label to an existing row that has none'
);

insert into public.contacts (family_id, person_type_id, phone, label)
values (:'family_unclaimed', :'person_type', '+201000000002', 'Home');

select is(
    (select label from public.contacts where phone = '+201000000002'),
    'kept',
    'a duplicate insert keeps the label the existing row already has'
);

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values (:'family_unclaimed', :'person_type', '+201000000003', true);

select is(
    (select is_main_phone from public.contacts where phone = '+201000000003'),
    true,
    'a duplicate insert that asks for main makes the existing unclaimed row main'
);

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values (:'family_unclaimed', :'person_type', '+201000000001', true);

select is(
    (select array_agg(phone order by phone) from public.contacts where family_id = :'family_unclaimed' and is_main_phone),
    array['+201000000001'],
    'a duplicate main insert clears the previous unclaimed main'
);

select is(
    (select person_id from public.contacts where phone = '+201000000011'),
    :'father'::uuid,
    'the unclaimed number moved onto the father when he joined the family'
);

select lives_ok(
    format(
        $$insert into public.contacts (person_id, phone, is_main_phone) values (%L, '+201000000011', true)$$,
        :'father'
    ),
    'inserting the number the father inherited raises no error'
);

select is(
    (select count(*) from public.contacts where phone = '+201000000011'),
    1::bigint,
    'a person-owned duplicate leaves a single row'
);

select is(
    (select is_main_phone from public.contacts where phone = '+201000000011'),
    true,
    'a person-owned duplicate that asks for main makes the existing row main'
);

select * from finish();
rollback;
