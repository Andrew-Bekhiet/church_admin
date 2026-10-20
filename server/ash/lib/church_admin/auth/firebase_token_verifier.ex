defmodule ChurchAdmin.Auth.FirebaseTokenVerifier do
  @moduledoc """
  Verifies Firebase ID tokens: RS256 signatures against Google's published
  securetoken keys, then Firebase's claim rules.
  """

  @behaviour ChurchAdmin.Auth.TokenVerifier

  alias ChurchAdmin.Auth.FirebaseClaims
  alias ChurchAdmin.Auth.GoogleSigningKeys
  alias ChurchAdmin.Auth.TokenVerifier
  alias ChurchAdmin.Auth.UnverifiedJwt

  @impl ChurchAdmin.Auth.TokenVerifier
  def verify(token, opts \\ []) do
    project_id = Keyword.get_lazy(opts, :project_id, &TokenVerifier.firebase_project_id/0)
    fetch_key = Keyword.get(opts, :fetch_key, &GoogleSigningKeys.fetch_key/1)

    with {:ok, header, _unverified_claims} <- UnverifiedJwt.decode(token),
         :ok <- require_rs256(header),
         {:ok, kid} <- key_id(header),
         {:ok, public_key} <- fetch_key.(kid),
         {:ok, claims} <- verify_signature(token, public_key) do
      FirebaseClaims.validate(claims, project_id, System.os_time(:second))
    end
  end

  defp require_rs256(%{"alg" => "RS256"}), do: :ok
  defp require_rs256(_header), do: {:error, :unsupported_algorithm}

  defp key_id(%{"kid" => kid}) when is_binary(kid) and kid != "", do: {:ok, kid}
  defp key_id(_header), do: {:error, :unknown_key}

  defp verify_signature(token, public_key) do
    case JOSE.JWT.verify_strict(public_key, ["RS256"], token) do
      {true, %JOSE.JWT{fields: claims}, _jws} -> {:ok, claims}
      _ -> {:error, :invalid_signature}
    end
  end
end
