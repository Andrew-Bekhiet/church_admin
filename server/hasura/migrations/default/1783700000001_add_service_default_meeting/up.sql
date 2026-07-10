alter table "public"."services" add column if not exists "default_meeting_id" uuid
null unique;

alter table "public"."services"
drop constraint if exists "services_default_meeting_id_fkey";

alter table "public"."services"
add constraint "services_default_meeting_id_fkey"
foreign key ("default_meeting_id")
references "history"."meetings"
("id") on update cascade on delete set null;

create or replace function "public"."check_service_default_meeting_belongs_to_service"()
returns trigger as $$
begin
  if new.default_meeting_id is null then
    return new;
  end if;

  if not exists (select 1 from history.meetings where id = new.default_meeting_id and is_archived = false) then
    raise exception 'Cannot set default meeting to archived meeting';
  end if;

  if not exists (
      select 1
      from history.meetings
      where id = new.default_meeting_id
      and service_id = new.id
    ) then
    raise exception 'Default meeting does not belong to service';
  end if;
  return new;
end;
$$ language plpgsql;

create constraint trigger "check_service_default_meeting_belongs_to_service"
after insert or update on "public"."services"
for each row execute function "public"."check_service_default_meeting_belongs_to_service"();
