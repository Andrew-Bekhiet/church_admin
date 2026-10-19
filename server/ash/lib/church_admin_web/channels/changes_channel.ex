defmodule ChurchAdminWeb.ChangesChannel do
  @moduledoc """
  Topic `changes`: pushes `changes` events `{from, to, changes: [{type, id, op}]}`
  with versions as decimal strings.

  Join with `{since}`. The reply is `{version, complete}`: when `since` is
  the head or the start of a buffered batch, `complete` is true, `version`
  is `since` and the batches after it are pushed; otherwise (null, unknown,
  expired or malformed) `complete` is false, `version` is the head, and the
  client must refetch everything. Every push's `from` is the previous push's
  `to` (or the joined version); when the replication stream restarts, the
  push is empty and starts at the new head, which no joined client has seen.

  A join after the socket's token expired is refused with `token_expired`,
  and the transport is closed at the moment it expires.
  """

  use ChurchAdminWeb, :channel

  alias ChurchAdmin.Realtime.Broadcaster

  @impl true
  def join("changes", payload, socket) do
    case remaining_token_lifetime_ms(socket) do
      lifetime_ms when lifetime_ms > 0 ->
        Process.send_after(self(), :token_expired, lifetime_ms)
        join_at(payload["since"], socket)

      _expired ->
        {:error, %{reason: "token_expired"}}
    end
  end

  defp join_at(since, socket) do
    head = Broadcaster.head()

    {version, complete?} =
      with {:ok, since} <- parse_version(since),
           {:ok, _batches} <- Broadcaster.batches_since(since) do
        {since, true}
      else
        _not_replayable -> {head, false}
      end

    send(self(), :replay_backlog)

    {:ok, %{version: Integer.to_string(version), complete: complete?},
     assign(socket, :last_pushed, version)}
  end

  defp remaining_token_lifetime_ms(%{assigns: %{token_expires_at: expires_at}}),
    do: expires_at * 1000 - System.os_time(:millisecond)

  @impl true
  def handle_info(:replay_backlog, socket) do
    Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, Broadcaster.topic())

    case Broadcaster.batches_since(socket.assigns.last_pushed) do
      {:ok, batches} -> {:noreply, Enum.reduce(batches, socket, &push_newer/2)}
      :unknown -> {:noreply, socket}
    end
  end

  def handle_info({:realtime_changes, batch}, socket), do: {:noreply, push_newer(batch, socket)}

  def handle_info(:token_expired, socket) do
    send(socket.transport_pid, %Phoenix.Socket.Broadcast{
      topic: socket.id,
      event: "disconnect",
      payload: %{}
    })

    {:stop, {:shutdown, :token_expired}, socket}
  end

  defp push_newer(%{to: to} = batch, %{assigns: %{last_pushed: last_pushed}} = socket)
       when to > last_pushed do
    push(socket, "changes", %{
      from: Integer.to_string(batch.from),
      to: Integer.to_string(to),
      changes: batch.changes
    })

    assign(socket, :last_pushed, to)
  end

  defp push_newer(_already_pushed, socket), do: socket

  defp parse_version(since) when is_binary(since) do
    case Integer.parse(since) do
      {version, ""} when version >= 0 -> {:ok, version}
      _malformed -> :error
    end
  end

  defp parse_version(_null_or_not_a_string), do: :error
end
