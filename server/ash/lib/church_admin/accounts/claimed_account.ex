defmodule ChurchAdmin.Accounts.ClaimedAccount do
  @moduledoc """
  The user a Firebase account now signs in as. The client refreshes its ID
  token afterwards to pick up the new custom claims.
  """

  use Ash.TypedStruct
  use AshGraphql.Type

  typed_struct do
    field :uid, :uuid, allow_nil?: false
  end

  @impl true
  def graphql_type(_constraints), do: :claimed_account

  @impl true
  def graphql_input_type(_constraints), do: :claimed_account_input
end
