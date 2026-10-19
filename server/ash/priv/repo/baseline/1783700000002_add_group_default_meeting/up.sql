alter table "public"."groups" add column if not exists "default_meeting_id" uuid
null unique;

alter table "public"."groups"
drop constraint if exists "groups_default_meeting_id_fkey";

alter table "public"."groups"
add constraint "groups_default_meeting_id_fkey"
foreign key ("default_meeting_id")
references "history"."meetings"
("id") on update cascade on delete set null;

create or replace function "public"."check_group_default_meeting_belongs_to_group"()
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
      and group_id = new.id
    ) then
    raise exception 'Default meeting does not belong to group';
  end if;
  return new;
end;
$$ language plpgsql;

create constraint trigger "check_group_default_meeting_belongs_to_group"
after insert or update on "public"."groups"
for each row execute function "public"."check_group_default_meeting_belongs_to_group"();

create or replace function "history"."maybe_remove_group_archived_default_meeting"()
returns trigger as $$
begin
  if new.is_archived = true then
    update "public"."groups" set default_meeting_id = null where default_meeting_id = old.id;
  end if;
  return new;
end;
$$ language plpgsql;

create constraint trigger "maybe_remove_group_archived_default_meeting"
after update on "history"."meetings"
for each row execute function "history"."maybe_remove_group_archived_default_meeting"();
