begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql
\ir fixtures/legacy_phones_convergence.psql

select plan(7);

select * from pg_temp.make_household() \gset
select pg_temp.make_family() as other_family \gset
select pg_temp.make_person(:'family', :'father_type') as father \gset

insert into public.contacts (person_id, phone, is_main_phone) values (:'father', '+201000000001', true);
update public.persons set other_phones = '{"رقم الهاتف (الأب)": "01000000002"}' where id = :'child';
update public.persons set main_phone = '01000000003' where id = :'mother';

select ok(pg_temp.legacy_phones_converged(:'family'), 'the family converges after contact and old client writes');

update public.persons set family_id = :'other_family' where id = :'sibling';
update public.persons set person_type_id = :'child_type' where id = :'father';

select ok(pg_temp.legacy_phones_converged(:'family'), 'the old family converges after a member changes type');
select ok(pg_temp.legacy_phones_converged(:'other_family'), 'the new family converges after a member joins');

select pg_temp.edit_count(:'child') as before_count \gset
update public.contacts set phone = phone where person_id = :'mother';

select is(
    pg_temp.edit_count(:'child'),
    :'before_count'::bigint,
    'a contact update that changes nothing writes to no person'
);

insert into public.contacts (person_id, phone, is_main_phone) values (:'sibling', '+201000000004', true);

select is(
    pg_temp.edit_count(:'child'),
    :'before_count'::bigint,
    'a contact of another family leaves the persons of this family untouched'
);

select pg_temp.edit_count(:'mother') as mother_count \gset
update public.persons set main_phone = main_phone where id = :'mother';

select is(
    pg_temp.edit_count(:'mother'),
    :'mother_count'::bigint + 1,
    'an old client write that matches the contacts writes the person only once'
);

update public.persons set main_phone = '01000000005' where id = :'mother';

select is(
    (select main_phone from public.persons where id = :'mother'),
    '1000000005',
    'an old client writing a trunk-zero number ends up with the stored legacy form'
);

select * from finish();
rollback;
