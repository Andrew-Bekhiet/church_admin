defmodule ChurchAdmin.Google.IdentityToolkit.Account do
  @moduledoc "A Firebase Auth account as `accounts:lookup` returns it."

  @type t :: %__MODULE__{
          uid: String.t(),
          email: String.t() | nil,
          email_verified: boolean(),
          disabled: boolean(),
          custom_claims: map()
        }

  @enforce_keys [:uid]
  defstruct [:uid, :email, email_verified: false, disabled: false, custom_claims: %{}]

  @spec from_user_info(map()) :: t()
  def from_user_info(%{"localId" => uid} = user_info) do
    %__MODULE__{
      uid: uid,
      email: user_info["email"],
      email_verified: user_info["emailVerified"] == true,
      disabled: user_info["disabled"] == true,
      custom_claims: decode_custom_attributes(user_info["customAttributes"])
    }
  end

  defp decode_custom_attributes(json) when is_binary(json) and json != "" do
    case Jason.decode(json) do
      {:ok, %{} = claims} -> claims
      _not_an_object -> %{}
    end
  end

  defp decode_custom_attributes(_missing), do: %{}
end
