alter table "public"."groups" drop constraint if exists "groups_default_meeting_id_fkey";
alter table "public"."groups" drop column if exists "default_meeting_id";

drop trigger if exists "check_group_default_meeting_belongs_to_group" on "public"."groups";
drop function if exists "public"."check_group_default_meeting_belongs_to_group";

drop trigger if exists "maybe_remove_group_archived_default_meeting" on "history"."meetings";
drop function if exists "history"."maybe_remove_group_archived_default_meeting";
