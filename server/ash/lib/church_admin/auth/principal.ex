defmodule ChurchAdmin.Auth.Principal do
  @moduledoc """
  The verified identity behind a request. `uid` is the `auth.users_data.uid`
  carried in the `x-hasura-user-id` custom claim; it is nil until the account
  is onboarded.
  """

  @enforce_keys [:auth_id, :claims]
  defstruct [:auth_id, :uid, :email, :claims, email_verified: false]

  @type t :: %__MODULE__{
          auth_id: String.t(),
          uid: String.t() | nil,
          email: String.t() | nil,
          email_verified: boolean(),
          claims: map()
        }

  @spec from_verified_claims(map()) :: t()
  def from_verified_claims(claims) do
    %__MODULE__{
      auth_id: claims["sub"],
      uid: claims["x-hasura-user-id"],
      email: claims["email"],
      email_verified: claims["email_verified"] == true,
      claims: claims
    }
  end
end
