defmodule ChurchAdmin.Auth.TokenVerifier do
  @moduledoc """
  Turns a bearer ID token into a `ChurchAdmin.Auth.Principal`. `AUTH_MODE`
  picks the implementation: `firebase` (RS256, any environment) or `emulator`
  (unsigned Auth-emulator tokens, dev and test only; the application refuses
  to boot with it elsewhere).
  """

  alias ChurchAdmin.Auth.EmulatorTokenVerifier
  alias ChurchAdmin.Auth.FirebaseTokenVerifier
  alias ChurchAdmin.Auth.Principal

  @callback verify(token :: String.t(), opts :: keyword()) ::
              {:ok, Principal.t()} | {:error, reason :: atom()}

  @spec verify(String.t()) :: {:ok, Principal.t()} | {:error, atom()}
  def verify(token), do: configured!().verify(token, [])

  @spec configured!() :: module()
  def configured!,
    do: verifier_for!(config()[:mode], Application.fetch_env!(:church_admin, :config_env))

  @spec firebase_project_id() :: String.t()
  def firebase_project_id, do: Keyword.fetch!(config(), :firebase_project_id)

  @spec verifier_for!(:firebase | :emulator, atom()) :: module()
  def verifier_for!(:firebase, _config_env), do: FirebaseTokenVerifier

  def verifier_for!(:emulator, config_env) when config_env in [:dev, :test],
    do: EmulatorTokenVerifier

  def verifier_for!(mode, config_env) do
    raise ArgumentError,
          "AUTH_MODE #{inspect(mode)} is not allowed in #{config_env}: unsigned emulator tokens are accepted only in dev and test"
  end

  defp config, do: Application.fetch_env!(:church_admin, __MODULE__)
end
