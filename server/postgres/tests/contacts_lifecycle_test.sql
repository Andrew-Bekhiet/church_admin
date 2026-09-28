begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/contacts.psql

select plan(4);

create temp table ctx as
select
    pg_temp.make_family() as family_id,
    pg_temp.make_person_type('father', true) as person_type_id,
    pg_temp.make_person() as person_id,
    pg_temp.make_person() as other_person_id;

select pg_temp.add_contact((select person_id from ctx), null, null, '+201001234567');
select pg_temp.add_contact((select other_person_id from ctx), null, null, '+201001234567');
select pg_temp.add_contact(null, (select family_id from ctx), (select person_type_id from ctx), '+201001234567');

delete from public.persons where id = (select person_id from ctx);

select is(
    (select count(*) from public.contacts where person_id = (select person_id from ctx)),
    0::bigint,
    'deleting a person deletes their contacts'
);

select is(
    (select count(*) from public.contacts where person_id = (select other_person_id from ctx)),
    1::bigint,
    'deleting a person keeps the contacts of other persons'
);

delete from public.families where id = (select family_id from ctx);

select is(
    (select count(*) from public.contacts where family_id = (select family_id from ctx)),
    0::bigint,
    'deleting a family deletes its unclaimed contacts'
);

update public.contacts set updated_at = now() - interval '1 day';
update public.contacts set label = 'home';

select is(
    (select count(*) from public.contacts where updated_at >= now()),
    (select count(*) from public.contacts),
    'updating a contact refreshes its updated_at'
);

select * from finish();
rollback;
