defmodule ChurchAdminWeb.ChangesChannel do
  @moduledoc """
  Topic `changes`. Join with `{}`; the reply is `{}`.

  A join after the socket's token expired is refused with `token_expired`,
  and the transport is closed at the moment it expires.
  """

  use ChurchAdminWeb, :channel

  @impl Phoenix.Channel
  def join("changes", _payload, socket) do
    case remaining_token_lifetime_ms(socket) do
      lifetime_ms when lifetime_ms > 0 ->
        Process.send_after(self(), :token_expired, lifetime_ms)
        {:ok, %{}, socket}

      _expired ->
        {:error, %{reason: "token_expired"}}
    end
  end

  defp remaining_token_lifetime_ms(%{assigns: %{token_expires_at: expires_at}}),
    do: expires_at * 1000 - System.os_time(:millisecond)

  @impl Phoenix.Channel
  def handle_info(:token_expired, socket) do
    send(socket.transport_pid, %Phoenix.Socket.Broadcast{
      topic: socket.id,
      event: "disconnect",
      payload: %{}
    })

    {:stop, {:shutdown, :token_expired}, socket}
  end
end
