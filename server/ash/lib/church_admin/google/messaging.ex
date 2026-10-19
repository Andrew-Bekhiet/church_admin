defmodule ChurchAdmin.Google.Messaging do
  @moduledoc """
  Push notifications through FCM HTTP v1, one message per device token.
  `{:error, :unregistered}` means the token is gone and the caller should delete it.
  """

  alias ChurchAdmin.Google.Config
  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.Messaging.Message

  @type result :: {:ok, message_name :: String.t()} | {:error, :unregistered | Error.t()}

  @callback send_message(Message.t()) :: result()

  @spec send_message(Message.t()) :: result()
  def send_message(%Message{} = message), do: Config.adapter(:messaging).send_message(message)
end
