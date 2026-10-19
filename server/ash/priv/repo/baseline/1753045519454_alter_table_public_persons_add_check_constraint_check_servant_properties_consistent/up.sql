alter table "public"."persons" add constraint "check_servant_properties_consistent" check (is_servant is true or (serving_church_id is null and coalesce(service_type, '') = ''));
