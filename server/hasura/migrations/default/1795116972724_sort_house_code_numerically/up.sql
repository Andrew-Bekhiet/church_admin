create collation if not exists public.addresses_house_code_numeric_order (
    provider = icu, locale = 'und-u-kn'
);

drop trigger if exists sync_house_code_with_legacy_house_number
on public.addresses;

alter table public.addresses
alter column house_code type varchar(5)
collate public.addresses_house_code_numeric_order;

create trigger sync_house_code_with_legacy_house_number
before insert or update of house_code, house_number on public.addresses
for each row
execute function public.sync_house_code_with_legacy_house_number();
