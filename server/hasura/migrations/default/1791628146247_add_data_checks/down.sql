do $$
begin
  if exists (select 1 from public.data_check_overrides) then
    raise exception 'Cannot roll back: % data check override(s) remain', (select count(*) from public.data_check_overrides);
  end if;
end $$;

drop view if exists public.data_checks;
drop table if exists public.data_check_overrides;
