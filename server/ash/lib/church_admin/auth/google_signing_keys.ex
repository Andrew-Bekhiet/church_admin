defmodule ChurchAdmin.Auth.GoogleSigningKeys do
  @moduledoc """
  Caches the public keys Google signs Firebase ID tokens with, for as long as
  the response's `Cache-Control: max-age` allows (`@default_ttl_ms` when it is
  missing, never less than `@min_ttl_ms`). A token naming a key id the cache
  lacks triggers a refetch (key rotation), at most once per
  `@unknown_key_refetch_interval_ms` so forged key ids cannot flood Google.

  The fetch runs in its own process under a deadline and never blocks the
  server. A caller whose key is cached gets it at once, even when the cache
  has expired and a refresh is under way or has failed (a failed refresh is
  retried after `@failed_refresh_backoff_ms`). Only a caller whose key is not
  cached waits for the refresh, and gets `:signing_keys_unavailable` if it
  fails or runs out of time.
  """

  use GenServer

  @jwks_url "https://www.googleapis.com/service_accounts/v1/jwk/securetoken@system.gserviceaccount.com"
  @unknown_key_refetch_interval_ms 60_000
  @default_ttl_ms :timer.minutes(5)
  @min_ttl_ms :timer.minutes(1)
  @failed_refresh_backoff_ms :timer.seconds(5)
  @refresh_deadline_ms :timer.seconds(4)
  @request_options [retry: false, receive_timeout: 3_000, connect_options: [timeout: 2_000]]

  @spec start_link(keyword()) :: GenServer.on_start()
  def start_link(opts) do
    {name, opts} = Keyword.pop(opts, :name, __MODULE__)
    GenServer.start_link(__MODULE__, opts, if(name, do: [name: name], else: []))
  end

  @spec fetch_key(GenServer.server(), String.t()) ::
          {:ok, JOSE.JWK.t()} | {:error, :unknown_key | :signing_keys_unavailable}
  def fetch_key(server \\ __MODULE__, kid) do
    GenServer.call(server, {:fetch_key, kid})
  catch
    :exit, _reason -> {:error, :signing_keys_unavailable}
  end

  @impl GenServer
  def init(opts) do
    {:ok,
     %{
       req_options: Keyword.get(opts, :req_options, []),
       now_ms: Keyword.get(opts, :now_ms, fn -> System.monotonic_time(:millisecond) end),
       refresh_deadline_ms: Keyword.get(opts, :refresh_deadline_ms, @refresh_deadline_ms),
       keys: %{},
       fetched_at_ms: nil,
       expires_at_ms: nil,
       retry_at_ms: nil,
       refresh: nil,
       waiters: []
     }}
  end

  @impl GenServer
  def handle_call({:fetch_key, kid}, from, state) do
    state = maybe_start_refresh(state, kid, state.now_ms.())

    case {Map.fetch(state.keys, kid), state.refresh} do
      {{:ok, key}, _refresh} -> {:reply, {:ok, key}, state}
      {:error, nil} -> {:reply, unknown_or_unavailable(state), state}
      {:error, _refresh} -> {:noreply, %{state | waiters: [{from, kid} | state.waiters]}}
    end
  end

  @impl GenServer
  def handle_info({:refreshed, pid, result}, %{refresh: %{pid: pid}} = state),
    do: {:noreply, finish_refresh(state, result)}

  def handle_info({:refresh_deadline, pid}, %{refresh: %{pid: pid}} = state) do
    Process.exit(pid, :kill)
    {:noreply, finish_refresh(state, :error)}
  end

  def handle_info({:DOWN, ref, :process, _pid, _reason}, %{refresh: %{ref: ref}} = state),
    do: {:noreply, finish_refresh(state, :error)}

  def handle_info(_stale_message, state), do: {:noreply, state}

  defp maybe_start_refresh(%{refresh: nil} = state, kid, now) do
    if must_fetch?(state, kid, now), do: start_refresh(state), else: state
  end

  defp maybe_start_refresh(state, _kid, _now), do: state

  defp must_fetch?(%{expires_at_ms: nil}, _kid, _now), do: true

  defp must_fetch?(%{retry_at_ms: retry_at}, _kid, now)
       when is_integer(retry_at) and now < retry_at,
       do: false

  defp must_fetch?(%{expires_at_ms: expires_at}, _kid, now) when now >= expires_at, do: true

  defp must_fetch?(state, kid, now) do
    not Map.has_key?(state.keys, kid) and
      now - state.fetched_at_ms >= @unknown_key_refetch_interval_ms
  end

  defp start_refresh(state) do
    server = self()
    req_options = Keyword.merge(@request_options, state.req_options)

    {:ok, pid} = Task.start(fn -> send(server, {:refreshed, self(), fetch_jwks(req_options)}) end)
    Process.send_after(server, {:refresh_deadline, pid}, state.refresh_deadline_ms)

    %{state | refresh: %{pid: pid, ref: Process.monitor(pid)}}
  end

  defp fetch_jwks(req_options) do
    case Req.get(@jwks_url, req_options) do
      {:ok, %Req.Response{status: 200, body: %{"keys" => keys}} = response} ->
        {:ok, Map.new(keys, &{&1["kid"], JOSE.JWK.from_map(&1)}), ttl_ms(response)}

      _failure ->
        :error
    end
  rescue
    _error -> :error
  end

  defp finish_refresh(state, result) do
    Process.demonitor(state.refresh.ref, [:flush])
    now = state.now_ms.()
    state = apply_refresh(%{state | refresh: nil}, result, now)

    for {from, kid} <- Enum.reverse(state.waiters) do
      GenServer.reply(from, answer_after(state, kid, result))
    end

    %{state | waiters: []}
  end

  defp answer_after(state, kid, result) do
    case {Map.fetch(state.keys, kid), result} do
      {{:ok, key}, _result} -> {:ok, key}
      {:error, :error} -> {:error, :signing_keys_unavailable}
      {:error, {:ok, _keys, _ttl_ms}} -> {:error, :unknown_key}
    end
  end

  defp apply_refresh(state, {:ok, keys, ttl_ms}, now) do
    %{
      state
      | keys: keys,
        fetched_at_ms: now,
        expires_at_ms: now + ttl_ms,
        retry_at_ms: nil
    }
  end

  defp apply_refresh(%{keys: keys} = state, :error, now) when map_size(keys) > 0,
    do: %{state | retry_at_ms: now + @failed_refresh_backoff_ms}

  defp apply_refresh(state, :error, _now), do: state

  defp unknown_or_unavailable(%{keys: keys}) when map_size(keys) == 0,
    do: {:error, :signing_keys_unavailable}

  defp unknown_or_unavailable(_state), do: {:error, :unknown_key}

  defp ttl_ms(response) do
    response
    |> Req.Response.get_header("cache-control")
    |> Enum.find_value(@default_ttl_ms, fn directives ->
      case Regex.run(~r/max-age=(\d+)/, directives) do
        [_, seconds] -> String.to_integer(seconds) * 1000
        nil -> nil
      end
    end)
    |> max(@min_ttl_ms)
  end
end
