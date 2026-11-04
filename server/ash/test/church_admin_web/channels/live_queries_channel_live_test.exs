defmodule ChurchAdminWeb.LiveQueriesChannelLiveTest do
  use ChurchAdmin.LiveCase, async: false

  import Plug.Conn, only: [put_req_header: 3]
  import Phoenix.ConnTest, only: [build_conn: 0, post: 3, json_response: 2]

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.Registry
  alias ChurchAdminWeb.LiveQueriesChannel
  alias ChurchAdminWeb.LiveQueriesSocket

  @staleness_budget_ms 2_000
  @chunk ChurchAdmin.LiveCase.chunk()
  @restore_hobbies_if_moved "alter table if exists hobbies_elsewhere rename to hobbies"

  @hobbies """
  query hobbies($first: Int, $after: String) {
    hobbies(first: $first, after: $after) {
      count endKeyset results { keyset id name __typename }
    }
  }
  """

  @filtered_hobbies """
  query hobbies($filter: HobbyFilterInput, $first: Int, $after: String) {
    hobbies(filter: $filter, first: $first, after: $after) {
      count endKeyset results { keyset id name }
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

  defp read_only_reader!, do: user_with!(~w(approved readAllData))

  defp http_hash(user, document, variables) do
    build_conn()
    |> put_req_header("authorization", "Bearer #{token_for(user)}")
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
    |> get_in(["extensions", "resultHash"])
  end

  describe "registering" do
    test "the first registration gets the full result, merged from its chunks", %{writer: writer} do
      socket = join_as(read_only_reader!())
      ids = for name <- ~w(a b c), do: hobby!(writer, name)

      assert {:ok, %{}} =
               register(
                 socket,
                 window_payload("r1", @hobbies, %{"window" => %{"rows" => 3, "chunk" => 2}})
               )

      assert_push "live:result", %{ref: "r1", full: true, data: data}
      assert %{"hobbies" => %{"count" => 3, "results" => rows}} = data
      assert rows |> Enum.map(& &1["id"]) |> Enum.sort() == Enum.sort(ids)
      assert Enum.all?(rows, &(&1["__typename"] == "Hobby"))
    end

    test "hashes from the HTTP responses of the same chunks push nothing", %{writer: writer} do
      user = read_only_reader!()
      hobby!(writer)
      hash = http_hash(user, @hobbies, %{"first" => @chunk})
      assert is_binary(hash)

      assert {:ok, %{}} =
               register(
                 join_as(user),
                 window_payload("r1", @hobbies, %{"resultHashes" => [hash]})
               )

      refute_push "live:result", _payload, 200
    end

    test "hashes of older data push the full result", %{writer: writer} do
      user = read_only_reader!()
      hash = http_hash(user, @hobbies, %{"first" => @chunk})
      hobby!(writer)

      assert {:ok, %{}} =
               register(
                 join_as(user),
                 window_payload("r1", @hobbies, %{"resultHashes" => [hash]})
               )

      assert_push "live:result", %{ref: "r1", full: true}
    end

    test "a single entity is pushed full, also when it is null" do
      socket = join_as(read_only_reader!())
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
      socket = join_as(read_only_reader!())

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
      socket = join_as(read_only_reader!())

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
                 join_as(read_only_reader!()),
                 window_payload("r", "query q { hobbies { results { ...Missing } } }", %{
                   "window" => nil
                 })
               )
    end

    test "a first run the database fails is run_failed, and a retry can succeed", %{
      writer: writer
    } do
      socket = join_as(read_only_reader!())
      move_hobbies_away(writer)

      assert {:error, %{reason: "run_failed"}} = register(socket, window_payload("r1", @hobbies))

      restore_hobbies(writer)

      assert {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
    end

    test "a socket holds at most 100 registrations, and replacing does not count" do
      socket = join_as(read_only_reader!())

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
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      id = hobby!(writer)

      assert_push "live:result",
                  %{ref: "r1", full: false, rows: [%{"id" => ^id}], order: [^id], count: 1},
                  @staleness_budget_ms
    end

    test "sends only the changed row", %{writer: writer} do
      [_kept, renamed] = [hobby!(writer, "a"), hobby!(writer, "b")]
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      rename_hobby(writer, renamed, "c")

      assert_push "live:result", %{full: false, rows: [row]} = payload, @staleness_budget_ms
      assert %{"id" => ^renamed, "name" => "c"} = row
      refute Map.has_key?(payload, :count)
    end

    test "to a held row is patched by a narrowed run, not the window", %{writer: writer} do
      id = hobby!(writer, "a")
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @filtered_hobbies))
      assert_push "live:result", %{full: true}
      sleep_past_coalesce_window()
      windows = count_runs()
      narrowed = count_runs(:narrowed)

      rename_hobby(writer, id, "b")

      assert_push "live:result", %{full: false, rows: [%{"name" => "b"}]}, @staleness_budget_ms
      assert runs(windows) == 0
      assert runs(narrowed) == 1
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

      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", document))
      assert_push "live:result", %{full: true}
      sleep_past_coalesce_window()
      runs = count_runs()

      Postgrex.query!(
        writer,
        "update addresses set special_landmark = 'by the bridge' where id = $1",
        [dump(address.id)]
      )

      sleep_past_coalesce_window()
      assert runs(runs) == 0
      refute_push "live:result", _payload

      Postgrex.query!(
        writer,
        "update addresses set area_id = area_id where id = $1",
        [dump(address.id)]
      )

      sleep_past_coalesce_window()
      assert runs(runs) == 0

      other_area_id = Factory.area!().id

      Postgrex.query!(writer, "update addresses set area_id = $1 where id = $2", [
        dump(other_area_id),
        dump(address.id)
      ])

      assert_push "live:result",
                  %{rows: [%{"address" => %{"areaId" => ^other_area_id}}]},
                  @staleness_budget_ms

      assert runs(runs) == 1
    end

    test "to a table a dataCheck list does not read neither runs nor pushes", %{writer: writer} do
      socket = join_as(read_only_reader!())
      Factory.person!(%{family_id: Factory.family!().id})

      document = """
      query persons($first: Int, $after: String) {
        persons(first: $first, after: $after) {
          endKeyset results { keyset id dataCheck { id isComplete } }
        }
      }
      """

      {:ok, %{}} = register(socket, window_payload("r1", document))
      assert_push "live:result", %{full: true}
      sleep_past_coalesce_window()
      runs = count_runs()

      hobby!(writer)
      sleep_past_coalesce_window()

      assert runs(runs) == 0
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

      socket = join_as(read_only_reader!())
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
      first = join_as(read_only_reader!())
      second = join_as(read_only_reader!())

      {:ok, %{}} = register(first, window_payload("a", @hobbies))
      {:ok, %{}} = register(second, window_payload("b", @hobbies))

      assert runs(runs) == 1
      assert_push "live:result", %{ref: "a", full: true}
      assert_push "live:result", %{ref: "b", full: true}

      id = hobby!(writer)

      assert_push "live:result", %{ref: "a", rows: [%{"id" => ^id}]}, @staleness_budget_ms
      assert_push "live:result", %{ref: "b", rows: [%{"id" => ^id}]}, @staleness_budget_ms
      assert runs(runs) == 2
    end

    test "two full admins share one persons execution" do
      Factory.person!(%{family_id: Factory.family!().id})
      runs = count_runs()
      full_admin = ~w(approved readAllData writeAllData manageAllUsers)

      {:ok, %{}} = register(join_as(user_with!(full_admin)), window_payload("a", @persons))
      {:ok, %{}} = register(join_as(user_with!(full_admin)), window_payload("b", @persons))

      assert runs(runs) == 1
    end

    test "two read-only global readers share a document selecting nothing about them" do
      Factory.person!(%{family_id: Factory.family!().id})
      runs = count_runs()

      {:ok, %{}} = register(join_as(read_only_reader!()), window_payload("a", @persons))
      {:ok, %{}} = register(join_as(read_only_reader!()), window_payload("b", @persons))

      assert runs(runs) == 1
    end

    test "two read-only global readers do not share what depends on them, however it is named" do
      Factory.person!(%{family_id: Factory.family!().id})

      for operation <- ["query renamed", "query"] do
        runs = count_runs()

        document = """
        #{operation}($first: Int, $after: String) {
          persons(first: $first, after: $after) {
            endKeyset results { keyset id userCanEdit }
          }
        }
        """

        {:ok, %{}} = register(join_as(read_only_reader!()), window_payload("a", document))
        {:ok, %{}} = register(join_as(read_only_reader!()), window_payload("b", document))

        assert runs(runs) == 2
      end
    end

    test "a scoped user does not share with a global reader" do
      runs = count_runs()

      {:ok, %{}} = register(join_as(read_only_reader!()), window_payload("a", @hobbies))
      {:ok, %{}} = register(join_as(approved_viewer!()), window_payload("b", @hobbies))

      assert runs(runs) == 2
    end
  end

  describe "the registration lifecycle" do
    test "a socket that closes drops its group" do
      Process.flag(:trap_exit, true)
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      sleep_past_coalesce_window()

      ref = Process.monitor(socket.channel_pid)
      close(socket)
      assert_receive {:DOWN, ^ref, :process, _channel, _reason}, 1_000
      registry_settled()
      runs = count_runs()

      Broadcaster.reset()
      registry_settled()

      assert runs(runs) == 0
    end

    test "unregistering stops the pushes", %{writer: writer} do
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      ref = push(socket, "live:unregister", %{"ref" => "r1"})
      assert_reply ref, :ok, %{}

      hobby!(writer)
      refute_push "live:result", _payload, 1_000
    end

    test "replacing a ref swaps the query behind it", %{writer: writer} do
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{ref: "r1", data: %{"hobbies" => _page}}

      {:ok, %{}} = register(socket, window_payload("r1", @persons))
      assert_push "live:result", %{ref: "r1", data: %{"persons" => _page}}

      hobby!(writer)
      refute_push "live:result", _payload, 1_000
    end

    test "a result of the replaced registration is dropped in the channel", %{writer: writer} do
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}
      sleep_past_coalesce_window()

      :sys.suspend(socket.channel_pid)
      replaced = push(socket, "live:register", window_payload("r1", @persons))
      hobby!(writer)
      sleep_past_coalesce_window()
      :sys.resume(socket.channel_pid)

      assert_reply replaced, :ok, %{}, 5_000
      assert_push "live:result", %{ref: "r1", full: true, data: %{"persons" => _page}}
      refute_push "live:result", _payload, 100
    end

    test "resync replies, then pushes in full" do
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}

      ref = push(socket, "live:resync", %{"ref" => "r1"})

      assert_reply ref, :ok, %{}
      assert_push "live:result", %{ref: "r1", full: true}
    end

    test "unregister and resync of an unknown ref reply" do
      socket = join_as(read_only_reader!())

      assert_reply push(socket, "live:unregister", %{"ref" => "x"}), :ok, %{}
      assert_reply push(socket, "live:resync", %{"ref" => "x"}), :ok, %{}
    end

    test "unregister and resync without a ref are refused, and the channel lives on" do
      socket = join_as(read_only_reader!())

      assert_reply push(socket, "live:unregister", %{}), :error, %{reason: "invalid"}
      assert_reply push(socket, "live:resync", %{"ref" => 1}), :error, %{reason: "invalid"}
      assert Process.alive?(socket.channel_pid)
    end

    test "a reconnect gets fresh results", %{writer: writer} do
      Process.flag(:trap_exit, true)
      user = read_only_reader!()
      socket = join_as(user)
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      hash = http_hash(user, @hobbies, %{"first" => @chunk})
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
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))
      assert_push "live:result", %{full: true}
      runs = count_runs()

      :ok = Broadcaster.reset()
      registry_settled()
      sleep_past_coalesce_window()

      assert runs(runs) == 1
      refute_push "live:result", _payload
    end

    test "a registry restart disconnects, so the client registers again" do
      Process.flag(:trap_exit, true)
      socket = join_as(read_only_reader!())
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))

      channel = Process.monitor(socket.channel_pid)

      Registry |> Process.whereis() |> Process.exit(:kill)

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

      assert rows |> Enum.map(& &1["id"]) |> Enum.sort() == Enum.sort([visible.id, hidden.id])
    end

    test "narrows a demoted reader's results and leaves the shared group", %{writer: writer} do
      Factory.family!()
      reader = read_only_reader!()
      other_reader = join_as(read_only_reader!())
      socket = join_as(reader)
      {:ok, %{}} = register(other_reader, window_payload("a", @families))
      {:ok, %{}} = register(socket, window_payload("b", @families))
      assert_push "live:result", %{ref: "a", full: true}
      assert_push "live:result", %{ref: "b", full: true}

      revoke_permission(writer, reader.uid, "readAllData")

      assert_push "live:result",
                  %{ref: "b", full: true, data: %{"families" => %{"results" => []}}},
                  @staleness_budget_ms

      refute_push "live:result", %{ref: "a"}, 100
    end

    test "reaches a manager through the managed user's grant, without a reconnect", %{
      writer: writer
    } do
      service = Factory.service!()
      manager = approved_viewer!()
      managed = approved_viewer!()
      Factory.grant!(manager, :service, service.id, edit?: true, manage_users?: true)
      Factory.grant!(managed, :service, service.id)
      socket = join_as(manager)

      document = """
      query users($first: Int, $after: String) {
        users(first: $first, after: $after, filter: {uid: {eq: "#{managed.uid}"}}) {
          endKeyset results { keyset id currentUserCanManageThisUser }
        }
      }
      """

      {:ok, %{}} = register(socket, window_payload("r1", document))
      assert_push "live:result", %{data: %{"users" => %{"results" => [row]}}}
      assert row["currentUserCanManageThisUser"] == true

      Postgrex.query!(writer, "delete from auth.users_admin_on where uid = $1", [
        dump(managed.uid)
      ])

      assert_push "live:result",
                  %{ref: "r1", full: true, data: %{"users" => %{"results" => [row]}}},
                  @staleness_budget_ms

      assert row["currentUserCanManageThisUser"] == false
    end

    test "reaches a viewer when their linked person moves to another family", %{writer: writer} do
      viewer = approved_viewer!()
      person = Factory.person!(%{family_id: Factory.family!().id, uid: viewer.uid})
      other_family = Factory.family!()
      socket = join_as(viewer)
      {:ok, %{}} = register(socket, window_payload("r1", @families))
      assert_push "live:result", %{data: %{"families" => %{"results" => [_own]}}}

      Postgrex.query!(writer, "update persons set family_id = $1 where id = $2", [
        dump(other_family.id),
        dump(person.id)
      ])

      other_family_id = other_family.id

      assert_push "live:result",
                  %{data: %{"families" => %{"results" => [%{"id" => ^other_family_id}]}}},
                  @staleness_budget_ms
    end

    test "reaches a viewer when their linked person is unlinked", %{writer: writer} do
      viewer = approved_viewer!()
      person = Factory.person!(%{family_id: Factory.family!().id, uid: viewer.uid})
      socket = join_as(viewer)
      {:ok, %{}} = register(socket, window_payload("r1", @families))
      assert_push "live:result", %{data: %{"families" => %{"results" => [_own]}}}
      sleep_past_coalesce_window()

      Postgrex.query!(writer, "update persons set uid = null where id = $1", [dump(person.id)])

      assert_push "live:result",
                  %{full: true, data: %{"families" => %{"results" => []}}},
                  @staleness_budget_ms
    end

    test "is not assumed from an edit of a person nobody is linked to", %{writer: writer} do
      unlinked = Factory.person!(%{family_id: Factory.family!().id})
      Phoenix.PubSub.subscribe(ChurchAdmin.PubSub, Broadcaster.viewer_scope_topic())
      sleep_past_coalesce_window()

      rename_person(writer, unlinked.id, "renamed")

      refute_receive :viewer_scope_changed, 900
    end

    test "made while the channel was down applies to the rejoin, not the socket's old actor", %{
      writer: writer
    } do
      Factory.family!()
      viewer = read_only_reader!()
      {:ok, connected} = connect(LiveQueriesSocket, %{"token" => token_for(viewer)})

      revoke_permission(writer, viewer.uid, "readAllData")

      {:ok, %{}, socket} = subscribe_and_join(connected, LiveQueriesChannel, "live_queries", %{})
      {:ok, %{}} = register(socket, window_payload("r1", @families))

      assert_push "live:result", %{full: true, data: %{"families" => %{"results" => []}}}
    end

    test "whose new run the database fails disconnects, as no reply can tell the client", %{
      writer: writer
    } do
      Process.flag(:trap_exit, true)
      viewer = approved_viewer!()
      socket = join_as(viewer)
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))

      move_hobbies_away(writer)
      grant_permission(writer, viewer.uid, "readAllData")

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, @staleness_budget_ms
    end

    test "of another uid changes nothing", %{writer: writer} do
      socket = join_as(read_only_reader!())
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
      socket = join_as(read_only_reader!(), %{"exp" => System.os_time(:second) + 2})
      {:ok, %{}} = register(socket, window_payload("r1", @hobbies))

      assert_receive %Phoenix.Socket.Broadcast{event: "disconnect"}, 3_500
    end
  end

  defp move_hobbies_away(writer) do
    Postgrex.query!(writer, "alter table hobbies rename to hobbies_elsewhere", [])
    ChurchAdmin.RealtimeCase.cleanup_sql([@restore_hobbies_if_moved])
  end

  defp restore_hobbies(writer), do: Postgrex.query!(writer, @restore_hobbies_if_moved, [])

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
