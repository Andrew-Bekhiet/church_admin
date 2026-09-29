begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(2);

select * from pg_temp.make_household() \gset

select set_config('church_admin.skip_legacy_phones_sync', 'on', true);

insert into public.contacts (person_id, phone, is_main_phone) values (:'mother', '+201000000001', true);

select is(
    (select main_phone from public.persons where id = :'mother'),
    null,
    'a contact written with the switch on does not reach the person'
);

select set_config('church_admin.skip_legacy_phones_sync', 'off', true);
insert into public.contacts (person_id, phone) values (:'mother', '+201000000003');

select is(
    (select main_phone from public.persons where id = :'mother'),
    '1000000001',
    'writes sync again once the switch is off'
);

select * from finish();
rollback;
