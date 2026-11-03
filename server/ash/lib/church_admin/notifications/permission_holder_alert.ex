defmodule ChurchAdmin.Notifications.PermissionHolderAlert do
  @moduledoc """
  What the alert workers share: the device tokens of the users holding a
  permission, and delivering one message per token. `deliver_each/2` deletes
  the tokens FCM reports unregistered, whatever else failed, and returns the
  `{token, reason}` of every other failure for the worker to decide on.
  """

  require Ash.Query

  alias ChurchAdmin.Accounts.DeviceToken
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Google.Messaging

  @type failure :: {token :: String.t(), reason :: term()}

  @spec tokens_of_holders(String.t()) :: [String.t()]
  def tokens_of_holders(permission) do
    DeviceToken
    |> Ash.Query.filter(exists(user.permissions, permission == ^permission))
    |> Ash.Query.select([:token])
    |> Ash.read!(actor: Actor.system(), page: false)
    |> Enum.map(& &1.token)
    |> Enum.uniq()
  end

  @spec deliver_each([String.t()], (String.t() -> Messaging.Message.t())) :: [failure()]
  def deliver_each(tokens, build_message) do
    outcomes = Map.new(tokens, &{&1, Messaging.send_message(build_message.(&1))})

    outcomes |> unregistered_tokens() |> delete_device_tokens()

    for {token, {:error, reason}} <- outcomes, reason != :unregistered, do: {token, reason}
  end

  defp unregistered_tokens(outcomes),
    do: for({token, {:error, :unregistered}} <- outcomes, do: token)

  defp delete_device_tokens([]), do: :ok

  defp delete_device_tokens(tokens) do
    DeviceToken
    |> Ash.Query.filter(token in ^tokens)
    |> Ash.bulk_destroy!(:destroy, %{}, actor: Actor.system())

    :ok
  end
end
