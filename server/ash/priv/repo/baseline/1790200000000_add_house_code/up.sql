alter table public.addresses
add column if not exists house_code varchar(5);

update public.addresses
set house_code = house_number::text
where house_number is not null and house_code is null;

-- Temporary bridge for app versions that only know house_number; drop it
-- together with house_number once they are retired.
create or replace function public.sync_house_code_with_legacy_house_number()
returns trigger
language plpgsql
as $$
declare
  leading_digits text;
begin
  if tg_op = 'UPDATE' and new.house_code is not distinct from old.house_code then
    if new.house_number is distinct from old.house_number then
      new.house_code := new.house_number::text;
    end if;

    return new;
  end if;

  if tg_op = 'INSERT' and new.house_code is null then
    new.house_code := new.house_number::text;

    return new;
  end if;

  leading_digits := translate(
    substring(new.house_code from '^[0-9٠-٩]+'),
    '٠١٢٣٤٥٦٧٨٩',
    '0123456789'
  );
  new.house_number := case
    when leading_digits::integer <= 32767 then leading_digits::smallint
  end;

  return new;
end
$$;

drop trigger if exists sync_house_code_with_legacy_house_number on public.addresses;

create trigger sync_house_code_with_legacy_house_number
before insert or update of house_code, house_number on public.addresses
for each row
execute function public.sync_house_code_with_legacy_house_number();

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
      address.house_code,
      'ش ' || nullif(trim(regexp_replace((select name from street), 'شارع|الشارع', '', 'g')), ''),
      'متفرع من ' || nullif(trim(regexp_replace(address.substreet_name, 'شارع|الشارع', '', 'g')), ''),
      'حي ' || nullif(trim(regexp_replace((select name from district), 'حي|الحي|حى|الحى', '', 'g')), ''),
      address.special_landmark,
      case
        when address.storey_number = 0 then 'الدور الأرضي'
        else 'الدور ' || address.storey_number::text
      end,
      'شقة ' || address.apartment_number::text
    )
  )
$$;
