defmodule ChurchAdmin.Auth.FirebaseClaims do
  @moduledoc """
  The claim checks Firebase prescribes for ID tokens, shared by the signed and
  the emulator verifiers.
  """

  alias ChurchAdmin.Auth.Principal

  @spec validate(map(), String.t(), integer()) :: {:ok, Principal.t()} | {:error, atom()}
  def validate(claims, project_id, now) do
    with :ok <- check(claims["aud"] == project_id, :invalid_audience),
         :ok <- check(claims["iss"] == issuer(project_id), :invalid_issuer),
         :ok <- check(later_than?(claims["exp"], now), :expired),
         :ok <- check(not_later_than?(claims["iat"], now), :issued_in_future),
         :ok <- check(not_later_than?(claims["auth_time"], now), :invalid_auth_time),
         :ok <- check(non_empty_string?(claims["sub"]), :missing_subject) do
      {:ok, Principal.from_verified_claims(claims)}
    end
  end

  @spec issuer(String.t()) :: String.t()
  def issuer(project_id), do: "https://securetoken.google.com/" <> project_id

  defp check(true, _reason), do: :ok
  defp check(false, reason), do: {:error, reason}

  defp later_than?(timestamp, now) when is_integer(timestamp), do: timestamp > now
  defp later_than?(_timestamp, _now), do: false

  defp not_later_than?(timestamp, now) when is_integer(timestamp), do: timestamp <= now
  defp not_later_than?(_timestamp, _now), do: false

  defp non_empty_string?(value), do: is_binary(value) and value != ""
end
