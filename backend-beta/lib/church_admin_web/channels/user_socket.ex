defmodule ChurchAdminWeb.UserSocket do
  use Phoenix.Socket
  require Logger

  # A Socket handler
  #
  # It's possible to control the websocket connection and
  # assign values that can be accessed by your channel topics.

  ## Channels

  channel "areas", ChurchAdminWeb.AreasChannel

  # Socket params are passed from the client and can
  # be used to verify and authenticate a user. After
  # verification, you can put default assigns into
  # the socket that will be set for all channels, ie
  #
  #     {:ok, assign(socket, :user_id, verified_user_id)}
  #
  # To deny connection, return `:error` or `{:error, term}`. To control the
  # response the client receives in that case, [define an error handler in the
  # websocket
  # configuration](https://hexdocs.pm/phoenix/Phoenix.Endpoint.html#socket/3-websocket-configuration).
  #
  # See `Phoenix.Token` documentation for examples in
  # performing token verification on connect.
  @impl true
  def connect(params, socket, _connect_info) do
    "Bearer " <> token =
      params
      |> Map.get("Authorization")

    token
    # TODO: refactor to clean code
    |> ChurchAdminWeb.Plugs.Auth.check_token()
    |> case do
      {:ok, claims} ->
        socket =
          socket
          |> assign(:user_id, claims |> Map.get("x-hasura-user-id"))
          |> assign(:auth_id, claims |> Map.get("sub"))

        Logger.info(
          "Authenticated user with id: #{socket.assigns.user_id}, auth_id: #{socket.assigns.auth_id}"
        )

        {:ok, socket}

      rslt ->
        Logger.error(
          "Unauthorized user, tried to connect to socket with params: #{inspect(params)}, got #{inspect(rslt)}"
        )

        {:error, :unauthorized}
    end
  end

  # Socket id's are topics that allow you to identify all sockets for a given user:
  #
  #     def id(socket), do: "user_socket:#{socket.assigns.user_id}"
  #
  # Would allow you to broadcast a "disconnect" event and terminate
  # all active sockets and channels for a given user:
  #
  #     Elixir.ChurchAdminWeb.Endpoint.broadcast("user_socket:#{user.id}", "disconnect", %{})
  #
  # Returning `nil` makes this socket anonymous.
  @impl true
  def id(socket), do: nil
end
