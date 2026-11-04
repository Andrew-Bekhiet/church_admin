defmodule ChurchAdminWeb.ChangesChannelLiveTest do
  use ChurchAdmin.LiveCase

  import Plug.Conn, only: [put_req_header: 3]
  import Phoenix.ConnTest, only: [build_conn: 0, post: 3, json_response: 2]

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.Registry

  @staleness_budget_ms 2_000

  @hobbies """
  query hobbies($first: Int, $after: String) {
    hobbies(first: $first, after: $after) {
      count endKeyset results { keyset id name __typename }
    }
  }
  """

  @persons """
  query persons($first: Int, $after: String) {
    persons(first: $first, after: $after) {
      count endKeyset results { keyset id name }
    }
  }
  """

  @families """
  query families($first: Int, $after: String) {
    families(first: $first, after: $after) {
      count endKeyset results { keyset id name }
    }
  }
  """

  @person "query person($id: ID!) { person(id: $id) { id name } }"

  defp hobby!(writer, name \\ "chess") do
    id = uuid()
    Postgrex.query!(writer, "insert into hobbies (id, name) values ($1, $2)", [dump(id), name])
    id
  end

  defp rename_hobby(writer, id, name) do
    Postgrex.query!(writer, "update hobbies set name = $1 where id = $2", [name, dump(id)])
  end

  defp rename_person(writer, id, name) do
    Postgrex.query!(writer, "update persons set name = $1 where id = $2", [name, dump(id)])
  end

  defp dump(id), do: Ecto.UUID.dump!(id)

  defp person_in!(service) do
    person = Factory.person!(%{family_id: Factory.family!().id})
    Factory.in_service!(person, service)
    person
  end

  defp approved_viewer!, do: user_with!(~w(approved))

  defp admin!, do: user_with!(~w(approved readAllData))

  defp http_hash(user, document, variables) do
    build_conn()
    |> put_req_header("authorization", "Bearer #{token_for(user)}")
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
    |> get_in(["extensions", "resultHash"])
  end

  describe "registering" do
    test "the first registration gets the full result, merged from its chunks", %{writer: writer} do
      socket = join_as(admin!())
      ids = for name <- ~w(a b c), do: hobby!(writer, name)

      assert {:ok, %{}} =
               register(
                 socket,
                 window_payload("r1", @hobbies, %{"window" => %{"rows" => 3, "chunk" => 2}})
               )

      assert_push "live:result", %{ref: "r1", full: true, data: data}
      assert %{"hobbies" => %{"count" => 3, "results" => rows}} = data
      assert Enum.sort(Enum.map(rows, & &1["id"])) == Enum.sort(ids)
      assert Enum.all?(rows, &(&1["__typename"] == "Hobby"))
    end

    test "hashes from the HTTP responses of the same chunks push nothing", %{writer: writer} do
      user = admin!()
      hobby!(writer)
      hash = http_hash(user, @hobbies, %{"first" => 25})
      assert is_binary(hash)

      assert {:ok, %{}} =
               register(
                 join_as(user),
                 window_payload("r1", @hobbies, %{"resultHashes" => [hash]})
               )

      refute_push "live:result", _payload, 200
    end

    test "hashes of older data push the full result", %{writer: writer} do
      user = admin!()
      hash = http_hash(user, @hobbies, %{"first" => 25})
      hobby!(writer)

      assert {:ok, %{}} =
               register(
                 join_as(user),
                 window_payload("r1", @hobbies, %{"resultHashes" => [hash]})
               )

      assert_push "live:result", %{ref: "r1", full: true}
    end

    test "a single entity is pushed full, also when it is null" do
      socket = join_as(admin!())
      id = uuid()

      assert {:ok, %{}} =
               register(socket, %{
                 "ref" => "r1",
                 "document" => @person,
                 "variables" => %{"id" => id}
               })

      assert_push "live:result", %{ref: "r1", full: true, data: %{"person" => nil}}
    end

    test "a list without a window runs once with its variables and pushes full", %{writer: writer} do
      hobby!(writer)
      socket = join_as(admin!())

      assert {:ok, %{}} =
               register(socket, %{
                 "ref" => "r1",
                 "document" => @hobbies,
                 "variables" => %{"first" => 1}
               })

      assert_push "live:result", %{full: true, data: %{"hobbies" => %{"results" => [_row]}}}

      hobby!(writer, "second")
      assert_push "live:result", %{full: true, data: %{"hobbies" => %{"count" => 2}}}, 2_000
    end

    test "refusals carry their reason" do
      socket = join_as(admin!())

      for {payload, reason} <- [
            {window_payload("r", "mutation m { x }"), "not_a_query"},
            {window_payload("r", String.duplicate(" ", 70_000)), "too_large"},
            {window_payload("r", "query {"), "invalid"},
            {%{"ref" => "r"}, "invalid"},
            {window_payload("r", "query q { unknownField }", %{"window" => nil}), "invalid"}
          ] do
        assert {:error, %{reason: ^reason}} = register(socket, payload)
      end
    end

    test "a document that needs a missing fragment is invalid" do
      assert {:error, %{reason: "invalid"}} =
               register(
                 join_as(admin!()),
                 window_payload("r", "query q { hobbies { results { ...Missing } } }", %{
                   "window" => nil
                 })
               )
    end

    test "a socket holds at most 100 registrations, and replacing does not count" do
      socket = join_as(admin!())

      for number <- 1..100 do
        ref = push(socket, "live:register", window_payload("r#{number}", @hobbies))
        assert_reply ref, :ok, %{}, 5_000
      end

      assert {:error, %{reason: "too_many"}} = register(socket, window_payload("r101", @hobbies))
      assert {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
    end
  end

  describe "a change" do
    test "reaches a registered client within the staleness budget", %{writer: writer} do
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      id = hobby!(writer)
      committed_at = System.monotonic_time(:millisecond)

      assert_push "live:result",
                  %{ref: "r1", full: false, rows: [%{"id" => ^id}], order: [^id], count: 1},
                  @staleness_budget_ms

      assert System.monotonic_time(:millisecond) - committed_at < @staleness_budget_ms
    end

    test "sends only the changed row", %{writer: writer} do
      [_kept, renamed] = [hobby!(writer, "a"), hobby!(writer, "b")]
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      rename_hobby(writer, renamed, "c")

      assert_push "live:result", %{full: false, rows: [row]} = payload, @staleness_budget_ms
      assert %{"id" => ^renamed, "name" => "c"} = row
      refute Map.has_key?(payload, :count)
    end

    test "that a scoped user cannot see stays out of their results", %{writer: writer} do
      service = Factory.service!()
      visible = person_in!(service)
      hidden = Factory.person!(%{family_id: Factory.family!().id})
      viewer = approved_viewer!()
      Factory.grant!(viewer, :service, service.id)

      socket = join_as(viewer)
      {:ok, %{}} = register(socket, window_payload("r1", @persons))
      visible_id = visible.id
      assert_push "live:result", %{full: true, data: %{"persons" => %{"results" => [first]}}}
      assert first["id"] == visible_id

      rename_person(writer, hidden.id, "secret")
      refute_push "live:result", _payload, 1_000

      rename_person(writer, visible.id, "public")
      assert_push "live:result", %{rows: [%{"id" => ^visible_id, "name" => "public"}]}, 2_000
    end

    test "to a column the query does not read neither runs nor pushes", %{writer: writer} do
      family = Factory.family!()
      area = Factory.area!()
      street = Factory.street!(area)

      address =
        Factory.address!(%{family_id: family.id, area_id: area.id, street_id: street.id})

      document = """
      query families($first: Int, $after: String) {
        families(first: $first, after: $after) {
          endKeyset results { keyset id address { id areaId } }
        }
      }
      """

      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", document))
      assert_push "live:result", %{full: true}
      await_batch_passed()
      runs = count_runs()

      Postgrex.query!(
        writer,
        "update addresses set special_landmark = 'by the bridge' where id = $1",
        [dump(address.id)]
      )

      await_batch_passed()
      assert runs(runs) == 0
      refute_push "live:result", _payload

      Postgrex.query!(
        writer,
        "update addresses set area_id = area_id where id = $1",
        [dump(address.id)]
      )

      await_batch_passed()
      assert runs(runs) == 0
    end

    test "to anything re-runs a group that depends on everything, and pushes only a difference",
         %{writer: writer} do
      socket = join_as(admin!())
      family = Factory.family!()
      Factory.person!(%{family_id: family.id})

      document = """
      query persons($first: Int, $after: String) {
        persons(first: $first, after: $after) {
          endKeyset results { keyset id dataCheck { id isComplete } }
        }
      }
      """

      {:ok, %{}} = register(socket, window_payload("r1", document))
      assert_push "live:result", %{full: true}
      await_batch_passed()
      runs = count_runs()

      hobby!(writer)
      await_batch_passed()

      assert runs(runs) == 1
      refute_push "live:result", _payload
    end

    test "is pushed in full for a window whose rows have no id" do
      person = Factory.person!(%{family_id: Factory.family!().id})
      Factory.edit_row!("persons", person.id)

      document = """
      query edits($first: Int, $after: String) {
        edits(first: $first, after: $after) {
          count endKeyset results { keyset recordId __typename }
        }
      }
      """

      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", document))
      assert_push "live:result", %{full: true, data: %{"edits" => %{"results" => [row]}}}
      assert row["__typename"] == "Edit"

      Factory.edit_row!("persons", person.id)

      assert_push "live:result",
                  %{full: true, data: %{"edits" => %{"results" => [_first, _second]}}},
                  @staleness_budget_ms
    end
  end

  describe "sharing" do
    test "two admins share one execution and both get the change", %{writer: writer} do
      runs = count_runs()
      first = join_as(admin!())
      second = join_as(admin!())

      {:ok, %{}} = register(first, window_payload("a", @hobbies))
      {:ok, %{}} = register(second, window_payload("b", @hobbies))

      assert Registry.group_count() == 1
      assert runs(runs) == 1
      assert_push "live:result", %{ref: "a", full: true}
      assert_push "live:result", %{ref: "b", full: true}

      id = hobby!(writer)

      assert_push "live:result", %{ref: "a", rows: [%{"id" => ^id}]}, @staleness_budget_ms
      assert_push "live:result", %{ref: "b", rows: [%{"id" => ^id}]}, @staleness_budget_ms
      assert runs(runs) == 2
    end

    test "a scoped user does not share with an admin" do
      {:ok, %{}} = register(join_as(admin!()), window_payload("a", @hobbies))
      {:ok, %{}} = register(join_as(approved_viewer!()), window_payload("b", @hobbies))

      assert Registry.group_count() == 2
    end
  end

  describe "the registration lifecycle" do
    test "a socket that closes drops its group" do
      Process.flag(:trap_exit, true)
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert Registry.group_count() == 1

      ref = Process.monitor(socket.channel_pid)
      close(socket)
      assert_receive {:DOWN, ^ref, :process, _channel, _reason}, 1_000
      registry_settled()

      assert Registry.group_count() == 0
    end

    test "unregistering stops the pushes", %{writer: writer} do
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      ref = push(socket, "live:unregister", %{"ref" => "r1"})
      assert_reply ref, :ok, %{}
      assert Registry.group_count() == 0

      hobby!(writer)
      refute_push "live:result", _payload, 1_000
    end

    test "replacing a ref swaps the query behind it", %{writer: writer} do
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{ref: "r1", data: %{"hobbies" => _page}}

      {:ok, %{}} = register(socket, window_payload("r1", @persons))
      assert_push "live:result", %{ref: "r1", data: %{"persons" => _page}}
      assert Registry.group_count() == 1

      hobby!(writer)
      refute_push "live:result", _payload, 1_000
    end

    test "a result of the replaced registration is dropped in the channel" do
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      old_id = :sys.get_state(socket.channel_pid).assigns.live_by_ref["r1"].id
      {:ok, %{}} = register(socket, window_payload("r1", @persons))
      assert_push "live:result", %{full: true}

      send(socket.channel_pid, {:live_result, old_id, %{full: true, data: %{"stale" => true}}})

      refute_push "live:result", _payload, 100
    end

    test "resync replies, then pushes in full" do
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      ref = push(socket, "live:resync", %{"ref" => "r1"})

      assert_reply ref, :ok, %{}
      assert_push "live:result", %{ref: "r1", full: true}
    end

    test "unregister and resync of an unknown ref reply" do
      socket = join_as(admin!())

      assert_reply push(socket, "live:unregister", %{"ref" => "x"}), :ok, %{}
      assert_reply push(socket, "live:resync", %{"ref" => "x"}), :ok, %{}
    end

    test "a reconnect gets fresh results", %{writer: writer} do
      Process.flag(:trap_exit, true)
      user = admin!()
      socket = join_as(user)
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      hash = http_hash(user, @hobbies, %{"first" => 25})
      assert_push "live:result", %{full: true}
      ref = Process.monitor(socket.channel_pid)
      close(socket)
      assert_receive {:DOWN, ^ref, :process, _channel, _reason}, 1_000

      id = hobby!(writer)

      {:ok, %{}} =
        register(join_as(user), window_payload("r1", @hobbies, %{"resultHashes" => [hash]}))

      assert_push "live:result", %{full: true, data: data}
      assert [%{"id" => ^id}] = data["hobbies"]["results"]
    end

    test "a replication reset re-runs every group" do
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}
      runs = count_runs()

      :ok = Broadcaster.reset()
      registry_settled()
      await_batch_passed()

      assert runs(runs) == 1
      refute_push "live:result", _payload
    end

    test "a registry restart disconnects, so the client registers again" do
      Process.flag(:trap_exit, true)
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))

      channel = Process.monitor(socket.channel_pid)

      Process.exit(Process.whereis(Registry), :kill)

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 1_000
      assert_receive {:DOWN, ^channel, :process, _pid, _reason}, 1_000
      await_registry()
    end
  end

  describe "a scope change" do
    test "moves a promoted viewer's queries to the wider class, with a full push", %{
      writer: writer
    } do
      service = Factory.service!()
      visible = person_in!(service)
      hidden = Factory.person!(%{family_id: Factory.family!().id})
      viewer = approved_viewer!()
      Factory.grant!(viewer, :service, service.id)
      socket = join_as(viewer)
      {:ok, %{}} = register(socket, window_payload("r1", @persons))
      assert_push "live:result", %{data: %{"persons" => %{"results" => [_only_visible]}}}

      grant_permission(writer, viewer.uid, "readAllData")

      assert_push "live:result",
                  %{ref: "r1", full: true, data: %{"persons" => %{"results" => rows}}},
                  @staleness_budget_ms

      assert Enum.sort(Enum.map(rows, & &1["id"])) == Enum.sort([visible.id, hidden.id])
      assert :sys.get_state(socket.channel_pid).assigns.actor.read_all?
    end

    test "narrows a demoted admin's results and leaves the shared group", %{writer: writer} do
      Factory.family!()
      admin = admin!()
      other_admin = join_as(admin!())
      socket = join_as(admin)
      {:ok, %{}} = register(other_admin, window_payload("a", @families))
      {:ok, %{}} = register(socket, window_payload("b", @families))
      assert_push "live:result", %{ref: "b", full: true}
      assert Registry.group_count() == 1

      revoke_permission(writer, admin.uid, "readAllData")

      assert_push "live:result",
                  %{ref: "b", full: true, data: %{"families" => %{"results" => []}}},
                  @staleness_budget_ms

      assert Registry.group_count() == 2
    end

    test "of another uid changes nothing", %{writer: writer} do
      socket = join_as(admin!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      grant_permission(writer, approved_viewer!().uid, "readAllData")

      refute_push "live:result", _payload, 1_000
    end

    test "that loses approval disconnects", %{writer: writer} do
      Process.flag(:trap_exit, true)
      viewer = approved_viewer!()
      join_as(viewer)

      revoke_permission(writer, viewer.uid, "approved")

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, @staleness_budget_ms
    end

    test "a token that expires still closes a socket with registrations" do
      Process.flag(:trap_exit, true)
      socket = join_as(admin!(), %{"exp" => System.os_time(:second) + 2})
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 3_500
    end
  end

  defp grant_permission(writer, uid, permission) do
    Postgrex.query!(
      writer,
      "insert into auth.users_permissions (uid, permission) values ($1, $2)",
      [
        dump(uid),
        permission
      ]
    )
  end

  defp revoke_permission(writer, uid, permission) do
    Postgrex.query!(
      writer,
      "delete from auth.users_permissions where uid = $1 and permission = $2",
      [
        dump(uid),
        permission
      ]
    )
  end

  defp await_registry(attempts \\ 100) do
    case Process.whereis(Registry) do
      nil when attempts > 0 ->
        Process.sleep(10)
        await_registry(attempts - 1)

      _pid ->
        :ok
    end
  end
end
