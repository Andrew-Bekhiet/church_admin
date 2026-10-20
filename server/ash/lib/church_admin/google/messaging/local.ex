defmodule ChurchAdmin.Google.Messaging.Local do
  @moduledoc """
  Stands in for FCM in dev and test, which has no emulator. Every message is
  logged. With `local_delivery: :test_process` it is also sent as
  `{:fcm_message, message}` to the test process that (directly or through
  `$callers`) made the call, and a token built by `unregistered_token/1` answers
  `{:error, :unregistered}` so token pruning can be tested.
  """

  @behaviour ChurchAdmin.Google.Messaging

  require Logger

  alias ChurchAdmin.Google.Config
  alias ChurchAdmin.Google.Messaging.Message

  @unregistered_prefix "unregistered-fcm-token:"

  @spec unregistered_token(String.t()) :: String.t()
  def unregistered_token(suffix), do: @unregistered_prefix <> suffix

  @impl ChurchAdmin.Google.Messaging
  def send_message(%Message{} = message) do
    Logger.info("FCM message not sent (local messaging): #{inspect(message)}")

    case Config.local_messaging_delivery() do
      :test_process -> deliver_to_test_process(message)
      :log -> {:ok, local_message_name()}
    end
  end

  defp deliver_to_test_process(message) do
    send(test_process(), {:fcm_message, message})

    if String.starts_with?(message.token, @unregistered_prefix),
      do: {:error, :unregistered},
      else: {:ok, local_message_name()}
  end

  defp test_process, do: List.last([self() | Process.get(:"$callers", [])])

  defp local_message_name,
    do: "projects/#{Config.project_id()}/messages/local-#{System.unique_integer([:positive])}"
end
