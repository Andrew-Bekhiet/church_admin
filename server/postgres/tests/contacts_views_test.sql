begin;
create extension if not exists pgtap;
\ir fixtures/base.psql

select plan(7);

select
    pg_temp.make_person_type('father', true) as person_type,
    pg_temp.make_family() as family_owned,
    pg_temp.make_family() as family_unclaimed \gset

select pg_temp.make_person(:'family_owned', :'person_type') as person \gset

insert into public.contacts (person_id, phone, is_main_phone)
values
    (:'person', '+201000000001', true),
    (:'person', '+201000000002', false);

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values (:'family_unclaimed', :'person_type', '+201000000003', true);

select is(
    (select effective_family_id from public.resolved_contacts where phone = '+201000000001'),
    :'family_owned'::uuid,
    'a claimed contact resolves to the family of its person'
);

select is(
    (select effective_person_type_id from public.resolved_contacts where phone = '+201000000001'),
    :'person_type'::uuid,
    'a claimed contact resolves to the person type of its person'
);

select is(
    (select effective_family_id from public.resolved_contacts where phone = '+201000000003'),
    :'family_unclaimed'::uuid,
    'an unclaimed contact resolves to its own family'
);

select is(
    (select effective_person_type_id from public.resolved_contacts where phone = '+201000000003'),
    :'person_type'::uuid,
    'an unclaimed contact resolves to its own person type'
);

update public.persons set deleted_at = now() where id = :'person';

select is(
    (select effective_family_id from public.resolved_contacts where phone = '+201000000001'),
    null,
    'a contact of a soft-deleted person has no effective family'
);

update public.persons set deleted_at = null where id = :'person';

select is(
    (select phone from public.main_contacts where person_id = :'person'),
    '+201000000001',
    'main_contacts lists the main phone of a person'
);

select is(
    (select count(*) from public.main_contacts),
    1::bigint,
    'main_contacts leaves out non-main and unclaimed contacts'
);

select * from finish();
rollback;
