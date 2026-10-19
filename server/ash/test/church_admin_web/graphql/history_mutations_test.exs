defmodule ChurchAdminWeb.Graphql.HistoryMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, FirebaseTokens}

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp run(conn, document, user) do
    conn =
      if user do
        claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => user.uid})
        put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
      else
        conn
      end

    conn |> post("/gql", %{"query" => document}) |> json_response(200)
  end

  test "recordConfession returns the record with its person and recorder", %{
    conn: conn,
    world: world
  } do
    person = world.records.m1
    editor = world.users.read_write

    document = """
    mutation { recordConfession(input: {personId: "#{person.id}", day: "2026-03-01"}) {
      result { day { day } person { id } user { uid } } } }
    """

    assert %{"data" => %{"recordConfession" => %{"result" => result}}} =
             run(conn, document, editor)

    assert %{"day" => %{"day" => "2026-03-01"}, "person" => %{"id" => id}} = result
    assert id == person.id
    assert result["user"]["uid"] == editor.uid

    assert %{"data" => %{"recordConfession" => %{"result" => %{"person" => %{"id" => ^id}}}}} =
             run(conn, document, editor)
  end

  test "recordKodas then deleteKodas round-trips the record", %{conn: conn, world: world} do
    editor = world.users.service_open_edit

    record = """
    mutation { recordKodas(input: {personId: "#{world.records.m1.id}", day: "2026-03-01"}) {
      result { id day { day } } } }
    """

    assert %{"data" => %{"recordKodas" => %{"result" => %{"id" => id}}}} =
             run(conn, record, editor)

    delete = ~s|mutation { deleteKodas(id: "#{id}") { result { id } } }|

    assert %{"errors" => [%{"extensions" => %{"code" => "forbidden"}}]} =
             run(conn, delete, world.users.service_open)

    assert %{"data" => %{"deleteKodas" => %{"result" => %{"id" => ^id}}}} =
             run(conn, delete, editor)
  end

  test "recordCall returns the call with its person", %{conn: conn, world: world} do
    document = """
    mutation { recordCall(input: {personId: "#{world.records.m1.id}", time: "2026-03-01T09:30:00Z"}) {
      result { time person { id } } } }
    """

    assert %{"data" => %{"recordCall" => %{"result" => result}}} =
             run(conn, document, world.users.read_write)

    assert result["person"]["id"] == world.records.m1.id
    assert result["time"] =~ "2026-03-01T09:30:00"
  end

  test "recordVisit takes the subject as an enum and returns time and recorder", %{
    conn: conn,
    world: world
  } do
    document = """
    mutation { recordVisit(input: {
      subject: FAMILIES, recordId: "#{world.records.f_area.id}",
      time: "2026-03-01T09:30:00Z", isFatherVisit: true }) {
      result { time isFatherVisit user { uid } } } }
    """

    assert %{"data" => %{"recordVisit" => %{"result" => result}}} =
             run(conn, document, world.users.area_edit)

    assert result["isFatherVisit"]
    assert result["user"]["uid"] == world.users.area_edit.uid
  end

  test "a father visit to a person is rejected with validation/invalid", %{
    conn: conn,
    world: world
  } do
    document = """
    mutation { recordVisit(input: {
      subject: PERSONS, recordId: "#{world.records.m1.id}",
      time: "2026-03-01T09:30:00Z", isFatherVisit: true }) { result { time } } }
    """

    assert %{"errors" => [%{"extensions" => %{"code" => "validation/invalid"}}]} =
             run(conn, document, world.users.read_write)
  end

  test "every command answers forbidden to a reader and to anonymous", %{conn: conn, world: world} do
    person = world.records.m1.id

    documents = [
      ~s|mutation { recordConfession(input: {personId: "#{person}", day: "2026-03-01"}) { result { id } } }|,
      ~s|mutation { recordKodas(input: {personId: "#{person}", day: "2026-03-01"}) { result { id } } }|,
      ~s|mutation { recordCall(input: {personId: "#{person}"}) { result { time } } }|,
      ~s|mutation { recordVisit(input: {subject: PERSONS, recordId: "#{person}"}) { result { time } } }|
    ]

    for document <- documents, user <- [world.users.service_open, nil] do
      assert %{"errors" => [%{"extensions" => %{"code" => "forbidden"}}]} =
               run(conn, document, user)
    end
  end
end
