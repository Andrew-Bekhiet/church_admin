defmodule ChurchAdminWeb.Graphql.OrganizationAttendanceMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{Factory, FirebaseTokens, Repo}

  setup do
    Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    for order <- 1..3, do: Factory.study_year!(order)

    permissions =
      ~w(approved readAllData writeAllData deleteData recordAllAttendance recordAllServantsAttendance)

    writer = Factory.user!()
    Factory.permissions!(writer, permissions)
    {:ok, writer: writer}
  end

  defp run(conn, user, document, variables) do
    token =
      %{"x-hasura-user-id" => user.uid}
      |> FirebaseTokens.valid_claims()
      |> FirebaseTokens.unsigned()

    conn
    |> put_req_header("authorization", "Bearer " <> token)
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  defp first_code(%{"errors" => [error | _]}), do: error["extensions"]["code"]

  test "createMeeting, updateMeeting, markAttendance, updateAttendanceTime and unmarkAttendance",
       %{conn: conn, writer: writer} do
    service = Factory.service!()
    person = Factory.person!(family_id: Factory.family!().id)
    Factory.in_service!(person, service)

    meeting =
      run(
        conn,
        writer,
        """
        mutation($service: ID!) {
          createMeeting(input: {name: "Meeting", serviceId: $service, audience: "personsAndServants", showKodasCheckbox: true}) {
            result { id name isArchived }
          }
        }
        """,
        %{"service" => service.id}
      )

    assert %{"id" => meeting_id, "isArchived" => false} =
             meeting["data"]["createMeeting"]["result"]

    renamed =
      run(
        conn,
        writer,
        "mutation($id: ID!) { updateMeeting(id: $id, input: {name: \"Renamed\", color: 2}) { result { name color } } }",
        %{"id" => meeting_id}
      )

    assert renamed["data"]["updateMeeting"]["result"] == %{"name" => "Renamed", "color" => 2}

    marked =
      run(
        conn,
        writer,
        """
        mutation($meeting: ID!, $person: ID!) {
          markAttendance(input: {meetingId: $meeting, personId: $person, datetime: "2026-03-02T10:00:00Z"}) {
            result { id meetingId personId asServant recordedBy recordedByUser { name } }
          }
        }
        """,
        %{"meeting" => meeting_id, "person" => person.id}
      )

    assert %{"id" => record_id, "recordedBy" => recorded_by, "asServant" => false} =
             marked["data"]["markAttendance"]["result"]

    assert recorded_by == writer.uid

    again =
      run(
        conn,
        writer,
        "mutation($meeting: ID!, $person: ID!) { markAttendance(input: {meetingId: $meeting, personId: $person, datetime: \"2026-03-02T11:00:00Z\"}) { result { id } } }",
        %{"meeting" => meeting_id, "person" => person.id}
      )

    assert first_code(again) == "attendance/already-recorded"

    moved =
      run(
        conn,
        writer,
        "mutation($id: ID!) { updateAttendanceTime(id: $id, input: {datetime: \"2026-03-03T10:00:00Z\"}) { result { datetime } } }",
        %{"id" => record_id}
      )

    assert moved["data"]["updateAttendanceTime"]["result"]["datetime"] =~ "2026-03-03T10:00:00"

    unmarked =
      run(conn, writer, "mutation($id: ID!) { unmarkAttendance(id: $id) { result { id } } }", %{
        "id" => record_id
      })

    assert unmarked["data"]["unmarkAttendance"]["result"]["id"] == record_id
  end

  test "a meeting outside the service study year range is rejected with its code", %{
    conn: conn,
    writer: writer
  } do
    service = Factory.service!(study_year_from_id: 2, study_year_to_id: 3)

    response =
      run(
        conn,
        writer,
        "mutation($service: ID!) { createMeeting(input: {name: \"Year 1\", serviceId: $service, serviceStudyYear: 1}) { result { id } } }",
        %{"service" => service.id}
      )

    assert first_code(response) == "meeting/service-study-year-mismatch"
  end
end
