begin;
create extension if not exists pgtap;
\ir fixtures/base.psql

select plan(2);

select
    pg_temp.make_family() as family,
    pg_temp.make_person_type('member') as person_type \gset

select pg_temp.make_person(:'family', :'person_type', 'roster member') as member \gset

insert into public.services (name) values ('roster service') returning id as service \gset

insert into public.groups (name, service_id) values ('roster group', :'service') returning id as "group" \gset

insert into public.persons_groups (person_id, group_id) values (:'member', :'group');

insert into history.meetings (name, group_id) values ('roster meeting', :'group') returning id as meeting \gset

select is(
    (select name from history.meeting_roster where meeting_id = :'meeting' and person_id = :'member'),
    'roster member',
    'a group member appears on the roster of the group meeting'
);

update public.persons set deleted_at = now() where id = :'member';

select is(
    (select count(*) from history.meeting_roster where meeting_id = :'meeting'),
    0::bigint,
    'a deleted person leaves the roster'
);

select * from finish();
rollback;
