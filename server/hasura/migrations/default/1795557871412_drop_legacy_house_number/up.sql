do $$
begin
  if exists (
    select 1 from public.addresses
    where house_number is not null and house_code is null
  ) then
    raise exception 'Cannot drop house_number: % address(es) hold a house number with no house code',
      (
        select count(*) from public.addresses
        where house_number is not null and house_code is null
      );
  end if;
end $$;

drop trigger if exists sync_house_code_with_legacy_house_number
on public.addresses;

drop function if exists public.sync_house_code_with_legacy_house_number();

alter table public.addresses
drop column if exists house_number;
