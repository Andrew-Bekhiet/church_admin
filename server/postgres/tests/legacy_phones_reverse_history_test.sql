begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(6);

select * from pg_temp.make_household() \gset

delete from history.edit_history;

update public.persons set other_phones = '{"عمل": "01000000041"}' where id = :'child';

select is(
    (select count(*) from history.edit_history where record_id = :'child'),
    1::bigint,
    'an old client adding an own number records one edit on the child'
);

select is(
    (select count(*) from history.edit_history where record_id <> :'child'),
    0::bigint,
    'an old client adding an own number records no edit on the siblings or the family'
);

delete from history.edit_history;

update public.persons
set other_phones = other_phones || '{"رقم الهاتف (الأب)": "01000000042"}'
where id = :'child';

select is(
    (select count(*) from history.edit_history where "table" = 'families' and record_id = :'family'),
    1::bigint,
    'an old client adding a father number records one edit on the family'
);

select is(
    (select count(*) from history.edit_history where record_id in (:'child', :'sibling', :'mother')),
    0::bigint,
    'an old client adding a father number records no edit on the children'
);

select pg_temp.make_person(:'family', :'father_type') as father \gset

delete from history.edit_history;

update public.persons
set other_phones = other_phones || '{"رقم الهاتف (الأب)": "01000000043"}'
where id = :'child';

select is(
    (select count(*) from history.edit_history where record_id = :'father'),
    1::bigint,
    'an old client changing the number of a claimed father records one edit on the father'
);

select is(
    (select count(*) from history.edit_history where record_id <> :'father'),
    0::bigint,
    'an old client changing the number of a claimed father records no other edit'
);

select * from finish();
rollback;
