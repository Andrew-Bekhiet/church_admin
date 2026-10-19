defmodule ChurchAdmin.Dev.SeedGenerator.Ids do
  @moduledoc """
  Deterministic identifiers: every seeded row id is a UUIDv5 of `"<kind>:<key>"`
  under one fixed namespace, so regenerating yields the same ids and the
  services seed can hold the same ids as literals.
  """

  @namespace <<0x26, 0x6C, 0x0D, 0xE0, 0x00, 0x00, 0x50, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
               0x02, 0x66>>

  @seed_services ~w(edad_khodam gam3a gam3a_wa_khrigeen kg e3dady thanawy ebtedaey)a

  @spec uuid(String.t() | atom(), term()) :: String.t()
  def uuid(kind, key) do
    <<a::32, b::16, _::4, c::12, _::2, d::14, e::48, _::binary>> =
      :crypto.hash(:sha, @namespace <> "#{kind}:#{key}")

    format(<<a::32, b::16, 5::4, c::12, 2::2, d::14, e::48>>)
  end

  @spec seed_services() :: [atom()]
  def seed_services, do: @seed_services

  @spec seed_service(atom()) :: String.t()
  def seed_service(slug) when slug in @seed_services, do: uuid("seed_service", slug)

  @spec seed_meeting(atom()) :: String.t()
  def seed_meeting(slug) when slug in @seed_services, do: uuid("seed_meeting", slug)

  @spec seed_class(pos_integer()) :: String.t()
  def seed_class(position), do: uuid("seed_class", position)

  @spec auth_id(String.t()) :: String.t()
  def auth_id(user_key) do
    <<number::160>> = :crypto.hash(:sha, "auth_id:#{user_key}")

    number
    |> Integer.to_string(36)
    |> String.downcase()
    |> String.pad_leading(28, "0")
    |> binary_part(0, 28)
  end

  defp format(<<a::32, b::16, c::16, d::16, e::48>>) do
    [a, b, c, d, e]
    |> Enum.zip([8, 4, 4, 4, 12])
    |> Enum.map_join("-", fn {part, width} ->
      part |> Integer.to_string(16) |> String.pad_leading(width, "0") |> String.downcase()
    end)
  end
end
