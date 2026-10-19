defmodule ChurchAdmin.Dev.SeedGenerator.Families do
  @moduledoc """
  Families, their addresses and the stores. Each family carries the member plan
  `People` turns into persons, and the data-check failure (if any) it is built
  to exhibit, so how many families fail which check is decided here.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Clock, Ids, Names, Places, Rng}

  @deleted_offset 5
  @other_failures ~w(no_family_admin no_non_admin_member empty_landmark long_landmark full_address_landmark)a
  @landmarks [
    "بجوار صيدلية السلام",
    "أمام مدرسة النصر",
    "خلف الكنيسة",
    "بجوار مخبز الأمل",
    "أمام سوبر ماركت العائلة",
    "بجوار محطة الوقود",
    "قرب ورشة الأخشاب",
    "أمام حديقة الأطفال"
  ]
  @long_landmark "بجوار الصيدلية القديمة التي تقع أمام مدرسة الراهبات وخلف الكنيسة الكبيرة"
  @full_address_landmark "شارع النصر عمارة ٥ الدور الثالث"

  @type family :: %{
          id: String.t(),
          index: non_neg_integer(),
          area_index: non_neg_integer(),
          live?: boolean(),
          failure: atom() | nil,
          status: String.t(),
          last_name: String.t(),
          father_first_name: String.t(),
          members: [atom()],
          row: map()
        }

  @spec build(map(), Places.result(), %{churches: [map()]}, String.t()) :: %{
          families: [family()],
          stores: [map()],
          addresses: [map()]
        }
  def build(spec, places, lookups, deleted_by) do
    deleted = deleted_indexes(spec)
    failures = failures(spec, deleted)

    families =
      Enum.map(0..(spec.families - 1), fn index ->
        family(
          index,
          spec,
          MapSet.member?(deleted, index),
          Map.get(failures, index),
          lookups,
          deleted_by
        )
      end)

    stores = stores(spec, families, deleted_by)
    family_addresses = family_addresses(families, places, spec)
    store_addresses = store_addresses(stores, places, spec)

    %{families: families, stores: stores, addresses: family_addresses ++ store_addresses}
  end

  defp deleted_indexes(spec) do
    step = div(spec.families, spec.soft_deleted_families)
    MapSet.new(0..(spec.soft_deleted_families - 1), &(@deleted_offset + &1 * step))
  end

  defp failures(spec, deleted) do
    failing_indexes =
      0..(spec.families - 1)
      |> Enum.reject(&MapSet.member?(deleted, &1))
      |> Enum.with_index()
      |> Enum.filter(fn {_family, position} -> rem(position, 10) == 9 end)
      |> Enum.map(&elem(&1, 0))

    {no_address, others} = Enum.split(failing_indexes, spec.families_without_address)

    others_with_kind =
      others
      |> Enum.with_index()
      |> Enum.map(fn {family, position} ->
        {family, Enum.at(@other_failures, rem(position, length(@other_failures)))}
      end)

    Map.new(Enum.map(no_address, &{&1, :no_address}) ++ others_with_kind)
  end

  defp family(index, spec, deleted?, failure, lookups, deleted_by) do
    status = status(failure)
    last_name = Names.last(index)

    %{
      id: Ids.uuid("family", index),
      index: index,
      area_index: rem(index, spec.areas),
      live?: not deleted?,
      failure: failure,
      status: status,
      last_name: last_name,
      father_first_name: Names.male(index * 5 + 2),
      members: members(status, failure),
      row: %{
        id: Ids.uuid("family", index),
        name: "عائلة #{last_name}",
        notes: if(rem(index, 9) == 0, do: "تحتاج متابعة دورية"),
        status: status,
        deceased_spouse_name: deceased_spouse_name(status, index),
        marriage_date:
          if(rem(index, 7) != 0, do: Date.add(~D[1995-01-01], rem(index * 97, 7300))),
        church_id: Enum.at(lookups.churches, rem(index, length(lookups.churches))).id,
        deleted_at: if(deleted?, do: Clock.hours_ago(index)),
        deleted_by: if(deleted?, do: deleted_by)
      }
    }
  end

  defp status(:no_non_admin_member),
    do: Rng.weighted([{"married", 60}, {"widowed", 25}, {"widowedWithoutChildren", 15}])

  defp status(_failure),
    do: Rng.weighted([{"married", 80}, {"separated", 5}, {"divorced", 5}, {"widowed", 10}])

  defp deceased_spouse_name(status, index) when status in ["widowed", "widowedWithoutChildren"],
    do: if(rem(index, 2) == 0, do: Names.user_person_name(rem(index, 4) == 0, index + 11))

  defp deceased_spouse_name(_status, _index), do: nil

  defp members(status, failure) do
    parents = parents(status)
    children = Enum.map(1..(1 + extra_children()), fn _ -> Rng.pick([:son, :daughter]) end)
    grandparent = if Rng.chance?(0.07), do: [Rng.pick([:grandfather, :grandmother])], else: []

    case failure do
      :no_family_admin -> Enum.take(children, 3)
      :no_non_admin_member -> parents
      _ -> parents ++ children ++ grandparent
    end
  end

  defp parents(status) when status in ["married", "separated"], do: [:father, :mother]
  defp parents("divorced"), do: [Rng.weighted([{:mother, 80}, {:father, 20}])]
  defp parents(_widowed), do: [Rng.weighted([{:mother, 75}, {:father, 25}])]

  defp extra_children, do: Rng.weighted([{0, 45}, {1, 35}, {2, 15}, {3, 5}])

  defp stores(spec, families, deleted_by) do
    admin_families =
      families |> Enum.filter(&(&1.live? and is_nil(&1.failure))) |> Enum.map(& &1.id)

    Enum.map(0..(spec.stores - 1), fn index ->
      address_only? = index < spec.address_only_stores
      deleted? = index == spec.stores - 1

      %{
        id: Ids.uuid("store", index),
        index: index,
        address_only?: address_only?,
        area_index: rem(index * 5 + 1, spec.areas),
        row: %{
          id: Ids.uuid("store", index),
          name: "#{Rng.pick(~w(مكتبة مخبز بقالة صيدلية ورشة))} #{Names.male(index * 7)}",
          admin_family:
            if(not address_only?,
              do: Enum.at(admin_families, rem(index * 13, length(admin_families)))
            ),
          deleted_at: if(deleted?, do: Clock.days_ago(index)),
          deleted_by: if(deleted?, do: deleted_by)
        }
      }
    end)
  end

  defp family_addresses(families, places, spec) do
    families
    |> Enum.reject(&(&1.failure == :no_address))
    |> Enum.map(fn family ->
      address(
        Ids.uuid("address", "family:#{family.index}"),
        family.index,
        family.area_index,
        places,
        spec
      )
      |> Map.merge(%{family_id: family.id, special_landmark: landmark(family)})
    end)
  end

  defp store_addresses(stores, places, spec) do
    stores
    |> Enum.filter(& &1.address_only?)
    |> Enum.map(fn store ->
      address(
        Ids.uuid("address", "store:#{store.index}"),
        store.index + 10_000,
        store.area_index,
        places,
        spec
      )
      |> Map.merge(%{store_id: store.id, special_landmark: Rng.pick(@landmarks)})
    end)
  end

  defp address(id, salt, area_index, places, spec) do
    street =
      places.streets_by_area
      |> Map.fetch!(area_index)
      |> then(&Enum.at(&1, rem(salt, length(&1))))

    %{
      id: id,
      district_id: Enum.at(places.districts, rem(area_index, length(places.districts))).id,
      area_id: Enum.at(places.areas, area_index).id,
      street_id: street.id,
      geolocation: Places.point_in_area(area_index, spec.grid_columns, salt),
      storey_number: Rng.int(0, 8),
      apartment_number: Rng.int(1, 30),
      house_code: house_code(salt)
    }
  end

  defp house_code(salt) do
    number = Integer.to_string(1 + rem(salt * 17, 299))
    if rem(salt, 10) == 0, do: arabic_indic(number), else: number
  end

  defp arabic_indic(digits) do
    String.replace(digits, ~r/\d/, fn digit -> <<0x0660 + String.to_integer(digit)::utf8>> end)
  end

  defp landmark(%{failure: :empty_landmark}), do: nil
  defp landmark(%{failure: :long_landmark}), do: @long_landmark
  defp landmark(%{failure: :full_address_landmark}), do: @full_address_landmark
  defp landmark(%{index: index}), do: Enum.at(@landmarks, rem(index, length(@landmarks)))
end
