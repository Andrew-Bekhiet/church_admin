do $$
begin
  if exists (select 1 from public.contacts) then
    raise exception 'Cannot roll back: % contact(s) remain', (select count(*) from public.contacts);
  end if;
end $$;

drop table if exists public.contacts;

drop domain if exists public.e164_phone_number;
