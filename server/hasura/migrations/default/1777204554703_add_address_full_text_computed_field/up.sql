CREATE OR REPLACE FUNCTION public.address_full_address_text(address public.addresses)
RETURNS text
LANGUAGE sql
STABLE
AS $$
  WITH street AS (
    SELECT name
    FROM public.streets
    WHERE id = address.street_id
    LIMIT 1
  ),
  district AS (
    SELECT name
    FROM public.districts
    WHERE id = address.district_id
    LIMIT 1
  )
  SELECT trim(
    concat_ws(' ',
      address.house_number::text,
      'ش ' || trim(regexp_replace((select name from street), 'شارع|الشارع', '', 'g')),
      'متفرع من ' || trim(regexp_replace(address.substreet_name, 'شارع|الشارع', '', 'g')),
      'حي ' || trim(regexp_replace((select name from district), 'حي|الحي|حى|الحى', '', 'g')),
      address.special_landmark,
      'الدور ' || address.storey_number::text,
      'شقة ' || address.apartment_number::text
    )
  )
$$;
