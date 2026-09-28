begin;
create extension if not exists pgtap;
\ir fixtures/base.psql

select plan(6);

select
    pg_temp.make_person_type('father', true) as person_type,
    pg_temp.make_family() as family_a,
    pg_temp.make_family() as family_b \gset

select
    pg_temp.make_person(:'family_a', :'person_type') as person_a1,
    pg_temp.make_person(:'family_a', :'person_type') as person_a2,
    pg_temp.make_person(:'family_b', :'person_type') as person_b1,
    pg_temp.make_person(:'family_b', :'person_type') as person_b2 \gset

insert into public.contacts (person_id, phone, is_main_phone)
values
    (:'person_a1', '+201000000001', true),
    (:'person_a1', '+201000000002', false);

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values
    (:'family_a', :'person_type', '+201000000002', false),
    (:'family_a', :'person_type', '+201000000003', true),
    (:'family_a', :'person_type', '+201000000004', false),
    (:'family_b', :'person_type', '+201000000005', true),
    (:'family_b', :'person_type', '+201000000006', false);

update public.persons set deleted_at = now() where id in (:'person_a2', :'person_b2');

select is(
    (select count(*) from public.contacts where person_id = :'person_a1'),
    4::bigint,
    'claiming adds the unclaimed contacts the person did not have'
);

select is(
    (select count(*) from public.contacts where family_id = :'family_a'),
    0::bigint,
    'claiming leaves no unclaimed contact behind'
);

select is(
    (select count(*) from public.contacts where phone = '+201000000002'),
    1::bigint,
    'an unclaimed contact whose phone the person already has disappears'
);

select is(
    (select phone from public.contacts where person_id = :'person_a1' and is_main_phone),
    '+201000000001',
    'a claimed main contact does not replace the main phone the person has'
);

select is(
    (select phone from public.contacts where person_id = :'person_b1' and is_main_phone),
    '+201000000005',
    'a claimed main contact stays main when the person has no main phone'
);

select is(
    (select count(*) from public.contacts where person_id = :'person_b1'),
    2::bigint,
    'claiming moves every unclaimed contact of the family and type to the person'
);

select * from finish();
rollback;
