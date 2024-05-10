defmodule ChurchAdminWeb.AreasChannel do
  require Logger

  alias ChurchAdmin.Schemas.Area
  alias Phoenix.PubSub
  alias Phoenix.Socket
  alias ChurchAdmin.Repo
  alias ChurchAdminWeb.AreaController

  import Ecto.Query

  use ChurchAdminWeb, :channel

  @impl true
  def join("areas", payload, socket) do
    with true <- authenticated?(socket),
         {:ok, query} <- AreaController.select_fields(payload),
         areas <- query |> order_by([a], a.name) |> Repo.all() do
      PubSub.subscribe(ChurchAdmin.PubSub, "areas_changed")

      Logger.info("Watching all areas")

      {:ok, areas, socket |> assign(:latest_response, areas)}
    else
      false ->
        {:error, %{message: "unauthenticated"}}

      _ ->
        {:error, %{message: "unknown"}}
    end
  end

  @impl true
  def join("areas:" <> area_id, _payload, socket) do
    with true <- authenticated?(socket),
         {:ok, query} <- AreaController.select_fields(%{"full" => "true"}),
         area when not is_nil(area) <- query |> where([a], a.id == ^area_id) |> Repo.one() do
      PubSub.subscribe(ChurchAdmin.PubSub, "areas_changed")

      Logger.info("Watching area: #{area_id}")

      {:ok, area, socket |> assign(:latest_response, area)}
    else
      false ->
        {:error, %{message: "unauthenticated"}}

      _ ->
        {:error, %{message: "unknown"}}
    end
  end

  @impl true
  def handle_info(%{added: added, updated: updated, removed: removed} = msg, socket) do
    %{topic: topic} = socket

    Logger.info("Received message: #{inspect(msg)}, topic: #{topic}")

    # TODO: implement authorization: user_can_read_area?

    case topic do
      "areas" ->
        %{latest_response: latest_response} = socket.assigns

        updated_ids = Map.keys(updated)

        new_areas =
          (added ++
             (latest_response
              |> Enum.reject(fn %Area{id: id} -> id in removed end)
              |> Enum.map(fn
                %Area{id: id} = area ->
                  cond do
                    id in updated_ids -> updated[id]
                    true -> area
                  end
              end)))
          |> Enum.sort_by(& &1.name)

        new_socket = socket |> assign(:latest_response, new_areas)

        new_socket |> push("update", new_areas)

        {:noreply, new_socket}

      "areas:" <> area_id ->
        with %{^area_id => new_area} <- updated do
          socket |> push("update", new_area)

          {:noreply, socket}
        else
          _ ->
            {:noreply, socket}
        end
    end
  end

  defp authenticated?(%Socket{assigns: assigns}) do
    with %{user_id: user_id, auth_id: auth_id} <- assigns do
      user_id != nil and auth_id != nil
    else
      _ -> false
    end
  end
end
