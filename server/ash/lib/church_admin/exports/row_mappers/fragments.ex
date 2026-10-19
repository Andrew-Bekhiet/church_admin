defmodule ChurchAdmin.Exports.RowMappers.Fragments do
  @moduledoc """
  The column groups the table mappers compose. Each returns `{key, value}`
  pairs with the keys the sheets used before they are localized
  (`ChurchAdmin.Exports.RowMappers.Localization`): `name`, `lastEdit.time`,
  `address.area.id`.
  """

  @contact_label_prefix "رقم الهاتف"
  @egyptian_number ~r/\A\+20(\d{9,10})\z/
  @opaque_black 0xFF000000

  @type pairs :: [{String.t(), term()}]

  @spec viewable(map()) :: pairs()
  def viewable(record),
    do: [{"id", record.id}, {"name", record.name}, {"color", hex_color(record.color)}]

  @doc """
  The main phone, then every other phone under `otherPhones.<label>`; a phone
  without a label is numbered in creation order. Phones sharing a column are
  joined with a dash.
  """
  @spec contacts([map()]) :: pairs()
  def contacts(contacts) do
    sorted = Enum.sort_by(contacts, &microseconds(&1.created_at))
    main = Enum.find(sorted, & &1.is_main_phone)
    others = if main, do: List.delete(sorted, main), else: sorted

    {labelled, _unlabelled_count} =
      Enum.map_reduce(others, 0, fn contact, unlabelled_count ->
        case contact.label do
          nil ->
            {{"otherPhones.#{@contact_label_prefix} #{unlabelled_count + 1}", contact},
             unlabelled_count + 1}

          label ->
            {{"otherPhones.#{label}", contact}, unlabelled_count}
        end
      end)

    [{"mainPhone", main && national_phone(main.phone)} | join_phones(labelled)]
  end

  @doc """
  The phones of the family's other administrators, one column per family
  role, ordered by role, then main phone first, then creation time.
  """
  @spec family_admin_contacts([map()], String.t()) :: pairs()
  def family_admin_contacts(family_contacts, person_id) do
    family_contacts
    |> Enum.reject(&(&1.person_id == person_id))
    |> Enum.sort_by(&family_contact_order/1)
    |> Enum.map(&{"#{@contact_label_prefix} (#{&1.person_type.name})", &1})
    |> join_phones()
  end

  @spec address(map() | nil) :: pairs()
  def address(address) do
    [
      {"address.area.name", name_or_blank(address, :area)},
      {"address.area.id", id_or_blank(address, :area)},
      {"address.houseCode", field(address, :house_code)},
      {"address.street.name", name_or_blank(address, :street)},
      {"address.street.id", id_or_blank(address, :street)},
      {"address.substreetName", field(address, :substreet_name)},
      {"address.district.name", name_or_blank(address, :district)},
      {"address.district.id", id_or_blank(address, :district)},
      {"address.specialLandmark", field(address, :special_landmark) || ""},
      {"address.storeyNumber", field(address, :storey_number)},
      {"address.apartmentNumber", field(address, :apartment_number)},
      {"address.geolocation", address |> field(:geolocation) |> latitude_longitude()}
    ]
  end

  @doc "Who made the latest change of kind `field` and when (`latest` is a history `Latest*` row)."
  @spec audit_log(String.t(), map() | nil) :: pairs()
  def audit_log(field, latest) do
    user = field(latest, :user)

    [
      {"#{field}.name", field(user, :name)},
      {"#{field}.time", latest |> field(:time) |> postgres_timestamptz_text()},
      {"#{field}.uid", field(user, :uid)}
    ]
  end

  @spec object_ref(String.t(), map() | nil) :: pairs()
  def object_ref(field, object),
    do: [{"#{field}.name", field(object, :name)}, {"#{field}.id", field(object, :id)}]

  @spec list_names_and_ids(String.t(), [map()]) :: pairs()
  def list_names_and_ids(field, items) do
    sorted = Enum.sort_by(items, &{&1.name, &1.id})

    [
      {field, Enum.map_join(sorted, ",", & &1.name)},
      {"#{field}.id", Enum.map_join(sorted, ",", & &1.id)}
    ]
  end

  @spec study_year(String.t(), map() | nil) :: pairs()
  def study_year(field, study_year),
    do: object_ref(field, study_year) ++ [{"#{field}.order", field(study_year, :order)}]

  @spec person_type(map() | nil) :: pairs()
  def person_type(person_type),
    do:
      object_ref("personType", person_type) ++ [{"personType.order", field(person_type, :order)}]

  @spec gender(boolean() | nil) :: pairs()
  def gender(true), do: [{"gender", "M"}]
  def gender(false), do: [{"gender", "F"}]
  def gender(_unknown), do: [{"gender", "U"}]

  @spec raw(String.t(), term()) :: pairs()
  def raw(field, value), do: [{field, value}]

  @doc "A date as `YYYY-MM-DD`; any other value is left alone."
  @spec date_text(Date.t() | term()) :: String.t() | term()
  def date_text(%Date{} = date), do: Date.to_iso8601(date)
  def date_text(other), do: other

  @doc "`MM-DD` of a date."
  @spec month_and_day(Date.t() | nil) :: String.t() | nil
  def month_and_day(%Date{} = date), do: Calendar.strftime(date, "%m-%d")
  def month_and_day(nil), do: nil

  defp hex_color(color) when is_integer(color) and color not in [0, @opaque_black] do
    hex = color |> Integer.to_string(16) |> String.downcase() |> String.pad_leading(8, "0")
    "#" <> String.slice(hex, 2..-1//1)
  end

  defp hex_color(_no_color), do: nil

  defp join_phones(columns_and_contacts) do
    Enum.reduce(columns_and_contacts, [], fn {column, contact}, columns ->
      phone = national_phone(contact.phone)

      case List.keyfind(columns, column, 0) do
        nil ->
          columns ++ [{column, phone}]

        {^column, existing} ->
          List.keyreplace(columns, column, 0, {column, "#{existing} - #{phone}"})
      end
    end)
  end

  defp national_phone(e164) do
    case Regex.run(@egyptian_number, e164) do
      [_, national] -> "0" <> national
      nil -> e164
    end
  end

  defp family_contact_order(contact) do
    {contact.person_type.order, contact.person_type.name,
     if(contact.is_main_phone, do: 0, else: 1), microseconds(contact.created_at)}
  end

  defp microseconds(datetime), do: DateTime.to_unix(datetime, :microsecond)

  defp name_or_blank(parent, relationship), do: field(field(parent, relationship), :name) || ""

  defp id_or_blank(parent, relationship), do: field(field(parent, relationship), :id) || ""

  defp field(nil, _key), do: nil
  defp field(map, key), do: Map.get(map, key)

  defp latitude_longitude(%{"coordinates" => [longitude, latitude | _]}),
    do: "#{number_text(latitude)},#{number_text(longitude)}"

  defp latitude_longitude(_no_point), do: nil

  defp number_text(number) when is_float(number) and number == trunc(number),
    do: number |> trunc() |> Integer.to_string()

  defp number_text(number), do: to_string(number)

  defp postgres_timestamptz_text(nil), do: nil

  defp postgres_timestamptz_text(%DateTime{} = time) do
    utc = DateTime.shift_zone!(time, "Etc/UTC")
    {microsecond, _precision} = utc.microsecond

    fraction =
      microsecond
      |> Integer.to_string()
      |> String.pad_leading(6, "0")
      |> String.trim_trailing("0")

    seconds = Calendar.strftime(utc, "%Y-%m-%dT%H:%M:%S")

    seconds <> if(fraction == "", do: "", else: "." <> fraction) <> "+00:00"
  end
end
