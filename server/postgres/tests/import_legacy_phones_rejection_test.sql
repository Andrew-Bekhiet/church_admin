begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(2);

select set_config('church_admin.skip_legacy_phones_sync', 'on', true);

select * from pg_temp.make_household() \gset

update public.persons set main_phone = '1000000001' where id = :'mother';
update public.persons set other_phones = '{"عمل": "call me", "بيت": "12"}' where id = :'child';

select throws_ok(
    'select public.import_legacy_phones()',
    '22023',
    'import_legacy_phones: 2 legacy phone value(s) do not convert to E.164',
    'a number that does not convert stops the import and reports how many'
);

select is(
    (select count(*) from public.contacts),
    0::bigint,
    'a rejected import leaves no contacts behind'
);

select * from finish();
rollback;
