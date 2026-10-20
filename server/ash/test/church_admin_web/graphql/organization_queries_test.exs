defmodule ChurchAdminWeb.Graphql.OrganizationQueriesTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens, OrgWorld}

  setup do
    {:ok, world: OrgWorld.extend(AuthzWorld.build!())}
  end

  defp run(conn, document, variables \\ %{}, kind, world) do
    claims = FirebaseTokens.valid_claims(Factory.firebase_account!(world.users[kind]))

    conn
    |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  defp ids(page), do: page["results"] |> Enum.map(& &1["id"]) |> MapSet.new()

  test "an anonymous request reads empty pages", %{conn: conn} do
    response =
      conn
      |> post("/gql", %{
        "query" =>
          "{ services { count } classes { count } groups { count } classMemberships { count } }"
      })
      |> json_response(200)

    refute Map.has_key?(response, "errors")

    assert response["data"] == %{
             "services" => %{"count" => 0},
             "classes" => %{"count" => 0},
             "groups" => %{"count" => 0},
             "classMemberships" => %{"count" => 0}
           }
  end

  test "services list with userCanEdit, their classes, groups and admins", %{
    conn: conn,
    world: world
  } do
    document = """
    {
      services(sort: [{field: NAME}]) {
        count
        results {
          id userCanEdit
          classes { id userCanEdit }
          groups { id }
          admins { uid }
          nextService { id }
        }
      }
    }
    """

    %{"data" => %{"services" => page}} = run(conn, document, :service_year_edit, world)

    assert page["count"] == 2
    assert ids(page) == MapSet.new([world.records.s1.id, world.records.s2.id])

    s1 = Enum.find(page["results"], &(&1["id"] == world.records.s1.id))
    assert s1["userCanEdit"] == true
    assert s1["nextService"] == nil

    assert MapSet.new(s1["classes"], & &1["id"]) ==
             MapSet.new([world.records.c_y1.id, world.records.c_y12_f.id])

    assert s1["groups"] == []
    assert Enum.find(s1["classes"], &(&1["id"] == world.records.c_y1.id))["userCanEdit"] == true

    admin_uids = Enum.map(s1["admins"], & &1["uid"])
    assert world.users.service_year_edit.uid in admin_uids
  end

  test "a class, a group and a service answer by id, others as null", %{conn: conn, world: world} do
    document = """
    query($class: ID!, $group: ID!, $service: ID!) {
      class(id: $class) { id service { id } classMemberships { classId personId } }
      group(id: $group) { id service { id } groupMemberships { personId } }
      service(id: $service) { id }
    }
    """

    variables = %{
      "class" => world.records.c_y1.id,
      "group" => world.records.g1.id,
      "service" => world.records.s_deleted.id
    }

    %{"data" => data} = run(conn, document, variables, :group_read, world)

    assert data["class"] == nil
    assert %{"id" => _, "service" => %{"id" => _}} = data["group"]
    assert data["service"] == nil

    %{"data" => %{"class" => class}} = run(conn, document, variables, :service_open, world)

    assert class["service"]["id"] == world.records.s1.id
    assert length(class["classMemberships"]) == 2
  end

  test "class memberships page like the other link tables", %{conn: conn, world: world} do
    document = """
    { classMemberships(first: 3) { count endKeyset results { classId personId class { id } person { id } } } }
    """

    %{"data" => %{"classMemberships" => page}} = run(conn, document, :read_all, world)

    assert page["count"] == 5
    assert length(page["results"]) == 3

    live_classes =
      for %{"class" => %{"id" => id}} = row <- page["results"], do: {id, row["classId"]}

    assert live_classes != []
    assert Enum.all?(live_classes, fn {loaded, key} -> loaded == key end)
  end

  test "relationship sort fields order by the related record", %{conn: conn, world: world} do
    document = """
    {
      classes(sort: [{field: STUDY_YEAR_FROM_ORDER, order: DESC}, {field: NAME}]) {
        results { serviceStudyYear }
      }
      groups(sort: [{field: SERVICE_NAME, order: DESC}, {field: NAME}]) {
        results { service { name } }
      }
      services(sort: [{field: NEXT_SERVICE_NAME}, {field: STUDY_YEAR_TO_ORDER}]) {
        count
      }
    }
    """

    %{"data" => data} = run(conn, document, :read_all, world)

    years = Enum.map(data["classes"]["results"], & &1["serviceStudyYear"])
    assert years == Enum.sort(years, :desc)

    service_names = Enum.map(data["groups"]["results"], & &1["service"]["name"])
    assert service_names == Enum.sort(service_names, :desc)
    assert data["services"]["count"] == 2
  end
end
