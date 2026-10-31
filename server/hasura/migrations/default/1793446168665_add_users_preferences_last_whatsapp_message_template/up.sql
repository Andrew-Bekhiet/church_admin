alter table "public"."users_preferences"
    add column if not exists "last_whatsapp_message_template" text;
