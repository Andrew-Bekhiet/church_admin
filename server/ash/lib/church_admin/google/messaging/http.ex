defmodule ChurchAdmin.Google.Messaging.Http do
  @moduledoc "FCM HTTP v1 `messages:send` over Req."

  @behaviour ChurchAdmin.Google.Messaging

  alias ChurchAdmin.Google.Client
  alias ChurchAdmin.Google.Config
  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.Messaging.Message

  @impl ChurchAdmin.Google.Messaging
  def send_message(%Message{} = message) do
    case Client.request(:messaging,
           method: :post,
           url: "/v1/projects/{project}/messages:send",
           path_params: [project: Config.project_id()],
           json: %{message: Message.to_fcm(message)}
         ) do
      {:ok, %Req.Response{body: %{"name" => name}}} ->
        {:ok, name}

      {:ok, %Req.Response{status: status}} ->
        {:error, %Error{api: :messaging, reason: :unexpected_response, status: status}}

      {:error, %Error{code: "UNREGISTERED"}} ->
        {:error, :unregistered}

      {:error, %Error{status: 404}} ->
        {:error, :unregistered}

      {:error, error} ->
        {:error, error}
    end
  end
end
