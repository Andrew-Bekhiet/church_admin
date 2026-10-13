alter table "public"."users_preferences"
    add column if not exists "second_line_preferences" jsonb not null default '{}'::jsonb;
