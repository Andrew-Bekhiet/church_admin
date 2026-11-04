defmodule ChurchAdmin.LiveCase do
  @moduledoc """
  Live queries end to end: a real replication stream into the global
  broadcaster, which the application's `Live.Registry` listens to. Runs
  happen in the registry's tasks, outside the test process, so the sandbox
  is in `:auto` mode: `Factory` rows and client writes commit for real, and
  `cleanup_sql` undoes them. Modules of this case are `async: false`, and
  ExUnit runs those after every async module has finished.
  """

  use ExUnit.CaseTemplate

  import Phoenix.ChannelTest

  alias ChurchAdmin.Factory
  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdminWeb.LiveQueriesChannel
  alias ChurchAdminWeb.LiveQueriesSocket

  @endpoint ChurchAdminWeb.Endpoint
  @run_event [:church_admin, :realtime, :live, :run]
  @tables_tests_fill ~w(
    auth.users_data public.persons public.families public.hobbies public.services
    public.areas public.streets history.edit_history
  )

  using do
    quote do
      use ChurchAdmin.RealtimeCase, async: false

      import ChurchAdmin.LiveCase
      import Phoenix.ChannelTest

      alias ChurchAdmin.Factory

      @endpoint ChurchAdminWeb.Endpoint
      @moduletag broadcaster: :global
    end
  end

  setup_all do
    Ecto.Adapters.SQL.Sandbox.mode(ChurchAdmin.Repo, :auto)
    on_exit(fn -> Ecto.Adapters.SQL.Sandbox.mode(ChurchAdmin.Repo, :manual) end)
  end

  setup do
    ChurchAdmin.RealtimeCase.cleanup_sql([
      "truncate #{Enum.join(@tables_tests_fill, ", ")} cascade"
    ])

    :ok
  end

  def user_with!(permissions) do
    user = Factory.user!()
    Factory.permissions!(user, permissions)
    user
  end

  def token_for(user, claims \\ %{}) do
    user
    |> Factory.firebase_account!()
    |> Map.merge(claims)
    |> FirebaseTokens.valid_claims()
    |> FirebaseTokens.unsigned()
  end

  @doc "Connects and joins as `user`, ready for `register/2`."
  def join_as(user, claims \\ %{}) do
    {:ok, socket} = connect(LiveQueriesSocket, %{"token" => token_for(user, claims)})
    {:ok, %{}, joined} = subscribe_and_join(socket, LiveQueriesChannel, "live_queries", %{})
    joined
  end

  @doc "Pushes `live:register` and waits for its reply."
  def register(socket, payload) do
    ref = push(socket, "live:register", payload)
    assert_reply ref, status, response, 5_000
    {status, response}
  end

  def window_payload(ref, document, overrides \\ %{}) do
    Map.merge(
      %{
        "ref" => ref,
        "document" => document,
        "variables" => %{},
        "window" => %{"rows" => 50, "chunk" => 25}
      },
      overrides
    )
  end

  @doc "Counts window runs into the returned counter for the rest of the test."
  def count_runs(kind \\ :window) do
    counter = :counters.new(1, [])
    handler = {__MODULE__, make_ref()}
    :telemetry.attach(handler, @run_event, &__MODULE__.count_run/4, {kind, counter})
    on_exit(fn -> :telemetry.detach(handler) end)
    counter
  end

  def count_run(_event, _measurements, %{kind: kind}, {kind, counter}),
    do: :counters.add(counter, 1, 1)

  def count_run(_event, _measurements, _metadata, _other_kind), do: :ok

  def runs(counter), do: :counters.get(counter, 1)

  @doc "Waits for the registry to have seen everything sent to it so far."
  def registry_settled, do: :sys.get_state(ChurchAdmin.Realtime.Live.Registry)

  @doc "Long enough for a commit to pass the stream and the coalesce window."
  def await_batch_passed, do: Process.sleep(900)
end
