alter table public.addresses
add column if not exists house_number smallint;

update public.addresses
set
    house_number = case
        when leading_digits.digits::integer <= 32767
            then leading_digits.digits::smallint
    end
from (
    select
        id,
        translate(
            substring(house_code from '^[0-9٠-٩]+'),
            '٠١٢٣٤٥٦٧٨٩',
            '0123456789'
        ) as digits
    from public.addresses
    where house_code is not null
) as leading_digits
where public.addresses.id = leading_digits.id;

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

drop trigger if exists sync_house_code_with_legacy_house_number
on public.addresses;

create trigger sync_house_code_with_legacy_house_number
before insert or update of house_code, house_number on public.addresses
for each row
execute function public.sync_house_code_with_legacy_house_number();
