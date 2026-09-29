begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(17);

select * from pg_temp.make_household() \gset

update public.persons set main_phone = '01000000001' where id = :'mother';

select is(
    (select phone from public.contacts where person_id = :'mother' and is_main_phone),
    '+201000000001',
    'an old client setting the main phone creates the main contact'
);

update public.persons set main_phone = '1000000002' where id = :'mother';

select results_eq(
    format('select phone from public.contacts where person_id = %L', :'mother'),
    array['+201000000002'],
    'an old client replacing the main phone replaces the main contact'
);

update public.persons set main_phone = null where id = :'mother';

select is(
    (select count(*) from public.contacts where person_id = :'mother'),
    0::bigint,
    'an old client emptying the main phone removes the main contact'
);

update public.persons set other_phones = '{"عمل": "01000000003"}' where id = :'mother';

select is(
    (select phone from public.contacts where person_id = :'mother' and label = 'عمل'),
    '+201000000003',
    'an old client adding a labelled phone creates a contact with that label'
);

update public.persons set other_phones = '{"عمل": "01000000004"}' where id = :'mother';

select results_eq(
    format('select label, phone from public.contacts where person_id = %L', :'mother'),
    $$values ('عمل', '+201000000004')$$,
    'an old client editing a labelled phone edits the same contact'
);

update public.persons set other_phones = '{}' where id = :'mother';

select is(
    (select count(*) from public.contacts where person_id = :'mother'),
    0::bigint,
    'an old client removing a labelled phone deletes the contact'
);

insert into public.contacts (person_id, phone) values (:'mother', '+442071234567');
update public.persons set other_phones = '{"رقم الهاتف 1": "+442071234568"}' where id = :'mother';

select results_eq(
    format('select label, phone from public.contacts where person_id = %L', :'mother'),
    $$values (null::text, '+442071234568')$$,
    'an old client editing a numbered phone edits the unlabelled contact'
);

update public.persons
set other_phones = other_phones || '{"رقم الهاتف (الأب)": "01000000005"}'
where id = :'child';

select results_eq(
    format('select phone from public.contacts where family_id = %L and person_type_id = %L', :'family', :'father_type'),
    array['+201000000005'],
    'an old client adding a father number to a child creates a family contact'
);

select is(
    (select other_phones ->> 'رقم الهاتف (الأب)' from public.persons where id = :'sibling'),
    '1000000005',
    'a father number added through one child shows on the siblings'
);

update public.persons
set other_phones = other_phones || '{"رقم الهاتف (الأب)": "01000000006"}'
where id = :'sibling';

select results_eq(
    format('select phone from public.contacts where family_id = %L and person_type_id = %L', :'family', :'father_type'),
    array['+201000000006'],
    'a child editing the father number edits the one family contact'
);

select is(
    (select other_phones ->> 'رقم الهاتف (الأب)' from public.persons where id = :'child'),
    '1000000006',
    'every sibling sees the father number a child edited'
);

select pg_temp.make_person(:'family', :'father_type') as father \gset
update public.persons
set other_phones = other_phones || '{"رقم الهاتف (الأب)": "01000000007"}'
where id = :'child';

select is(
    (select main_phone from public.persons where id = :'father'),
    '1000000007',
    'a child editing the father number after it was claimed edits the father main phone'
);

update public.persons set other_phones = other_phones - 'رقم الهاتف (الأب)' where id = :'child';

select is(
    (select count(*) from public.contacts where person_id = :'father'),
    0::bigint,
    'a child removing the father number deletes it'
);

select throws_ok(
    format('update public.persons set main_phone = %L where id = %L', 'abc', :'mother'),
    '22023',
    'contacts/invalid-phone',
    'a main phone that is not a phone number is rejected'
);

select throws_ok(
    format($$update public.persons set other_phones = '{"عمل": "12"}' where id = %L$$, :'mother'),
    '22023',
    'contacts/invalid-phone',
    'an other phone that is not a phone number is rejected'
);

insert into public.persons (name, family_id, person_type_id, main_phone, other_phones)
values ('new', :'family', :'child_type', '01000000008', '{"عمل": "01000000009"}')
returning id as created \gset

select results_eq(
    format('select phone from public.contacts where person_id = %L order by phone', :'created'),
    array['+201000000008', '+201000000009'],
    'a person inserted by an old client gets contacts for both columns'
);

select is(
    (select main_phone from public.persons where id = :'created'),
    '1000000008',
    'a person inserted by an old client keeps its main phone'
);

select * from finish();
rollback;
