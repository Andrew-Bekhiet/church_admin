defmodule ChurchAdmin.Accounts.Claims do
  @moduledoc """
  Firebase custom claims for a church_admin user. The Hasura claim names stay
  because the RTDB rule on `Users/$uid/lastSeen` reads `x-hasura-user-id`.
  """

  @type t :: %{String.t() => String.t() | [String.t()]}

  @spec default_for(String.t()) :: t()
  def default_for(uid) do
    %{
      "x-hasura-user-id" => uid,
      "x-hasura-default-role" => "user",
      "x-hasura-allowed-roles" => ["user"]
    }
  end
end
