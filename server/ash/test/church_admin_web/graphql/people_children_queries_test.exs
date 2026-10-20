defmodule ChurchAdminWeb.Graphql.PeopleChildrenQueriesTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{Factory, FirebaseTokens, PeopleChildrenWorld}
  alias ChurchAdmin.Catalog.Hobby
  alias ChurchAdmin.People.PersonHobby

  setup do
    {:ok, world: PeopleChildrenWorld.build!()}
  end

  defp run(conn, document, variables \\ %{}, kind \\ nil, world \\ nil) do
    conn =
      case kind do
        nil ->
          conn

        kind ->
          claims =
            world.users[kind] |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()

          put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
      end

    conn
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  test "an anonymous request reads empty pages of every child table", %{conn: conn} do
    document = """
    {
      contacts { count }
      familyContacts { count }
      mainContacts { count }
      familyRelations { count }
      personHobbies { count }
      personTags { count }
    }
    """

    response = run(conn, document)

    refute Map.has_key?(response, "errors")
    assert response["data"] |> Map.values() |> Enum.all?(&(&1 == %{"count" => 0}))
  end

  test "family relations page with their families and sort by their names",
       %{conn: conn, world: world} do
    document = """
    {
      familyRelations(sort: [{field: CHILD_NAME}]) {
        count
        results { parentFamilyId childFamilyId childName parentName child { id } parent { id } }
      }
    }
    """

    %{"data" => %{"familyRelations" => page}} = run(conn, document, %{}, :group_and_area, world)
    %{f_grp: f_grp, f_area: f_area, f_deleted: f_deleted} = world.records

    assert page["count"] == 2

    # r5 reaches the soft-deleted family, which the view counts but the
    # family read hides when loaded through the relation.
    assert [
             %{"parentFamilyId" => parent_1, "child" => child_1, "childName" => name_1},
             %{"parentFamilyId" => parent_2, "child" => nil, "childName" => nil}
           ] = Enum.sort_by(page["results"], &(&1["child"] == nil))

    assert {parent_1, child_1["id"], name_1} == {f_grp.id, f_area.id, f_area.name}
    assert parent_2 == f_area.id

    assert page["results"] |> Enum.map(& &1["childFamilyId"]) |> Enum.sort() ==
             Enum.sort([f_area.id, f_deleted.id])
  end

  test "family contacts sort by the order of their person type", %{conn: conn, world: world} do
    document = """
    {
      familyContacts(sort: [{field: PERSON_TYPE_ORDER}, {field: PHONE}]) {
        count
        results { id personId isMainPhone personTypeOrder }
      }
    }
    """

    %{"data" => %{"familyContacts" => page}} = run(conn, document, %{}, :group_read, world)
    %{c_grp: c_grp, c_adm_grp: c_adm_grp, u_grp_admin: u_grp_admin} = world.records

    assert page["count"] == 3

    assert MapSet.new(page["results"], & &1["id"]) ==
             MapSet.new([c_grp.id, c_adm_grp.id, u_grp_admin.id])

    orders = Enum.map(page["results"], & &1["personTypeOrder"])
    assert orders == Enum.sort(orders, :asc)
  end

  test "a family's contacts expose their person type", %{conn: conn, world: world} do
    document = """
    query($id: ID!) {
      family(id: $id) {
        contacts { id personType { id isFamilyAdmin } }
      }
    }
    """

    %{f_grp: f_grp, c_grp: c_grp, c_adm_grp: c_adm_grp, u_grp_admin: u_grp_admin} = world.records

    %{"data" => %{"family" => %{"contacts" => results}}} =
      run(conn, document, %{"id" => f_grp.id}, :group_read, world)

    flags = Map.new(results, &{&1["id"], get_in(&1, ["personType", "isFamilyAdmin"])})

    assert flags == %{c_grp.id => nil, c_adm_grp.id => true, u_grp_admin.id => true}
    assert Enum.all?(results, &(&1["personType"] == nil or is_binary(&1["personType"]["id"])))
  end

  test "family contacts filter by whether their person type is a family admin",
       %{conn: conn, world: world} do
    document = """
    query($isAdmin: Boolean!) {
      familyContacts(filter: {personType: {isFamilyAdmin: {eq: $isAdmin}}}) {
        results { id }
      }
    }
    """

    %{c_adm_grp: c_adm_grp, u_grp_admin: u_grp_admin} = world.records

    ids = fn is_admin ->
      response = run(conn, document, %{"isAdmin" => is_admin}, :group_read, world)
      MapSet.new(response["data"]["familyContacts"]["results"], & &1["id"])
    end

    assert ids.(true) == MapSet.new([c_adm_grp.id, u_grp_admin.id])
    assert ids.(false) == MapSet.new()
  end

  test "contacts load their person and family with the destination's own policy",
       %{conn: conn, world: world} do
    document = """
    query($phone: String) {
      contacts(filter: {phone: {eq: $phone}}) {
        results { id phone person { id } family { id } }
      }
    }
    """

    contact = world.records.c_adm_svc

    %{"data" => %{"contacts" => %{"results" => [result]}}} =
      run(conn, document, %{"phone" => contact.phone}, :service_open, world)

    assert result["id"] == contact.id
    assert result["person"] == nil
  end

  test "person links page at 100 rows at most", %{conn: conn, world: world} do
    for index <- 1..101 do
      hobby = Ash.Seed.seed!(Hobby, %{name: "extra hobby #{index}"})
      Ash.Seed.seed!(PersonHobby, %{person_id: world.records.m1.id, hobby_id: hobby.id})
    end

    response =
      run(
        conn,
        "{ personHobbies(first: 500) { count results { hobbyId } } }",
        %{},
        :read_all,
        world
      )

    page = response["data"]["personHobbies"]

    assert page["count"] == 101 + length(PeopleChildrenWorld.hobby_owners())
    assert length(page["results"]) == 100
  end

  test "hobby and tag links sort by the name of what they link", %{conn: conn, world: world} do
    document = """
    {
      personHobbies(sort: [{field: HOBBY_NAME}]) { results { personId hobbyId hobbyName } }
      personTags(sort: [{field: TAG_NAME}]) { results { personId tagId tagName } }
    }
    """

    %{"data" => data} = run(conn, document, %{}, :read_all, world)

    hobby_names = Enum.map(data["personHobbies"]["results"], & &1["hobbyName"])
    tag_names = Enum.map(data["personTags"]["results"], & &1["tagName"])

    assert hobby_names == Enum.sort(hobby_names)
    assert tag_names == Enum.sort(tag_names)
    assert length(hobby_names) == length(PeopleChildrenWorld.hobby_owners())
  end
end
