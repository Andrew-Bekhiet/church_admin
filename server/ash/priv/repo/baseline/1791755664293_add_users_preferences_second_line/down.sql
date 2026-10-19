do $$
begin
  if exists (select 1 from "public"."users_preferences" where "second_line_preferences" <> '{}'::jsonb) then
    raise exception 'Cannot roll back: % user(s) have saved second line preferences', (select count(*) from "public"."users_preferences" where "second_line_preferences" <> '{}'::jsonb);
  end if;
end $$;

alter table "public"."users_preferences"
    drop column if exists "second_line_preferences";
