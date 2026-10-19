defmodule ChurchAdminWeb.Graphql.MembershipNameSortsTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens, OrgWorld}

  setup do
    world = OrgWorld.extend(AuthzWorld.build!())
    %{records: records} = world

    Factory.in_service!(records.m1, records.s2)
    Factory.in_group!(records.m1, records.g2)
    Factory.in_group!(records.m1, records.g_s2)
    Factory.class!(records.s1, service_study_year: 1)

    {:ok, world: world}
  end

  defp run(conn, document, variables, world) do
    claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => world.users.read_all.uid})

    conn
    |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  @document """
  query($personId: ID!) {
    servicesAsc: serviceMemberships(filter: {personId: {eq: $personId}}, sort: [{field: SERVICE_NAME}]) {
      results { serviceName service { name } }
    }
    servicesDesc: serviceMemberships(filter: {personId: {eq: $personId}}, sort: [{field: SERVICE_NAME, order: DESC}]) {
      results { serviceName service { name } }
    }
    groupsAsc: groupMemberships(filter: {personId: {eq: $personId}}, sort: [{field: GROUP_NAME}]) {
      results { groupName group { name } }
    }
    groupsDesc: groupMemberships(filter: {personId: {eq: $personId}}, sort: [{field: GROUP_NAME, order: DESC}]) {
      results { groupName group { name } }
    }
    classesAsc: classMemberships(filter: {personId: {eq: $personId}}, sort: [{field: CLASS_NAME}]) {
      results { className class { name } }
    }
    classesDesc: classMemberships(filter: {personId: {eq: $personId}}, sort: [{field: CLASS_NAME, order: DESC}]) {
      results { className class { name } }
    }
  }
  """

  test "a person's memberships sort by the name of the service, group or class", %{
    conn: conn,
    world: world
  } do
    response = run(conn, @document, %{"personId" => world.records.m1.id}, world)
    refute Map.has_key?(response, "errors"), inspect(response["errors"])

    for {kind, name_key, linked} <- [
          {"services", "serviceName", "service"},
          {"groups", "groupName", "group"},
          {"classes", "className", "class"}
        ] do
      ascending = response["data"][kind <> "Asc"]["results"]
      descending = response["data"][kind <> "Desc"]["results"]
      names = for %{^name_key => name} <- ascending, name, do: name

      assert length(names) >= 2, kind
      assert names == Enum.sort(names), kind
      assert Enum.reject(Enum.map(descending, & &1[name_key]), &is_nil/1) == Enum.reverse(names)
      assert Enum.all?(ascending, &(&1[name_key] == (&1[linked] || %{})["name"])), kind
    end
  end
end
