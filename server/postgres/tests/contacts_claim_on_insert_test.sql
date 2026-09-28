begin;
create extension if not exists pgtap;
\ir fixtures/base.psql

select plan(9);

select
    pg_temp.make_person_type('father', true) as person_type,
    pg_temp.make_family() as family_one,
    pg_temp.make_family() as family_none,
    pg_temp.make_family() as family_two,
    pg_temp.make_family() as family_mixed,
    pg_temp.make_family() as family_deleted \gset

select
    pg_temp.make_person(:'family_one', :'person_type') as person_one,
    pg_temp.make_person(:'family_mixed', :'person_type') as person_live \gset

select pg_temp.make_person(:'family_two', :'person_type');
select pg_temp.make_person(:'family_two', :'person_type');
select pg_temp.make_person(:'family_mixed', :'person_type') as person_gone \gset
select pg_temp.make_person(:'family_deleted', :'person_type') as person_deleted \gset
update public.persons set deleted_at = now() where id in (:'person_gone', :'person_deleted');

insert into public.contacts (family_id, person_type_id, phone)
values
    (:'family_one', :'person_type', '+201000000001'),
    (:'family_none', :'person_type', '+201000000002'),
    (:'family_two', :'person_type', '+201000000003'),
    (:'family_mixed', :'person_type', '+201000000004'),
    (:'family_deleted', :'person_type', '+201000000005');

select is(
    (select person_id from public.contacts where phone = '+201000000001'),
    :'person_one'::uuid,
    'a new unclaimed contact goes to the only person of its family and type'
);

select is(
    (select family_id from public.contacts where phone = '+201000000001'),
    null,
    'a claimed contact no longer belongs to the family'
);

select is(
    (select person_type_id from public.contacts where phone = '+201000000001'),
    null,
    'a claimed contact no longer belongs to the person type'
);

select is(
    (select family_id from public.contacts where phone = '+201000000002'),
    :'family_none'::uuid,
    'a new contact stays unclaimed when the family has no person of that type'
);

select is(
    (select family_id from public.contacts where phone = '+201000000003'),
    :'family_two'::uuid,
    'a new contact stays unclaimed when two persons share the family and type'
);

select is(
    (select person_id from public.contacts where phone = '+201000000004'),
    :'person_live'::uuid,
    'a soft-deleted person does not stop the live person from claiming'
);

select is(
    (select family_id from public.contacts where phone = '+201000000005'),
    :'family_deleted'::uuid,
    'a new contact stays unclaimed when the only person of that type is soft-deleted'
);

insert into public.contacts (person_id, phone, is_main_phone)
values (:'person_one', '+201000000006', true);

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values (:'family_one', :'person_type', '+201000000007', true);

select is(
    (select is_main_phone from public.contacts where phone = '+201000000007'),
    false,
    'a claimed contact is not main when the person already has a main phone'
);

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values (:'family_mixed', :'person_type', '+201000000008', true);

select is(
    (select is_main_phone from public.contacts where phone = '+201000000008'),
    true,
    'a claimed contact stays main when the person has no main phone'
);

select * from finish();
rollback;
