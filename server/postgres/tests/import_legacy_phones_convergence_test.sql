begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql
\ir fixtures/legacy_phones_convergence.psql

select plan(3);

select set_config('church_admin.skip_legacy_phones_sync', 'on', true);

select * from pg_temp.make_household() \gset
select pg_temp.make_person(:'family', :'father_type') as father \gset

update public.persons
set main_phone = '1000000001', other_phones = '{"عمل": "1000000002"}'
where id = :'father';
update public.persons set main_phone = '1000000003' where id = :'mother';
update public.persons
set other_phones = '{"رقم الهاتف (الأب)": "1000000001", "رقم الهاتف (الأم)": "1000000003", "مدرسة": "1000000004"}'
where id in (:'child', :'sibling');

select public.import_legacy_phones();
select set_config('church_admin.skip_legacy_phones_sync', 'off', true);

select ok(
    pg_temp.legacy_phones_converged(:'family'),
    'after the import the projection reproduces the original phone columns of the family'
);

select is(
    (select other_phones from public.persons where id = :'child'),
    '{"رقم الهاتف (الأب)": "1000000001", "رقم الهاتف (الأم)": "1000000003", "مدرسة": "1000000004"}'::jsonb,
    'a child still sees the family numbers and their own labelled number'
);

select is(
    (select other_phones from public.persons where id = :'father'),
    '{"عمل": "1000000002"}'::jsonb,
    'a family admin still sees only their own labelled numbers'
);

select * from finish();
rollback;
