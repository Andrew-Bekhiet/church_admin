defmodule ChurchAdmin.Repo.Migrations.MoveFullAddressTextToAsh do
  use Ecto.Migration

  def up do
    execute("drop function public.address_full_address_text(public.addresses)")
  end

  def down do
    execute("""
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
    $$
    """)
  end
end
