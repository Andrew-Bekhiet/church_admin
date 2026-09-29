begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql
\ir fixtures/legacy_phones_convergence.psql

select plan(18);

select set_config('church_admin.skip_legacy_phones_sync', 'on', true);

select * from pg_temp.make_household() \gset
select
    pg_temp.make_person(:'family', :'father_type') as father,
    pg_temp.make_family() as family_no_father,
    pg_temp.make_family() as family_two_fathers,
    pg_temp.make_person(null, :'child_type') as loner \gset
select
    pg_temp.make_person(:'family_no_father', :'child_type') as orphan,
    pg_temp.make_person(:'family_two_fathers', :'father_type'),
    pg_temp.make_person(:'family_two_fathers', :'father_type'),
    pg_temp.make_person(:'family_two_fathers', :'child_type') as child_two_fathers \gset

update public.persons
set main_phone = '1000000001', other_phones = '{"عمل": "01000000002", "نسخة": "1000000001"}'
where id = :'mother';
update public.persons
set other_phones = '{"رقم الهاتف (الأب)": "1000000003", "مدرسة": "+442071234567"}'
where id in (:'child', :'sibling');
update public.persons set other_phones = '{"رقم الهاتف (الأب)": "1000000004"}' where id = :'orphan';
update public.persons set other_phones = '{"رقم الهاتف (الأب)": "1000000005"}' where id = :'child_two_fathers';
update public.persons set other_phones = '{"رقم الهاتف (الأب)": "1000000006"}' where id = :'loner';

select pg_temp.edit_count(:'mother') as mother_edits, pg_temp.edit_count(:'child') as child_edits \gset
select main_phone as mother_main from public.persons where id = :'mother' \gset

select public.import_legacy_phones();

select is(
    (select phone from public.contacts where person_id = :'mother' and is_main_phone),
    '+201000000001',
    'a main phone becomes the main contact of its person'
);

select results_eq(
    format($$select phone, is_main_phone from public.contacts where person_id = %L and label = 'عمل'$$, :'mother'),
    $$values ('+201000000002', false)$$,
    'a labelled phone becomes a contact of its person under that label, converted to E.164'
);

select is(
    (select phone from public.contacts where person_id = :'child' and label = 'مدرسة'),
    '+442071234567',
    'a non-Egyptian number is kept as it is'
);

select is(
    (select count(*) from public.contacts where person_id = :'mother' and phone = '+201000000001'),
    1::bigint,
    'a number repeated under another label is imported once'
);

select is(
    (select count(*) from public.contacts where person_id = :'mother' and label is not null and phone = '+201000000001'),
    0::bigint,
    'the main contact wins over the repeated labelled entry'
);

select results_eq(
    format('select phone, is_main_phone from public.contacts where person_id = %L', :'father'),
    $$values ('+201000000003', true)$$,
    'a role label imports onto the only family member of that type'
);

select is(
    (select count(*) from public.contacts where phone = '+201000000003'),
    1::bigint,
    'a role number copied onto several children is imported once'
);

select results_eq(
    format('select phone from public.contacts where family_id = %L and person_type_id = %L', :'family_no_father', :'father_type'),
    array['+201000000004'],
    'a role label with no member of that type stays unclaimed on the family'
);

select results_eq(
    format('select phone from public.contacts where family_id = %L and person_type_id = %L', :'family_two_fathers', :'father_type'),
    array['+201000000005'],
    'a role label with several members of that type stays unclaimed on the family'
);

select results_eq(
    format('select label, phone from public.contacts where person_id = %L', :'loner'),
    $$values ('رقم الهاتف (الأب)', '+201000000006')$$,
    'a role label on a person without a family stays their own labelled number'
);

select is(
    (select count(*) from public.contacts where phone = '+201000000006'),
    1::bigint,
    'a role label on a person without a family does not reach any family'
);

select is(
    (select main_phone from public.persons where id = :'mother'),
    :'mother_main',
    'importing leaves the person columns as they were'
);

select is(
    (pg_temp.edit_count(:'mother'), pg_temp.edit_count(:'child'))::text,
    (:'mother_edits'::bigint, :'child_edits'::bigint)::text,
    'importing writes no edit history for any person'
);

select md5(string_agg(id::text || phone || is_main_phone::text, ',' order by id)) as snapshot from public.contacts \gset
select public.import_legacy_phones();

select is(
    (select md5(string_agg(id::text || phone || is_main_phone::text, ',' order by id)) from public.contacts),
    :'snapshot',
    'running the import twice changes nothing'
);

select pg_temp.make_person(:'family_no_father', :'father_type') as late_father \gset
select public.import_legacy_phones();

select is(
    (select count(*) from public.contacts where phone = '+201000000004'),
    1::bigint,
    'running again after the family gained the member does not duplicate the number'
);

select pg_temp.make_person_type('أخ', false) as brother_type \gset
select pg_temp.make_person(:'family', :'brother_type') as brother \gset
update public.persons
set other_phones = '{"رقم الهاتف (الأخ)": "01000000051", "إضافي": "01000000052", "اضافي": "01000000053"}'
where id = :'brother';
select public.import_legacy_phones();

select results_eq(
    format($$select phone from public.contacts where person_id = %L and label = 'رقم الهاتف (الأخ)'$$, :'brother'),
    array['+201000000051'],
    'a role label of a type that is not a family admin is imported as a labelled number of the person'
);

select is(
    (select count(*) from public.contacts where family_id = :'family' and person_type_id = :'brother_type'),
    0::bigint,
    'a role label of a type that is not a family admin creates no family contact'
);

select results_eq(
    format($$select label from public.contacts where person_id = %L and phone in ('+201000000052', '+201000000053') order by phone$$, :'brother'),
    array['إضافي', 'اضافي'],
    'custom labels that differ only in spelling are imported as separate contacts with their labels kept'
);

select * from finish();
rollback;
