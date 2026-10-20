defmodule ChurchAdminWeb.Graphql.AccountsReadGapsTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Accounts.DeviceToken
  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens}

  setup do
    world = AuthzWorld.build!()
    {:ok, world: world}
  end

  defp run(conn, document, world, kind, variables \\ %{}) do
    claims = world.users[kind] |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()

    conn
    |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  defp days_ahead(days), do: DateTime.add(DateTime.utc_now(), days, :day)

  defp record_edit!(table, record_id, time, recorder) do
    Ecto.Adapters.SQL.query!(
      ChurchAdmin.Repo,
      ~s|insert into history.edit_history ("table", record_id, "time", recorded_by, user_role) values ($1, $2, $3, $4, $5)|,
      [table, Ecto.UUID.dump!(record_id), time, Ecto.UUID.dump!(recorder.uid), "admin"]
    )
  end

  defp grants_of(response, user) do
    users = response["data"]["users"]["results"]
    Enum.find(users, &(&1["uid"] == user.uid))["scopeGrants"]
  end

  @grants """
  {
    users {
      results {
        uid
        scopeGrants {
          permissionId
          service { id }
          group { id }
          area { id }
          studyYear { order }
          classes { id }
        }
      }
    }
  }
  """

  describe "ScopeGrant relationships" do
    test "a reader of the scopes sees the area, service, group and study year of each grant",
         %{conn: conn, world: world} do
      %{s1: s1, g1: g1, a1: a1} = world.records
      response = run(conn, @grants, world, :read_all)

      refute Map.has_key?(response, "errors")

      assert [%{"service" => %{"id" => service_id}, "group" => nil, "area" => nil}] =
               grants_of(response, world.users.service_open)

      assert service_id == s1.id

      assert [%{"group" => %{"id" => group_id}, "service" => nil}] =
               grants_of(response, world.users.group_read)

      assert group_id == g1.id

      assert [%{"area" => %{"id" => area_id}, "service" => nil}] =
               grants_of(response, world.users.area_read)

      assert area_id == a1.id

      assert [%{"studyYear" => %{"order" => 1}}] = grants_of(response, world.users.service_year)
      assert [%{"studyYear" => nil}] = grants_of(response, world.users.service_open)
    end

    test "a reader who cannot see the group gets null, not the group",
         %{conn: conn, world: world} do
      response = run(conn, @grants, world, :approved_plain)

      refute Map.has_key?(response, "errors")

      assert [%{"group" => nil}] = grants_of(response, world.users.group_read)
      assert [%{"group" => nil, "classes" => []}] = grants_of(response, world.users.service_year)
    end
  end

  describe "ScopeGrant.classes" do
    setup %{world: world} do
      %{s1: s1} = world.records
      %{c_y1: c_y1, c_y12_f: c_y12_f} = world.records

      both = Factory.user!()
      year_only = Factory.user!()
      gender_only = Factory.user!()
      other_year = Factory.user!()

      Factory.grant!(both, :service, s1.id, study_year: 1, gender: false)
      Factory.grant!(year_only, :service, s1.id, study_year: 1)
      Factory.grant!(gender_only, :service, s1.id, gender: false)
      Factory.grant!(other_year, :service, s1.id, study_year: 2, gender: false)

      {:ok,
       users: %{
         both: both,
         year_only: year_only,
         gender_only: gender_only,
         other_year: other_year
       },
       classes: %{c_y1: c_y1, c_y12_f: c_y12_f}}
    end

    test "lists the grant's service's classes that cover its study year and gender",
         %{conn: conn, world: world, users: users, classes: classes} do
      response = run(conn, @grants, world, :read_all)

      assert [%{"classes" => both}] = grants_of(response, users.both)

      assert both |> Enum.map(& &1["id"]) |> Enum.sort() ==
               Enum.sort([classes.c_y1.id, classes.c_y12_f.id])

      assert [%{"classes" => [%{"id" => id}]}] = grants_of(response, users.other_year)
      assert id == classes.c_y12_f.id
    end

    test "a null study year or gender on the grant does not restrict that dimension",
         %{conn: conn, world: world, users: users, classes: classes} do
      response = run(conn, @grants, world, :read_all)
      both_classes = Enum.sort([classes.c_y1.id, classes.c_y12_f.id])

      assert [%{"classes" => year_only}] = grants_of(response, users.year_only)
      assert year_only |> Enum.map(& &1["id"]) |> Enum.sort() == both_classes
      assert [%{"classes" => gender_only}] = grants_of(response, users.gender_only)
      assert gender_only |> Enum.map(& &1["id"]) |> Enum.sort() == both_classes
      assert [%{"classes" => unrestricted}] = grants_of(response, world.users.service_open)
      assert unrestricted |> Enum.map(& &1["id"]) |> Enum.sort() == both_classes
    end

    test "only the classes the reader can see are listed", %{
      conn: conn,
      world: world,
      users: users
    } do
      response = run(conn, @grants, world, :approved_plain)

      assert [%{"classes" => []}] = grants_of(response, users.both)
    end
  end

  describe "User.deviceTokens" do
    test "a reader sees its own tokens and no one else's", %{conn: conn, world: world} do
      own = world.users.read_all
      other = world.users.approved_plain
      Ash.Seed.seed!(DeviceToken, %{uid: own.uid, token: "own-token"})
      Ash.Seed.seed!(DeviceToken, %{uid: other.uid, token: "other-token"})

      response =
        run(conn, "{ users { results { uid deviceTokens { token } } } }", world, :read_all)

      by_uid = Map.new(response["data"]["users"]["results"], &{&1["uid"], &1["deviceTokens"]})

      assert by_uid[own.uid] == [%{"token" => "own-token"}]
      assert by_uid[other.uid] == []
    end
  end

  describe "User.latestEdit and User.lastEdit" do
    setup %{world: world} do
      recorder = world.users.servant
      %{m1: m1, f_area: f_area} = world.records

      times = %{m1_older: days_ahead(1), m1: days_ahead(2), f_area: days_ahead(3)}
      record_edit!("persons", m1.id, times.m1_older, recorder)
      record_edit!("persons", m1.id, times.m1, recorder)
      record_edit!("families", f_area.id, times.f_area, recorder)

      {:ok, recorder: recorder, times: times}
    end

    @edits "{ users { results { uid lastEdit latestEdit { time table } } } }"

    defp edit_of(response, user) do
      Enum.find(response["data"]["users"]["results"], &(&1["uid"] == user.uid))
    end

    test "lastEdit is the newest edit the reader can see that the user recorded",
         %{conn: conn, world: world, recorder: recorder, times: times} do
      response = run(conn, @edits, world, :read_all)

      assert %{"lastEdit" => last, "latestEdit" => %{"time" => latest}} =
               edit_of(response, recorder)

      assert last == DateTime.to_iso8601(times.f_area)
      assert latest == last
      assert %{"lastEdit" => nil, "latestEdit" => nil} = edit_of(response, world.users.read_all)
    end

    test "edits on records the reader cannot see do not count",
         %{conn: conn, world: world, recorder: recorder, times: times} do
      response = run(conn, @edits, world, :service_open)

      assert edit_of(response, recorder)["lastEdit"] == DateTime.to_iso8601(times.m1)
      assert edit_of(response, recorder)["latestEdit"]["table"] == "persons"

      response = run(conn, @edits, world, :approved_plain)

      assert %{"lastEdit" => nil, "latestEdit" => nil} = edit_of(response, recorder)
    end

    test "users filter and sort by lastEdit",
         %{conn: conn, world: world, recorder: recorder, times: times} do
      filtered = """
      query($after: DateTime) {
        users(filter: {lastEdit: {greaterThan: $after}}) { results { uid } }
      }
      """

      response =
        run(conn, filtered, world, :read_all, %{
          "after" => DateTime.to_iso8601(times.m1)
        })

      assert [%{"uid" => uid}] = response["data"]["users"]["results"]
      assert uid == recorder.uid

      sorted = "{ users(sort: [{field: LAST_EDIT, order: DESC_NULLS_LAST}]) { results { uid } } }"
      response = run(conn, sorted, world, :read_all)
      assert %{"uid" => ^uid} = hd(response["data"]["users"]["results"])
    end
  end

  describe "User.personName" do
    test "is the linked person's name, null without a person", %{conn: conn, world: world} do
      response =
        run(conn, "{ users { results { uid personName } } }", world, :read_all)

      names = Map.new(response["data"]["users"]["results"], &{&1["uid"], &1["personName"]})

      assert names[world.users.servant.uid] == world.records.servant.name
      assert names[world.users.approved_plain.uid] == world.records.self.name
      assert names[world.users.read_all.uid] == nil
    end

    test "users filter and sort by personName", %{conn: conn, world: world} do
      name = world.records.servant.name

      filtered = """
      query($name: String) { users(filter: {personName: {eq: $name}}) { results { uid } } }
      """

      response = run(conn, filtered, world, :read_all, %{"name" => name})
      assert [%{"uid" => uid}] = response["data"]["users"]["results"]
      assert uid == world.users.servant.uid

      sorted = "{ users(sort: [{field: PERSON_NAME, order: ASC}]) { results { personName } } }"
      response = run(conn, sorted, world, :read_all)

      names = for %{"personName" => name} <- response["data"]["users"]["results"], name, do: name
      assert names == Enum.sort(names)
    end
  end
end
