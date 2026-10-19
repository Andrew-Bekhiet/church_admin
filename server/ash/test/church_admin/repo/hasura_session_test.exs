defmodule ChurchAdmin.Repo.HasuraSessionTest do
  use ChurchAdmin.DataCase, async: true

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Repo.HasuraSession
  alias ChurchAdmin.TestDomain.HasuraSessionProbe

  @uid "6f1c2a3e-0b4d-4e5f-8a9b-0c1d2e3f4a5b"
  @fail_closed_default %{
    "x-hasura-role" => "user",
    "x-hasura-user-id" => "00000000-0000-0000-0000-000000000000"
  }

  setup do
    HasuraSessionProbe.create_table!()
    :ok
  end

  defp user_actor(uid) do
    Actor.for_principal(%Principal{auth_id: "firebase-auth-id-1", uid: uid, claims: %{}})
  end

  defp session_seen_by_create(actor) do
    HasuraSessionProbe
    |> Ash.Changeset.for_create(:create, %{}, actor: actor)
    |> Ash.create!()
    |> Map.fetch!(:session)
    |> Jason.decode!()
  end

  test "a fresh connection starts with the fail-closed default" do
    {:ok, connection} =
      Repo.config()
      |> Keyword.drop([:pool, :name])
      |> Postgrex.start_link()

    %{rows: [[session]]} =
      Postgrex.query!(connection, "select current_setting('hasura.user')", [])

    GenServer.stop(connection)

    assert Jason.decode!(session) == @fail_closed_default
  end

  test "a user's write sees the user's session inside its transaction" do
    assert session_seen_by_create(user_actor(@uid)) ==
             %{"x-hasura-role" => "user", "x-hasura-user-id" => @uid}
  end

  test "a system write sees the admin role without a user id" do
    assert session_seen_by_create(Actor.system()) == %{"x-hasura-role" => "admin"}
  end

  test "a write without an actor keeps the connection default" do
    assert session_seen_by_create(nil) == @fail_closed_default
  end

  test "a principal not yet onboarded writes with the fail-closed default" do
    assert session_seen_by_create(user_actor(nil)) == @fail_closed_default
  end

  test "atomic and bulk updates see the user's session" do
    probe = Ash.create!(HasuraSessionProbe, %{}, actor: Actor.system())

    updated = Ash.update!(probe, %{}, action: :record_session, actor: user_actor(@uid))
    assert Jason.decode!(updated.session)["x-hasura-user-id"] == @uid

    other_uid = Ash.UUID.generate()

    %Ash.BulkResult{status: :success} =
      Ash.bulk_update!(HasuraSessionProbe, :record_session, %{},
        strategy: :atomic,
        actor: user_actor(other_uid)
      )

    assert %{rows: [[session]]} = Repo.query!("select session from hasura_session_probes")
    assert Jason.decode!(session)["x-hasura-user-id"] == other_uid
  end

  test "a generic action's transaction sees the user's session" do
    session =
      HasuraSessionProbe
      |> Ash.ActionInput.for_action(:current_session, %{}, actor: user_actor(@uid))
      |> Ash.run_action!()

    assert Jason.decode!(session)["x-hasura-user-id"] == @uid
  end

  test "the default names no user and no admin role" do
    assert Jason.decode!(HasuraSession.fail_closed_default()) == @fail_closed_default
  end
end
