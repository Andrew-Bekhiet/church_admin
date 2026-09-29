begin;
create extension if not exists pgtap;
\ir fixtures/base.psql
\ir fixtures/legacy_phones.psql

select plan(6);

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

select pg_temp.make_family() as role_family \gset
select pg_temp.make_person_type('جد', true) as grandfather_type \gset

insert into public.contacts (family_id, person_type_id, phone, created_at)
values
    (:'role_family', :'father_type', '+201000000011', now() - interval '2 days'),
    (:'role_family', :'father_type', '+201000000012', now() - interval '1 day'),
    (:'role_family', :'grandfather_type', '+201000000013', now() - interval '2 days');

insert into public.contacts (family_id, person_type_id, phone, is_main_phone, created_at)
values (:'role_family', :'grandfather_type', '+201000000014', true, now());

select is(
    (select aggregated_phones::jsonb -> 'أب' from public.families_admins_phones where family_id = :'role_family'),
    '"1000000011"'::jsonb,
    'a role without a main number is listed with its earliest number'
);

select is(
    (select aggregated_phones::jsonb -> 'جد' from public.families_admins_phones where family_id = :'role_family'),
    '"1000000014"'::jsonb,
    'a role with a main number is listed with that number even when others are older'
);

select * from finish();
rollback;
