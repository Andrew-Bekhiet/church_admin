begin;
create extension if not exists pgtap;
\ir fixtures/base.psql

select plan(6);

select
    pg_temp.make_person_type('father', true) as person_type,
    pg_temp.make_person_type('mother', true) as other_type,
    pg_temp.make_family() as family_later,
    pg_temp.make_family() as family_moved,
    pg_temp.make_family() as family_retyped,
    pg_temp.make_family() as family_pair,
    pg_temp.make_family() as family_left,
    pg_temp.make_family() as family_elsewhere \gset

insert into public.contacts (family_id, person_type_id, phone)
values
    (:'family_later', :'person_type', '+201000000001'),
    (:'family_moved', :'person_type', '+201000000002'),
    (:'family_retyped', :'person_type', '+201000000003');

select pg_temp.make_person(:'family_later', :'person_type') as person_later \gset

select is(
    (select person_id from public.contacts where phone = '+201000000001'),
    :'person_later'::uuid,
    'inserting the only person of a family and type claims its unclaimed contacts'
);

select pg_temp.make_person(null, :'person_type') as person_moved \gset
update public.persons set family_id = :'family_moved' where id = :'person_moved';

select is(
    (select person_id from public.contacts where phone = '+201000000002'),
    :'person_moved'::uuid,
    'moving a person into a family claims that family''s unclaimed contacts'
);

select pg_temp.make_person(:'family_retyped', :'other_type') as person_retyped \gset
update public.persons set person_type_id = :'person_type' where id = :'person_retyped';

select is(
    (select person_id from public.contacts where phone = '+201000000003'),
    :'person_retyped'::uuid,
    'changing a person''s type claims the unclaimed contacts of the new type'
);

select pg_temp.make_person(:'family_pair', :'person_type') as pair_one \gset
select pg_temp.make_person(:'family_pair', :'person_type') as pair_two \gset

insert into public.contacts (family_id, person_type_id, phone)
values (:'family_pair', :'person_type', '+201000000004');

select is(
    (select family_id from public.contacts where phone = '+201000000004'),
    :'family_pair'::uuid,
    'contacts stay unclaimed while two persons share the family and type'
);

update public.persons set deleted_at = now() where id = :'pair_two';

select is(
    (select person_id from public.contacts where phone = '+201000000004'),
    :'pair_one'::uuid,
    'soft-deleting one of two duplicates lets the other claim'
);

select pg_temp.make_person(:'family_left', :'person_type') as left_one \gset
select pg_temp.make_person(:'family_left', :'person_type') as left_two \gset

insert into public.contacts (family_id, person_type_id, phone)
values (:'family_left', :'person_type', '+201000000005');

update public.persons set family_id = :'family_elsewhere' where id = :'left_two';

select is(
    (select person_id from public.contacts where phone = '+201000000005'),
    :'left_one'::uuid,
    'moving one of two duplicates out of the family lets the other claim'
);

select * from finish();
rollback;
