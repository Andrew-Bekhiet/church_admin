alter table "public"."services" drop constraint if exists "services_default_meeting_id_fkey";
alter table "public"."services" drop column if exists "default_meeting_id";

drop function if exists "public"."check_service_default_meeting_belongs_to_service";
drop trigger if exists "check_service_default_meeting_belongs_to_service" on "public"."services";
