defmodule ChurchAdminWeb.Graphql.AttendanceQueriesTest do
  @moduledoc """
  The Ash-native equivalents of the client's `meetings/queries.gql` documents:
  `historyMeetingRoster`, `attendanceAnalysis`, `meetingsAttendanceAnalysis`,
  `meetingsRosterDemographics`, `personMeetings` and `watchAttendanceHistory`.
  """

  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AttendanceWorld, FirebaseTokens}

  setup do
    {:ok, world: AttendanceWorld.build!()}
  end

  defp run(conn, document, variables, kind, world) do
    claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => world.users[kind].uid})

    conn
    |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  defp data!(response) do
    refute Map.has_key?(response, "errors"), inspect(response["errors"])
    response["data"]
  end

  defp ids(results, key \\ "id"), do: MapSet.new(results, & &1[key])

  @roster """
  query($meetingId: ID!, $first: Int, $after: String) {
    rosterEntries(
      first: $first
      after: $after
      filter: {meetingId: {eq: $meetingId}}
      sort: [{field: NAME}, {field: PERSON_ID}]
    ) {
      count
      endKeyset
      results { personId meetingId name phones gender color studyYearId studyYearName photoUpdatedAt blurhash asServant }
    }
  }
  """

  test "an anonymous request reads nothing", %{conn: conn, world: world} do
    response =
      post(conn, "/gql", %{
        "query" => "{ meetings { count } rosterEntries { count } attendanceRecords { count } }",
        "variables" => %{}
      })

    assert json_response(response, 200)["data"] ==
             %{
               "meetings" => %{"count" => 0},
               "rosterEntries" => %{"count" => 0},
               "attendanceRecords" => %{"count" => 0}
             }

    assert world
  end

  test "a meeting's roster pages by keyset", %{conn: conn, world: world} do
    variables = %{"meetingId" => world.records.m_s1.id}

    first = data!(run(conn, @roster, Map.put(variables, "first", 2), :service_open, world))
    first = first["rosterEntries"]

    rest =
      run(conn, @roster, Map.put(variables, "after", first["endKeyset"]), :service_open, world)
      |> data!()
      |> Map.fetch!("rosterEntries")

    assert first["count"] == 3
    assert length(first["results"]) == 2
    assert length(rest["results"]) == 1

    entries = first["results"] ++ rest["results"]

    assert length(Enum.uniq_by(entries, & &1["personId"])) == 3
    assert Enum.count(entries, & &1["asServant"]) == 1
    assert Enum.all?(entries, &is_list(&1["phones"]))
  end

  @analysis """
  query($from: Date!, $to: Date!, $meetingIds: [ID!]!) {
    meetings(filter: {id: {in: $meetingIds}}) {
      results { id heldDays(from: $from, to: $to) }
    }
    rosterEntries(
      filter: {meetingId: {in: $meetingIds}}
      sort: [{field: PERSON_ID}, {field: AS_SERVANT}, {field: MEETING_ID}]
    ) {
      results {
        personId asServant meetingId
        attendanceRecords(filter: {day: {greaterThanOrEqual: $from, lessThanOrEqual: $to}}, sort: [{field: DAY}]) { id day }
      }
    }
  }
  """

  test "attendanceAnalysis: held days per meeting and one roster entry per person and role",
       %{conn: conn, world: world} do
    %{m_s1: m_s1, m_g1: m_g1} = world.records

    variables = %{
      "from" => "2026-03-01",
      "to" => "2026-03-31",
      "meetingIds" => [m_s1.id, m_g1.id]
    }

    data = data!(run(conn, @analysis, variables, :read_all, world))

    held = Map.new(data["meetings"]["results"], &{&1["id"], &1["heldDays"]})
    assert held[m_s1.id] == ["2026-03-01", "2026-03-08"]
    assert held[m_g1.id] == ["2026-03-01"]

    entries = data["rosterEntries"]["results"]
    keys = Enum.map(entries, &{&1["personId"], &1["asServant"], &1["meetingId"]})
    assert keys == Enum.uniq(keys)
    assert length(entries) == 5

    m1_entry = Enum.find(entries, &(&1["personId"] == world.records.m1.id))
    assert Enum.map(m1_entry["attendanceRecords"], & &1["day"]) == ["2026-03-01", "2026-03-08"]
  end

  @meetings_analysis """
  query($from: Date!, $to: Date!) {
    meetings(sort: [{field: NAME}]) {
      results {
        id name audience isArchived showKodasCheckbox serviceId serviceGender serviceStudyYear groupId
        days(filter: {day: {greaterThanOrEqual: $from, lessThanOrEqual: $to}}, sort: [{field: DAY}]) {
          day studyYearId gender personsCount servantsCount totalCount
        }
      }
    }
  }
  """

  test "meetingsAttendanceAnalysis: each meeting with its demographic days", %{
    conn: conn,
    world: world
  } do
    variables = %{"from" => "2026-03-01", "to" => "2026-03-01"}

    results =
      data!(run(conn, @meetings_analysis, variables, :service_open, world))["meetings"]["results"]

    assert ids(results) ==
             MapSet.new(for n <- [:m_s1, :m_s1_y2, :m_s1_f, :m_s1_m], do: world.records[n].id)

    m_s1 = Enum.find(results, &(&1["id"] == world.records.m_s1.id))
    assert Enum.sum_by(m_s1["days"], & &1["totalCount"]) == 3
    assert Enum.all?(m_s1["days"], &(&1["day"] == "2026-03-01"))
  end

  @demographics """
  query($day: Date!, $names: [String!]!) {
    rosterEntries(
      filter: {meeting: {name: {in: $names}}}
      sort: [{field: PERSON_ID}, {field: AS_SERVANT}, {field: MEETING_ID}]
    ) {
      results {
        personId asServant meetingId studyYearId studyYearName gender
        attendanceRecords(filter: {day: {eq: $day}}) { id day }
      }
    }
  }
  """

  test "meetingsRosterDemographics: roster entries filtered by their meeting", %{
    conn: conn,
    world: world
  } do
    variables = %{"day" => "2026-03-01", "names" => [world.records.m_g1.name]}

    entries =
      data!(run(conn, @demographics, variables, :read_all, world))["rosterEntries"]["results"]

    assert ids(entries, "meetingId") == MapSet.new([world.records.m_g1.id])
    assert length(entries) == 2

    attended = Enum.find(entries, &(&1["personId"] == world.records.grp.id))
    assert [%{"day" => "2026-03-01"}] = attended["attendanceRecords"]
  end

  @person_meetings """
  query($personId: ID!) {
    rosterEntries(
      filter: {personId: {eq: $personId}}
      sort: [{field: AS_SERVANT}, {field: MEETING_ID}]
    ) {
      results { personId asServant meetingId meeting { id name audience } }
    }
  }
  """

  test "personMeetings: one entry per meeting and role, with the meeting", %{
    conn: conn,
    world: world
  } do
    variables = %{"personId" => world.records.m1.id}

    entries =
      data!(run(conn, @person_meetings, variables, :read_all, world))["rosterEntries"]["results"]

    expected = for n <- [:m_s1, :m_s1_m], do: world.records[n].id
    assert ids(entries, "meetingId") == MapSet.new(expected)
    assert Enum.all?(entries, &(&1["meeting"]["id"] == &1["meetingId"]))
  end

  @attendance """
  query($meetingId: ID!, $from: DateTime!, $to: DateTime!) {
    attendanceRecords(
      filter: {meetingId: {eq: $meetingId}, datetime: {greaterThanOrEqual: $from, lessThan: $to}}
    ) {
      count
      results { id meetingId personId datetime asServant recordedByUser { uid } }
    }
  }
  """

  test "attendance records of a meeting within a time window", %{conn: conn, world: world} do
    variables = %{
      "meetingId" => world.records.m_s1.id,
      "from" => "2026-03-01T00:00:00Z",
      "to" => "2026-03-02T00:00:00Z"
    }

    page = data!(run(conn, @attendance, variables, :service_open, world))["attendanceRecords"]

    assert page["count"] == 3

    assert ids(page["results"]) ==
             MapSet.new(for n <- [:a_m1, :a_f2, :a_servant], do: world.records[n].id)
  end

  test "meeting by id is null outside the actor's meetings", %{conn: conn, world: world} do
    document = "query($id: ID!) { meeting(id: $id) { id name } }"

    assert %{"meeting" => nil} =
             data!(run(conn, document, %{"id" => world.records.m_g1.id}, :service_open, world))

    assert %{"meeting" => %{"id" => _}} =
             data!(run(conn, document, %{"id" => world.records.m_s1.id}, :service_open, world))
  end
end
