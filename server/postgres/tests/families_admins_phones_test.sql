begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(4);

select * from pg_temp.make_household() \gset
select pg_temp.make_family() as unclaimed_family \gset
select pg_temp.make_person(:'family', :'father_type') as father \gset

insert into public.contacts (person_id, phone, is_main_phone)
values (:'father', '+201000000001', true), (:'mother', '+442071234567', true), (:'child', '+201000000002', true);

insert into public.contacts (family_id, person_type_id, phone, is_main_phone)
values (:'unclaimed_family', :'father_type', '+201000000003', true);

select is(
    (select aggregated_phones::jsonb from public.families_admins_phones where family_id = :'family'),
    '{"أب": "1000000001", "أم": "+442071234567"}'::jsonb,
    'the family admin main numbers are listed by person type in legacy form'
);

select is(
    (select aggregated_phones::jsonb from public.families_admins_phones where family_id = :'unclaimed_family'),
    '{"أب": "1000000003"}'::jsonb,
    'an unclaimed admin number is listed for its family'
);

select is(
    (select count(*) from public.families_admins_phones where aggregated_phones::jsonb ? 'ابن'),
    0::bigint,
    'numbers of people who are not family admins are not listed'
);

update public.persons set deleted_at = now() where id = :'father';

select is(
    (select aggregated_phones::jsonb from public.families_admins_phones where family_id = :'family'),
    '{"أم": "+442071234567"}'::jsonb,
    'the number of a soft-deleted admin is no longer listed'
);

select * from finish();
rollback;
