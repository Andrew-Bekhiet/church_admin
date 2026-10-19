do $$
begin
  if exists (
    select 1 from public.addresses
    where house_code is distinct from house_number::text
  ) then
    raise exception 'Cannot roll back: % address(es) have a house code that house_number cannot hold',
      (
        select count(*) from public.addresses
        where house_code is distinct from house_number::text
      );
  end if;
end $$;

create or replace function public.address_full_address_text(
    address public.addresses
)
returns text
language sql
stable
as $$
  with street as (
    select name
    from public.streets
    where id = address.street_id
    limit 1
  ),
  district as (
    select name
    from public.districts
    where id = address.district_id
    limit 1
  )
  select trim(
    concat_ws(' ',
      address.house_number::text,
      'ش ' || nullif(trim(regexp_replace((select name from street), 'شارع|الشارع', '', 'g')), ''),
      'متفرع من ' || nullif(trim(regexp_replace(address.substreet_name, 'شارع|الشارع', '', 'g')), ''),
      'حي ' || nullif(trim(regexp_replace((select name from district), 'حي|الحي|حى|الحى', '', 'g')), ''),
      address.special_landmark,
      'الدور ' || address.storey_number::text,
      'شقة ' || address.apartment_number::text
    )
  )
$$;

drop trigger if exists sync_house_code_with_legacy_house_number on public.addresses;

drop function if exists public.sync_house_code_with_legacy_house_number();

alter table public.addresses
drop column if exists house_code;
