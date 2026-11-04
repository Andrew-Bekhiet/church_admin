defmodule ChurchAdmin.Google.Credentials do
  @moduledoc """
  Bearer tokens for the Google APIs: a Goth-managed service-account token in
  production, the Firebase emulators' fixed `owner` token in dev and test.
  `:unconfigured` (production without `GOOGLE_APPLICATION_CREDENTIALS_JSON`) has
  no token: every call that needs one fails with a `:credentials` error.
  """

  alias ChurchAdmin.Google.Error

  @type t :: {:service_account, map()} | :emulator_owner | :unconfigured

  @goth ChurchAdmin.Google.Goth
  @emulator_token "owner"
  @scopes [
    "https://www.googleapis.com/auth/identitytoolkit",
    "https://www.googleapis.com/auth/devstorage.read_write",
    "https://www.googleapis.com/auth/firebase.messaging",
    "https://www.googleapis.com/auth/iam"
  ]

  @spec child_specs(t()) :: [{module(), keyword()}]
  def child_specs({:service_account, service_account}) do
    [{Goth, name: @goth, source: {:service_account, service_account, scopes: @scopes}}]
  end

  def child_specs(:emulator_owner), do: []
  def child_specs(:unconfigured), do: []

  @spec fetch_token(t()) :: {:ok, String.t()} | {:error, Error.t()}
  def fetch_token(:emulator_owner), do: {:ok, @emulator_token}

  def fetch_token(:unconfigured) do
    {:error,
     %Error{
       reason: :credentials,
       message: "GOOGLE_APPLICATION_CREDENTIALS_JSON is not set, so no Google API can be called"
     }}
  end

  def fetch_token({:service_account, _service_account}) do
    case Goth.fetch(@goth) do
      {:ok, %Goth.Token{token: token}} -> {:ok, token}
      {:error, exception} -> {:error, Error.from_exception(nil, :credentials, exception)}
    end
  catch
    :exit, reason -> {:error, Error.from_exception(nil, :credentials, reason)}
  end
end
