defmodule ChurchAdmin.Places.Calculations.FullAddressText do
  @moduledoc """
  The address as one Arabic line: house code, street, side street, district,
  landmark, storey and apartment. Parts that are missing, or empty once the
  words "street" and "district" are stripped from the names, are left out.

  An expression, so it sorts and filters in SQL. The street and district
  names come from subselects rather than relationships: the line reads the
  same whatever streets the actor may read.

      calculate :full_address_text, :string, ChurchAdmin.Places.Calculations.FullAddressText,
        public?: true
  """

  use Ash.Resource.Calculation

  import Ash.Expr

  @impl true
  def expression(_opts, _context) do
    expr(
      fragment(
        """
        trim(concat_ws(' ',
          ?,
          'ش ' || nullif(trim(regexp_replace(
            (select s.name from public.streets s where s.id = ?), 'شارع|الشارع', '', 'g')), ''),
          'متفرع من ' || nullif(trim(regexp_replace(?, 'شارع|الشارع', '', 'g')), ''),
          'حي ' || nullif(trim(regexp_replace(
            (select d.name from public.districts d where d.id = ?), 'حي|الحي|حى|الحى', '', 'g')), ''),
          ?,
          case when ? = 0 then 'الدور الأرضي' else 'الدور ' || (?)::text end,
          'شقة ' || (?)::text
        ))
        """,
        house_code,
        street_id,
        substreet_name,
        district_id,
        special_landmark,
        storey_number,
        storey_number,
        apartment_number
      )
    )
  end
end
