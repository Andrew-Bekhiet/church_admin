defmodule ChurchAdminWeb.ChangesChannel do
  @moduledoc """
  Topic `changes`: live queries. Join with `{}`; the reply is `{}`.

  `live:register {ref, document, operationName?, variables, window?,
  resultHashes?}` replies `{}` once the query's first result is known, or
  `{reason}` (`not_a_query`, `too_large`, `too_many`, `invalid`, or
  `run_failed` when the first run failed for a reason that a retry can fix).
  Registering an existing `ref` replaces its registration. `live:unregister {ref}` and
  `live:resync {ref}` reply `{}`; a resync is followed by a full push.
  Results arrive as `live:result` events, see
  `ChurchAdmin.Realtime.Live.Delta`.

  Each registration has an id of its own. A result still in this process's
  mailbox when its `ref` is replaced carries the old id, and is dropped.

  Any viewer's scope change reloads the actor of every socket, because one
  user's grants move the sets of users others manage or may see. When the
  facts changed, every query registers again under the new actor, with a
  full push. A viewer no longer approved or linked is disconnected. A registry restart loses every registration, so
  it disconnects too, and the client registers again on reconnecting. So
  does a run that failed with no reply left to say so, after a scope change.

  `socket.assigns.actor` dates from the connect, which a rejoin after a crash
  can long outlive, so joining reloads it too. The join queues that reload
  before its reply reaches the client, so it precedes every `live:register`.

  A join after the socket's token expired is refused with `token_expired`,
  and the transport is closed at the moment it expires.
  """

  use ChurchAdminWeb, :channel

  alias ChurchAdmin.Authz.{Actor, ActorLoader}
  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.Registration
  alias ChurchAdmin.Realtime.Live.Registry
  alias ChurchAdmin.Realtime.Live.ViewerClass

  @max_registrations 100

  @impl Phoenix.Channel
  def join("changes", _payload, socket) do
    case remaining_token_lifetime_ms(socket) do
      lifetime_ms when lifetime_ms > 0 ->
        Process.send_after(self(), :token_expired, lifetime_ms)
        Process.monitor(Registry)
        Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, Broadcaster.viewer_scope_topic())
        send(self(), :viewer_scope_changed)

        {:ok, %{},
         socket
         |> assign(:live_by_ref, %{})
         |> assign(:ref_by_id, %{})
         |> assign(:awaiting_reply, %{})}

      _expired ->
        {:error, %{reason: "token_expired"}}
    end
  end

  defp remaining_token_lifetime_ms(%{assigns: %{token_expires_at: expires_at}}),
    do: expires_at * 1000 - System.os_time(:millisecond)

  @impl Phoenix.Channel
  def handle_in("live:register", payload, socket) do
    case validated_registration(payload, socket) do
      {:ok, registration} ->
        {:noreply, register(registration, socket_ref(socket), socket)}

      {:error, reason} ->
        {:reply, {:error, %{reason: Atom.to_string(reason)}}, socket}
    end
  end

  def handle_in("live:unregister", %{"ref" => ref}, socket) when is_binary(ref) do
    case socket.assigns.live_by_ref do
      %{^ref => %{id: id}} ->
        Registry.unregister(id)
        {:reply, {:ok, %{}}, forget_registration_and_answer_ok(socket, ref)}

      _unknown ->
        {:reply, {:ok, %{}}, socket}
    end
  end

  def handle_in("live:resync", %{"ref" => ref}, socket) when is_binary(ref) do
    case socket.assigns.live_by_ref do
      %{^ref => %{id: id}} -> Registry.resync(id)
      _unknown -> :ok
    end

    {:reply, {:ok, %{}}, socket}
  end

  def handle_in(event, _payload_without_a_ref, socket)
      when event in ["live:unregister", "live:resync"],
      do: {:reply, {:error, %{reason: "invalid"}}, socket}

  defp validated_registration(payload, socket) do
    with {:ok, registration} <- Registration.from_payload(payload) do
      if over_the_cap?(registration, socket),
        do: {:error, :too_many},
        else: {:ok, registration}
    end
  end

  defp over_the_cap?(%Registration{ref: ref}, socket) do
    registered = socket.assigns.live_by_ref

    map_size(registered) >= @max_registrations and not is_map_key(registered, ref)
  end

  defp register(%Registration{ref: ref} = registration, reply_to, socket) do
    previous = socket.assigns.live_by_ref[ref]

    registration = %{
      registration
      | id: make_ref(),
        pid: self(),
        actor: socket.assigns.actor,
        replaces: previous && previous.id
    }

    :ok = Registry.register(registration)

    socket
    |> maybe_forget_and_answer_ok(previous)
    |> update_assign(:live_by_ref, &Map.put(&1, ref, registration))
    |> update_assign(:ref_by_id, &Map.put(&1, registration.id, ref))
    |> await_reply(registration.id, reply_to)
  end

  defp maybe_forget_and_answer_ok(socket, nil), do: socket

  defp maybe_forget_and_answer_ok(socket, previous),
    do: forget_registration_and_answer_ok(socket, previous.ref)

  defp await_reply(socket, _id, nil), do: socket

  defp await_reply(socket, id, reply_to),
    do: update_assign(socket, :awaiting_reply, &Map.put(&1, id, reply_to))

  defp forget_registration_and_answer_ok(socket, ref) do
    {%{id: id}, live_by_ref} = Map.pop!(socket.assigns.live_by_ref, ref)

    socket
    |> assign(:live_by_ref, live_by_ref)
    |> update_assign(:ref_by_id, &Map.delete(&1, id))
    |> answer_awaited_reply(id, {:ok, %{}})
  end

  defp update_assign(socket, key, update), do: assign(socket, key, update.(socket.assigns[key]))

  defp answer_awaited_reply(socket, id, answer) do
    case Map.pop(socket.assigns.awaiting_reply, id) do
      {nil, _awaiting} ->
        socket

      {reply_to, awaiting} ->
        reply(reply_to, answer)
        assign(socket, :awaiting_reply, awaiting)
    end
  end

  @impl Phoenix.Channel
  def handle_info({:live_ready, id}, socket),
    do: {:noreply, answer_awaited_reply(socket, id, {:ok, %{}})}

  def handle_info({:live_refused, id}, socket),
    do: {:noreply, refuse_registration(socket, id, "invalid")}

  def handle_info({:live_run_failed, id}, socket) do
    if not is_map_key(socket.assigns.awaiting_reply, id) and
         is_map_key(socket.assigns.ref_by_id, id),
       do: disconnect(socket, :live_run_failed),
       else: {:noreply, refuse_registration(socket, id, "run_failed")}
  end

  def handle_info({:live_result, id, payload}, socket) do
    case socket.assigns.ref_by_id do
      %{^id => ref} -> push(socket, "live:result", Map.put(payload, :ref, ref))
      _replaced -> :ok
    end

    {:noreply, socket}
  end

  def handle_info(:viewer_scope_changed, socket), do: reload_actor_or_disconnect(socket)

  def handle_info(:token_expired, socket), do: disconnect(socket, :token_expired)

  def handle_info({:DOWN, _monitor, :process, _registry, _reason}, socket),
    do: disconnect(socket, :live_registry_restarted)

  defp refuse_registration(socket, id, reason) do
    socket = answer_awaited_reply(socket, id, {:error, %{reason: reason}})

    case socket.assigns.ref_by_id do
      %{^id => ref} -> forget_registration_and_answer_ok(socket, ref)
      _replaced -> socket
    end
  end

  defp reload_actor_or_disconnect(%{assigns: %{actor: actor}} = socket) do
    case ActorLoader.load_for_principal(actor.principal) do
      {:ok, %Actor{approved?: true} = reloaded} ->
        {:noreply, adopt_actor(socket, reloaded)}

      _not_approved_or_no_longer_linked ->
        disconnect(socket, :viewer_lost_access)
    end
  end

  defp adopt_actor(%{assigns: %{actor: actor}} = socket, reloaded) do
    if ViewerClass.same_scope?(actor, reloaded) do
      socket
    else
      socket
      |> assign(:actor, reloaded)
      |> reregister_everything()
    end
  end

  defp reregister_everything(socket) do
    socket.assigns.live_by_ref
    |> Map.values()
    |> Enum.reduce(socket, fn registration, socket ->
      reply_to = socket.assigns.awaiting_reply[registration.id]

      socket =
        assign(
          socket,
          :awaiting_reply,
          Map.delete(socket.assigns.awaiting_reply, registration.id)
        )

      register(%{registration | known_hashes: nil}, reply_to, socket)
    end)
  end

  defp disconnect(socket, reason) do
    send(socket.transport_pid, %Phoenix.Socket.Broadcast{
      topic: socket.id,
      event: "disconnect",
      payload: %{}
    })

    {:stop, {:shutdown, reason}, socket}
  end
end
