defmodule ChurchAdminWeb.ChangesChannel do
  @moduledoc """
  Topic `changes`: pushes `changes` events `{from, to, changes: [{type, id, op}]}`
  with versions as decimal strings.

  Join with `{since}`. The reply is `{version, complete}`: when `since` is
  the head or the start of a buffered batch, `complete` is true, `version`
  is `since` and the batches after it are pushed; otherwise (null, unknown,
  expired or malformed) `complete` is false, `version` is the head, and the
  client must refetch everything. Every push's `from` is the previous push's
  `to` (or the joined version).
  """

  use ChurchAdminWeb, :channel

  alias ChurchAdmin.Realtime.Broadcaster

  @impl true
  def join("changes", payload, socket) do
    head = Broadcaster.head()

    {version, complete?} =
      with {:ok, since} <- parse_version(payload["since"]),
           {:ok, _batches} <- Broadcaster.batches_since(since) do
        {since, true}
      else
        _not_replayable -> {head, false}
      end

    send(self(), :replay_backlog)

    {:ok, %{version: Integer.to_string(version), complete: complete?},
     assign(socket, :last_pushed, version)}
  end

  @impl true
  def handle_info(:replay_backlog, socket) do
    Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, Broadcaster.topic())

    case Broadcaster.batches_since(socket.assigns.last_pushed) do
      {:ok, batches} -> {:noreply, Enum.reduce(batches, socket, &push_newer/2)}
      :unknown -> {:noreply, socket}
    end
  end

  def handle_info({:realtime_changes, batch}, socket), do: {:noreply, push_newer(batch, socket)}

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
