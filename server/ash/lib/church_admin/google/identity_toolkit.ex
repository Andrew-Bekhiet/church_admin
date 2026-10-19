defmodule ChurchAdmin.Google.IdentityToolkit do
  @moduledoc """
  Firebase Auth accounts through the Identity Toolkit admin API. The adapter
  comes from `ChurchAdmin.Google.Config`; an unknown account is
  `{:error, %Error{reason: :not_found}}`.
  """

  alias ChurchAdmin.Google.Config
  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.IdentityToolkit.Account

  @type update_attribute ::
          {:custom_claims, ChurchAdmin.Accounts.Claims.t() | map()} | {:email_verified, boolean()}

  @callback lookup_by_uid(uid :: String.t()) :: {:ok, Account.t()} | {:error, Error.t()}
  @callback lookup_by_email(email :: String.t()) :: {:ok, Account.t()} | {:error, Error.t()}
  @callback update(uid :: String.t(), [update_attribute()]) :: :ok | {:error, Error.t()}
  @callback delete(uid :: String.t()) :: :ok | {:error, Error.t()}

  @spec lookup_by_uid(String.t()) :: {:ok, Account.t()} | {:error, Error.t()}
  def lookup_by_uid(uid), do: adapter().lookup_by_uid(uid)

  @spec lookup_by_email(String.t()) :: {:ok, Account.t()} | {:error, Error.t()}
  def lookup_by_email(email), do: adapter().lookup_by_email(email)

  @spec update(String.t(), [update_attribute()]) :: :ok | {:error, Error.t()}
  def update(uid, attributes), do: adapter().update(uid, attributes)

  @spec delete(String.t()) :: :ok | {:error, Error.t()}
  def delete(uid), do: adapter().delete(uid)

  defp adapter, do: Config.adapter(:identity_toolkit)
end
