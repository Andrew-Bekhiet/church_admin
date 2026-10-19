defmodule ChurchAdmin.Accounts.Changes.CanonicalizeNameAndEmail do
  @moduledoc """
  Trims a changed name, and stores a changed email trimmed and lower-cased,
  the form account claiming compares; an empty email clears it.
  """

  use Ash.Resource.Change

  @impl true
  def change(changeset, _opts, _context) do
    changeset
    |> update_if_changing(:name, &String.trim/1)
    |> update_if_changing(:email, &canonical_email/1)
  end

  @impl true
  def atomic(changeset, opts, context), do: {:ok, change(changeset, opts, context)}

  @spec canonical_email(String.t() | nil) :: String.t() | nil
  def canonical_email(nil), do: nil

  def canonical_email(email) do
    case email |> String.trim() |> String.downcase() do
      "" -> nil
      email -> email
    end
  end

  defp update_if_changing(changeset, attribute, fun) do
    case Ash.Changeset.fetch_change(changeset, attribute) do
      {:ok, value} when is_binary(value) ->
        Ash.Changeset.force_change_attribute(changeset, attribute, fun.(value))

      _unchanged_or_nil ->
        changeset
    end
  end
end
