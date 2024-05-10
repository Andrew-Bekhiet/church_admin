defmodule ChurchAdminWeb.AreasChannel do
  alias Phoenix.Socket
  alias ChurchAdmin.Repo
  alias ChurchAdminWeb.AreaController
  import Ecto.Query

  use ChurchAdminWeb, :channel

  @impl true
  def join("areas", _payload, socket) do
    with true <- authorized?(socket),
         {:ok, query} <- AreaController.select_fields(%{"full" => "true"}) do
      query =
        query
        |> order_by([a], a.name)
        |> Repo.all()

      {:ok, query, socket}
    else
      false ->
        {:error, %{message: "unauthorized"}}

      _ ->
        {:error, %{message: "unknown"}}
    end
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (areas:lobby).
  @impl true
  def handle_in("shout", payload, socket) do
    broadcast(socket, "shout", payload)
    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(socket = %Socket{}) do
    # get the user_id from the socket assigns
    with user_id <- socket.assigns.user_id,
         auth_id <- socket.assigns.auth_id do
      user_id != nil and auth_id != nil
    else
      nil ->
        false
    end
  end
end
