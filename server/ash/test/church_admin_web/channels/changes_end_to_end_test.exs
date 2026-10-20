defmodule ChurchAdminWeb.ChangesEndToEndTest do
  use ChurchAdmin.RealtimeCase, async: false

  import Phoenix.ChannelTest

  alias ChurchAdmin.Factory
  alias ChurchAdmin.FirebaseTokens
  alias ChurchAdminWeb.ChangesChannel
  alias ChurchAdminWeb.ChangesSocket

  @endpoint ChurchAdminWeb.Endpoint
  @moduletag broadcaster: :global
  @staleness_budget_ms 2_000

  setup tags do
    ChurchAdmin.DataCase.setup_sandbox(tags)
    user = ChurchAdmin.Factory.user!()
    ChurchAdmin.Factory.permissions!(user, ~w(approved))

    {:ok,
     token: FirebaseTokens.unsigned(FirebaseTokens.valid_claims(Factory.firebase_account!(user)))}
  end

  test "a commit reaches a joined client within the staleness budget", %{
    writer: writer,
    token: token
  } do
    {:ok, socket} = connect(ChangesSocket, %{"token" => token})

    {:ok, %{version: version}, _socket} =
      subscribe_and_join(socket, ChangesChannel, "changes", %{"since" => nil})

    hobby = uuid()

    Postgrex.query!(
      writer,
      "insert into hobbies (id, name) values ($1, 'Hobby ' || $1::uuid::text)",
      [
        Ecto.UUID.dump!(hobby)
      ]
    )

    committed_at = System.monotonic_time(:millisecond)
    cleanup_sql(["delete from hobbies where id = '#{hobby}'"])

    assert_push "changes", %{from: ^version, changes: changes}, @staleness_budget_ms
    latency_ms = System.monotonic_time(:millisecond) - committed_at

    assert %{type: "Hobby", id: hobby, op: "insert"} in changes
    assert latency_ms < @staleness_budget_ms
  end
end
