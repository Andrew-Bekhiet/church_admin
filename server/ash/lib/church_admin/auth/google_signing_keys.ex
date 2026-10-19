defmodule ChurchAdmin.Auth.GoogleSigningKeys do
  @moduledoc """
  Caches the public keys Google signs Firebase ID tokens with, for as long as
  the response's `Cache-Control: max-age` allows. A token naming a key id the
  cache lacks triggers a refetch (key rotation), at most once per
  `@unknown_key_refetch_interval_ms` so forged key ids cannot flood Google.
  """

  use GenServer

  @jwks_url "https://www.googleapis.com/service_accounts/v1/jwk/securetoken@system.gserviceaccount.com"
  @unknown_key_refetch_interval_ms 60_000

  @spec start_link(keyword()) :: GenServer.on_start()
  def start_link(opts) do
    {name, opts} = Keyword.pop(opts, :name, __MODULE__)
    GenServer.start_link(__MODULE__, opts, if(name, do: [name: name], else: []))
  end

  @spec fetch_key(GenServer.server(), String.t()) ::
          {:ok, JOSE.JWK.t()} | {:error, :unknown_key | :signing_keys_unavailable}
  def fetch_key(server \\ __MODULE__, kid), do: GenServer.call(server, {:fetch_key, kid})

  @impl true
  def init(opts) do
    {:ok,
     %{
       req_options: Keyword.get(opts, :req_options, []),
       now_ms: Keyword.get(opts, :now_ms, fn -> System.monotonic_time(:millisecond) end),
       keys: %{},
       fetched_at_ms: nil,
       expires_at_ms: nil
     }}
  end

  @impl true
  def handle_call({:fetch_key, kid}, _from, state) do
    now = state.now_ms.()

    state =
      if must_fetch?(state, kid, now) do
        refresh(state, now)
      else
        {:ok, state}
      end

    case state do
      {:ok, state} -> {:reply, lookup(state, kid), state}
      {:error, state} -> {:reply, {:error, :signing_keys_unavailable}, state}
    end
  end

  defp must_fetch?(%{expires_at_ms: nil}, _kid, _now), do: true
  defp must_fetch?(%{expires_at_ms: expires_at}, _kid, now) when now >= expires_at, do: true

  defp must_fetch?(state, kid, now) do
    not Map.has_key?(state.keys, kid) and
      now - state.fetched_at_ms >= @unknown_key_refetch_interval_ms
  end

  defp lookup(state, kid) do
    case Map.fetch(state.keys, kid) do
      {:ok, key} -> {:ok, key}
      :error -> {:error, :unknown_key}
    end
  end

  defp refresh(state, now) do
    case Req.get(@jwks_url, state.req_options) do
      {:ok, %Req.Response{status: 200, body: %{"keys" => keys}} = response} ->
        {:ok,
         %{
           state
           | keys: Map.new(keys, &{&1["kid"], JOSE.JWK.from_map(&1)}),
             fetched_at_ms: now,
             expires_at_ms: now + max_age_ms(response)
         }}

      _failure ->
        {:error, state}
    end
  end

  defp max_age_ms(response) do
    response
    |> Req.Response.get_header("cache-control")
    |> Enum.find_value(0, fn directives ->
      case Regex.run(~r/max-age=(\d+)/, directives) do
        [_, seconds] -> String.to_integer(seconds) * 1000
        nil -> nil
      end
    end)
  end
end
