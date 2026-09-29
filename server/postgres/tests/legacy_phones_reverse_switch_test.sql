begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(2);

select * from pg_temp.make_household() \gset

select set_config('church_admin.skip_legacy_phones_sync', 'on', true);

update public.persons set main_phone = '01000000002' where id = :'child';

select is(
    (select count(*) from public.contacts where person_id = :'child'),
    0::bigint,
    'a phone written to a person with the switch on does not reach the contacts'
);

select set_config('church_admin.skip_legacy_phones_sync', 'off', true);
update public.persons set main_phone = '01000000003' where id = :'child';

select is(
    (select phone from public.contacts where person_id = :'child' and is_main_phone),
    '+201000000003',
    'phones written to a person reach the contacts again once the switch is off'
);

select * from finish();
rollback;
