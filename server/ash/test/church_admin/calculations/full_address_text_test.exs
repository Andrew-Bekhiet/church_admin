defmodule ChurchAdmin.Calculations.FullAddressTextTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.{DataCase, Factory}
  alias ChurchAdmin.Places.{Address, District, Street}

  require Ash.Query

  @cases [
    %{},
    %{house_code: "12"},
    %{street: "شارع النيل"},
    %{street: "الشارع الكبير"},
    %{street: "شارع"},
    %{street: "   "},
    %{substreet_name: "شارع الهرم"},
    %{substreet_name: "الشارع"},
    %{district: "حي المعادي"},
    %{district: "الحي الأول"},
    %{district: "الحى الثاني"},
    %{district: "حى"},
    %{special_landmark: "بجوار المترو"},
    %{storey_number: 0},
    %{storey_number: 3},
    %{apartment_number: 5},
    %{storey_number: 0, apartment_number: 1},
    %{
      house_code: "7أ",
      street: "شارع الجمهورية",
      substreet_name: "شارع السلام",
      district: "حي الزمالك",
      special_landmark: "أمام الكنيسة",
      storey_number: 12,
      apartment_number: 34
    }
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

  defp sql_text(%Address{id: id}) do
    %{rows: [[text]]} =
      Ecto.Adapters.SQL.query!(
        ChurchAdmin.Repo,
        "select public.address_full_address_text(a) from public.addresses a where a.id = $1",
        [Ecto.UUID.dump!(id)]
      )

    text
  end

  test "the calculation reproduces the SQL function for every address" do
    for spec <- @cases do
      address = insert_address!(spec)

      assert Ash.load!(address, :full_address_text, authorize?: false).full_address_text ==
               sql_text(address),
             "differs for #{inspect(spec)}"
    end
  end

  test "sorting by the calculation orders as the SQL function does" do
    addresses = for spec <- @cases, do: insert_address!(spec)

    %{rows: sql_order} =
      Ecto.Adapters.SQL.query!(
        ChurchAdmin.Repo,
        "select a.id from public.addresses a order by public.address_full_address_text(a), a.id"
      )

    ash_order =
      Address
      |> Ash.Query.sort(full_address_text: :asc, id: :asc)
      |> Ash.read!(authorize?: false, page: false)
      |> Enum.map(&Ecto.UUID.dump!(&1.id))

    assert length(addresses) == length(ash_order)
    assert ash_order == Enum.map(sql_order, fn [id] -> id end)
  end
end
