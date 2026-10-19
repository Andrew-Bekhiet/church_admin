defmodule ChurchAdmin.Google.Messaging.Message do
  @moduledoc "One FCM notification to one device token; FCM requires string data values."

  @type t :: %__MODULE__{
          token: String.t(),
          title: String.t() | nil,
          body: String.t() | nil,
          data: %{String.t() => String.t()}
        }

  @enforce_keys [:token]
  defstruct [:token, :title, :body, data: %{}]

  @spec to_fcm(t()) :: map()
  def to_fcm(%__MODULE__{} = message) do
    %{
      token: message.token,
      notification: %{title: message.title, body: message.body},
      data: message.data
    }
  end
end
