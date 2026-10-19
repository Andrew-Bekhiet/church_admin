defmodule ChurchAdmin.Auth.EmulatorTokenVerifier do
  @moduledoc """
  Accepts the unsigned (`alg: none`) ID tokens the Firebase Auth emulator
  issues, still applying Firebase's claim rules. `ChurchAdmin.Auth.TokenVerifier`
  refuses to select it outside dev and test.
  """

  @behaviour ChurchAdmin.Auth.TokenVerifier

  alias ChurchAdmin.Auth.FirebaseClaims
  alias ChurchAdmin.Auth.TokenVerifier
  alias ChurchAdmin.Auth.UnverifiedJwt

  @impl true
  def verify(token, opts \\ []) do
    project_id = Keyword.get_lazy(opts, :project_id, &TokenVerifier.firebase_project_id/0)

    with {:ok, header, claims} <- UnverifiedJwt.decode(token),
         :ok <- require_unsigned(header) do
      FirebaseClaims.validate(claims, project_id, System.os_time(:second))
    end
  end

  defp require_unsigned(%{"alg" => "none"}), do: :ok
  defp require_unsigned(_header), do: {:error, :unsupported_algorithm}
end
