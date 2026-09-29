begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(11);

select * from pg_temp.make_household() \gset
select pg_temp.make_person_type('أخ', false) as brother_type \gset

update public.persons
set other_phones = other_phones || '{"رقم الهاتف (اب)": "01000000021"}'
where id = :'child';

select results_eq(
    format('select phone from public.contacts where family_id = %L and person_type_id = %L', :'family', :'father_type'),
    array['+201000000021'],
    'a father number added under a differently spelled role key creates one family contact'
);

select is(
    (select other_phones ->> 'رقم الهاتف (الأب)' from public.persons where id = :'child'),
    '1000000021',
    'a number added under a differently spelled role key shows under the canonical key'
);

update public.persons
set other_phones = other_phones || '{"رقم الهاتف (أب)": "01000000022"}'
where id = :'child';

select results_eq(
    format('select phone from public.contacts where family_id = %L and person_type_id = %L', :'family', :'father_type'),
    array['+201000000022'],
    'a father number changed under a differently spelled role key replaces the family contact'
);

select set_config('church_admin.skip_legacy_phones_sync', 'on', true);
update public.persons
set other_phones = '{"رقم الهاتف (اب)": "1000000022"}'
where id = :'child';
select set_config('church_admin.skip_legacy_phones_sync', 'off', true);

update public.persons set other_phones = '{"رقم الهاتف (الأب)": "1000000022"}' where id = :'child';

select results_eq(
    format('select phone from public.contacts where family_id = %L and person_type_id = %L', :'family', :'father_type'),
    array['+201000000022'],
    'respelling a role key without changing the number keeps the family contact'
);

select set_config('church_admin.skip_legacy_phones_sync', 'on', true);
update public.persons
set other_phones = '{"رقم الهاتف (اب)": "1000000022"}'
where id = :'child';
select set_config('church_admin.skip_legacy_phones_sync', 'off', true);

update public.persons set other_phones = '{}' where id = :'child';

select is(
    (select count(*) from public.contacts where family_id = :'family'),
    0::bigint,
    'removing a differently spelled role key deletes the family contact'
);

select pg_temp.make_person(:'family', :'father_type') as father \gset

update public.persons
set other_phones = '{"رقم الهاتف (أب)": "01000000023"}'
where id = :'child';

select results_eq(
    format('select phone from public.contacts where person_id = %L', :'father'),
    array['+201000000023'],
    'a differently spelled role key reaches the father once a father exists'
);

select throws_ok(
    format($$update public.persons set other_phones = '{"رقم الهاتف (اب)": "12"}' where id = %L$$, :'child'),
    '22023',
    'contacts/invalid-phone',
    'an unconvertible number under a differently spelled role key is rejected'
);

update public.persons
set other_phones = '{"إضافي": "01000000031", "اضافي": "01000000032"}'
where id = :'sibling';

select is(
    (select count(*) from public.contacts where person_id = :'sibling'),
    2::bigint,
    'custom labels that differ only in spelling stay separate contacts'
);

select is(
    (select other_phones from public.persons where id = :'sibling'),
    '{"إضافي": "1000000031", "اضافي": "1000000032"}'::jsonb,
    'custom labels that differ only in spelling are both kept verbatim'
);

update public.persons
set other_phones = '{"رقم الهاتف (الأخ)": "01000000041"}'
where id = :'child';

select results_eq(
    format('select label, phone from public.contacts where person_id = %L', :'child'),
    $$values ('رقم الهاتف (الأخ)', '+201000000041')$$,
    'a role label of a type that is not a family admin stays a labelled number of the person'
);

select is(
    (select count(*) from public.contacts where person_type_id = :'brother_type'),
    0::bigint,
    'a role label of a type that is not a family admin creates no family contact'
);

select * from finish();
rollback;
