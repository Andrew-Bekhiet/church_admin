defmodule ChurchAdmin.Accounts.InvitationCode do
  @moduledoc """
  Invitation codes: 12 characters from `0-9A-Z`, shown as `XXXX-XXXX-XXXX`
  (the `invitations_code_format` check). People type them back with or
  without dashes, in any case.
  """

  @alphabet ~c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  @length 12

  @spec generate() :: String.t()
  def generate do
    @length
    |> :crypto.strong_rand_bytes()
    |> :binary.bin_to_list()
    |> Enum.map(&Enum.at(@alphabet, rem(&1, length(@alphabet))))
    |> to_string()
    |> format()
  end

  @spec normalize(String.t()) :: {:ok, String.t()} | :error
  def normalize(typed) when is_binary(typed) do
    trimmed = String.trim(typed)

    if trimmed =~ ~r/^[A-Za-z0-9]{4}-[A-Za-z0-9]{4}-[A-Za-z0-9]{4}$/ or
         trimmed =~ ~r/^[A-Za-z0-9]{12}$/ do
      {:ok, trimmed |> String.replace("-", "") |> String.upcase() |> format()}
    else
      :error
    end
  end

  defp format(<<a::binary-size(4), b::binary-size(4), c::binary-size(4)>>), do: "#{a}-#{b}-#{c}"
end
