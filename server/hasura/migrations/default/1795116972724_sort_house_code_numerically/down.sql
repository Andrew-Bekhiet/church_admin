drop trigger if exists sync_house_code_with_legacy_house_number
on public.addresses;

alter table public.addresses
alter column house_code type varchar(5)
collate pg_catalog."default";

create trigger sync_house_code_with_legacy_house_number
before insert or update of house_code, house_number on public.addresses
for each row
execute function public.sync_house_code_with_legacy_house_number();

drop collation if exists public.addresses_house_code_numeric_order;
