defmodule ChurchAdminWeb.Graphql.ActivityQueriesTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{ActivityWorld, FirebaseTokens}

  setup do
    {:ok, world: ActivityWorld.build!()}
  end

  defp run(conn, document, variables, kind, world) do
    claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => world.users[kind].uid})

    conn
    |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  @person_history """
  query($personId: ID!, $first: Int, $after: String) {
    visits(
      filter: {table: {eq: "persons"}, recordId: {eq: $personId}}
      sort: [{field: TIME, order: DESC}]
      first: $first
      after: $after
    ) {
      count
      endKeyset
      results { id time isFatherVisit user { id } }
    }
    confessions(
      filter: {personId: {eq: $personId}}
      sort: [{field: TIME, order: DESC}]
    ) {
      count
      results { id time dayId personId user { id } person { id } day { day } }
    }
    calls(filter: {personId: {eq: $personId}}, sort: [{field: TIME, order: DESC}]) {
      count
      results { time user { id } }
    }
  }
  """

  test "a service reader pages a person's visits, confessions and calls newest first",
       %{conn: conn, world: world} do
    m1 = world.records.m1.id

    %{"data" => data} =
      run(conn, @person_history, %{"personId" => m1, "first" => 1}, :service_open, world)

    assert data["visits"]["count"] == 2

    assert [%{"time" => latest, "isFatherVisit" => false, "user" => %{"id" => recorder}}] =
             data["visits"]["results"]

    assert latest == DateTime.to_iso8601(ActivityWorld.at(200))
    assert recorder == world.recorded_by

    assert data["confessions"]["count"] == 2

    assert [%{"dayId" => day_2, "person" => %{"id" => ^m1}, "day" => %{"day" => day_2}}, _] =
             data["confessions"]["results"]

    assert day_2 == Date.to_iso8601(ActivityWorld.day_2())
    assert data["calls"]["count"] == 2

    %{"data" => %{"visits" => rest}} =
      run(
        conn,
        @person_history,
        %{"personId" => m1, "first" => 1, "after" => data["visits"]["endKeyset"]},
        :service_open,
        world
      )

    assert [%{"time" => older}] = rest["results"]
    assert older == DateTime.to_iso8601(ActivityWorld.at(150))
  end

  test "a reader outside the person's scope sees none of the person's history",
       %{conn: conn, world: world} do
    %{"data" => data} =
      run(conn, @person_history, %{"personId" => world.records.m1.id}, :area_read, world)

    assert data["visits"]["count"] == 0
    assert data["confessions"]["count"] == 0
    assert data["calls"]["count"] == 0
  end

  test "kodas of a day are listed by the day", %{conn: conn, world: world} do
    document = """
    query($day: Date!) {
      kodases(filter: {dayId: {eq: $day}}) { count results { id personId dayId } }
    }
    """

    %{"data" => %{"kodases" => kodases}} =
      run(conn, document, %{"day" => Date.to_iso8601(ActivityWorld.day_2())}, :read_all, world)

    assert [%{"personId" => person_id}] = kodases["results"]
    assert person_id == world.records.m1.id
  end

  test "the latest views, single reads and attendance days answer", %{conn: conn, world: world} do
    f_area = world.records.f_area.id

    document = """
    query($familyId: ID!) {
      latestVisits(filter: {table: {eq: "families"}, recordId: {eq: $familyId}}) {
        results { time user { id } }
      }
      latestFatherVisits(filter: {recordId: {eq: $familyId}}) { results { time } }
      latestEdits(filter: {recordId: {eq: $familyId}}) { count }
      latestCalls { count }
      latestConfessions { count }
      latestKodases { count }
      edits(filter: {recordId: {eq: $familyId}}) { count }
      activityDays { count results { day } }
    }
    """

    %{"data" => data} = run(conn, document, %{"familyId" => f_area}, :read_all, world)

    assert [%{"time" => visit_time}] = data["latestVisits"]["results"]
    assert visit_time == DateTime.to_iso8601(ActivityWorld.at(200))
    assert [%{"time" => father_time}] = data["latestFatherVisits"]["results"]
    assert father_time == DateTime.to_iso8601(ActivityWorld.at(300))
    assert data["latestEdits"]["count"] == 1
    assert data["latestCalls"]["count"] == length(ActivityWorld.person_names())
    assert data["latestConfessions"]["count"] == length(ActivityWorld.person_names())
    assert data["latestKodases"]["count"] == length(ActivityWorld.person_names())
    assert data["edits"]["count"] >= 2
    assert data["activityDays"]["count"] == 2
  end

  test "a single confession and visit read by id are scoped like the lists",
       %{conn: conn, world: world} do
    m1 = world.records.m1.id

    ids = """
    query($personId: ID!) {
      confessions(filter: {personId: {eq: $personId}}) { results { id } }
      visits(filter: {recordId: {eq: $personId}}) { results { id } }
    }
    """

    %{"data" => %{"confessions" => confessions, "visits" => visits}} =
      run(conn, ids, %{"personId" => m1}, :read_all, world)

    [%{"id" => confession_id} | _] = confessions["results"]
    [%{"id" => visit_id} | _] = visits["results"]

    single = """
    query($confession: ID!, $visit: ID!) {
      confession(id: $confession) { id personId }
      visit(id: $visit) { id recordId }
    }
    """

    variables = %{"confession" => confession_id, "visit" => visit_id}

    %{"data" => visible} = run(conn, single, variables, :service_open, world)
    assert visible["confession"]["personId"] == m1
    assert visible["visit"]["recordId"] == m1

    %{"data" => hidden} = run(conn, single, variables, :area_read, world)
    assert hidden["confession"] == nil
    assert hidden["visit"] == nil
  end
end
