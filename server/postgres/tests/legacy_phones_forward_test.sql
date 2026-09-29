begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(14);

select * from pg_temp.make_household() \gset
select pg_temp.make_family() as other_family \gset

insert into public.contacts (person_id, phone, is_main_phone) values (:'mother', '+201000000001', true);

select is(
    (select main_phone from public.persons where id = :'mother'),
    '1000000001',
    'a main contact shows up as the main phone of its person'
);

insert into public.contacts (person_id, label, phone) values (:'mother', 'عمل', '+201000000002');
insert into public.contacts (person_id, phone) values (:'mother', '+442071234567');

select is(
    (select other_phones from public.persons where id = :'mother'),
    '{"عمل": "1000000002", "رقم الهاتف 1": "+442071234567"}'::jsonb,
    'a labelled contact keeps its label and an unlabelled one is numbered'
);

update public.contacts set phone = '+201000000003' where person_id = :'mother' and is_main_phone;

select is(
    (select main_phone from public.persons where id = :'mother'),
    '1000000003',
    'changing a main contact changes the main phone'
);

delete from public.contacts where person_id = :'mother' and label = 'عمل';

select is(
    (select other_phones from public.persons where id = :'mother'),
    '{"رقم الهاتف 1": "+442071234567"}'::jsonb,
    'removing a contact removes its entry'
);

delete from public.contacts where person_id = :'mother' and is_main_phone;

select is(
    (select main_phone from public.persons where id = :'mother'),
    null,
    'removing the main contact empties the main phone'
);

select is(
    (select other_phones from public.persons where id = :'child'),
    '{"رقم الهاتف (الأم)": "+442071234567"}'::jsonb,
    'the number of a family admin shows on a child under the admin label'
);

delete from public.contacts where person_id = :'mother';

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values (:'family', :'father_type', '+201000000004', true);

select is(
    (select other_phones from public.persons where id = :'sibling'),
    '{"رقم الهاتف (الأب)": "1000000004"}'::jsonb,
    'an unclaimed father number shows on every child of the family'
);

select is(
    (select other_phones ? 'رقم الهاتف (الأب)' from public.persons where id = :'mother'),
    false,
    'a family number does not show on a family admin'
);

select pg_temp.make_person(:'family', :'father_type') as father \gset

select is(
    (select other_phones from public.persons where id = :'child'),
    '{"رقم الهاتف (الأب)": "1000000004"}'::jsonb,
    'claiming the number onto the father leaves the children view unchanged'
);

select is(
    (select main_phone from public.persons where id = :'father'),
    '1000000004',
    'a claimed main number becomes the main phone of the father'
);

update public.contacts set phone = '+201000000005' where person_id = :'father';

select is(
    (select other_phones from public.persons where id = :'sibling'),
    '{"رقم الهاتف (الأب)": "1000000005"}'::jsonb,
    'changing the claimed number updates the children'
);

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values (:'other_family', :'father_type', '+201000000006', true);

update public.persons set family_id = :'other_family' where id = :'child';

select is(
    (select other_phones from public.persons where id = :'child'),
    '{"رقم الهاتف (الأب)": "1000000006"}'::jsonb,
    'a child moved to another family gets that family numbers'
);

select is(
    (select other_phones from public.persons where id = :'sibling'),
    '{"رقم الهاتف (الأب)": "1000000005"}'::jsonb,
    'the siblings left behind keep their family numbers'
);

update public.persons set deleted_at = now() where id = :'father';

select is(
    (select other_phones from public.persons where id = :'sibling'),
    '{}'::jsonb,
    'soft-deleting the father removes his number from the children'
);

select * from finish();
rollback;
