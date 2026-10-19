create schema if not exists deleted;

create or replace view deleted.areas as select * from areas where deleted_at is not null;
create or replace view deleted.classes as select * from classes where deleted_at is not null;
create or replace view deleted.groups as select * from groups where deleted_at is not null;
create or replace view deleted.families as select * from families where deleted_at is not null;
create or replace view deleted.services as select * from services where deleted_at is not null;
create or replace view deleted.streets as select * from streets where deleted_at is not null;
create or replace view deleted.stores as select * from stores where deleted_at is not null;
create or replace view deleted.persons as select * from persons where deleted_at is not null;
