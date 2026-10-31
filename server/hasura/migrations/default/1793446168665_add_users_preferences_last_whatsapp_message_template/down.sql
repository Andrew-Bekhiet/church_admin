do $$
begin
  if exists (select 1 from "public"."users_preferences" where "last_whatsapp_message_template" is not null) then
    raise exception 'Cannot roll back: % user(s) have a saved WhatsApp message template', (select count(*) from "public"."users_preferences" where "last_whatsapp_message_template" is not null);
  end if;
end $$;

alter table "public"."users_preferences"
drop column if exists "last_whatsapp_message_template";
