defmodule ChurchAdmin.Calculations.FullAddressTextTest do
  @moduledoc """
  Expected texts are the output of `address_full_address_text` over the same
  inputs, captured before the function was dropped.
  """

  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.{DataCase, Factory}
  alias ChurchAdmin.Places.{Address, District, Street}

  require Ash.Query

  @cases [
    {%{}, ""},
    {%{house_code: "12"}, "12"},
    {%{street: "شارع النيل"}, "ش النيل"},
    {%{street: "الشارع الكبير"}, "ش الكبير"},
    {%{street: "شارع"}, ""},
    {%{street: "   "}, ""},
    {%{substreet_name: "شارع الهرم"}, "متفرع من الهرم"},
    {%{substreet_name: "الشارع"}, ""},
    {%{district: "حي المعادي"}, "حي المعادي"},
    {%{district: "الحي الأول"}, "حي الأول"},
    {%{district: "الحى الثاني"}, "حي الثاني"},
    {%{district: "حى"}, ""},
    {%{special_landmark: "بجوار المترو"}, "بجوار المترو"},
    {%{storey_number: 0}, "الدور الأرضي"},
    {%{storey_number: 3}, "الدور 3"},
    {%{apartment_number: 5}, "شقة 5"},
    {%{storey_number: 0, apartment_number: 1}, "الدور الأرضي شقة 1"},
    {%{
       house_code: "7أ",
       street: "شارع الجمهورية",
       substreet_name: "شارع السلام",
       district: "حي الزمالك",
       special_landmark: "أمام الكنيسة",
       storey_number: 12,
       apartment_number: 34
     }, "7أ ش الجمهورية متفرع من السلام حي الزمالك أمام الكنيسة الدور 12 شقة 34"}
  ]

  setup do
    DataCase.set_system_db_session()
    :ok
  end

  defp insert_address!(spec) do
    street = spec[:street] && Ash.Seed.seed!(Street, %{name: spec.street})
    district = spec[:district] && Ash.Seed.seed!(District, %{name: spec.district})
    family = Factory.family!()

    attributes =
      spec
      |> Map.drop([:street, :district])
      |> Map.merge(%{
        family_id: family.id,
        street_id: street && street.id,
        district_id: district && district.id
      })

    Factory.address!(attributes)
  end

  test "the calculation reads as the SQL function did for every address" do
    for {spec, expected} <- @cases do
      address = insert_address!(spec)

      assert Ash.load!(address, :full_address_text, authorize?: false).full_address_text ==
               expected,
             "differs for #{inspect(spec)}"
    end
  end

  test "sorting by the calculation orders the texts as the database sorts text" do
    for {spec, _expected} <- @cases, do: insert_address!(spec)

    sorted_texts =
      Address
      |> Ash.Query.sort(:full_address_text)
      |> Ash.Query.load(:full_address_text)
      |> Ash.read!(authorize?: false, page: false)
      |> Enum.map(& &1.full_address_text)

    %{rows: rows} =
      Ecto.Adapters.SQL.query!(
        ChurchAdmin.Repo,
        "select t from unnest($1::text[]) as t order by t",
        [sorted_texts]
      )

    assert length(sorted_texts) == length(@cases)
    assert sorted_texts == Enum.map(rows, fn [text] -> text end)
  end

  test "filtering by the calculation finds the addresses whose line contains a word" do
    for {spec, _expected} <- @cases, do: insert_address!(spec)

    texts =
      Address
      |> Ash.Query.filter(ilike(full_address_text, "%الزمالك%"))
      |> Ash.Query.load(:full_address_text)
      |> Ash.read!(authorize?: false, page: false)
      |> Enum.map(& &1.full_address_text)

    assert texts == [
             "7أ ش الجمهورية متفرع من السلام حي الزمالك أمام الكنيسة الدور 12 شقة 34"
           ]
  end
end
