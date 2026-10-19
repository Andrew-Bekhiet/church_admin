defmodule ChurchAdminWeb.Graphql.CatalogMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Catalog.{Church, PersonType}
  alias ChurchAdmin.{AuthzWorld, FirebaseTokens}

  @mutations [
    {"createChurch", "{name: \"n\"}"},
    {"createCollege", "{name: \"n\"}"},
    {"createDistrict", "{name: \"n\"}"},
    {"createFather", "{name: \"n\"}"},
    {"createHobby", "{name: \"n\", color: 3}"},
    {"createJob", "{name: \"n\"}"},
    {"createPersonType", "{name: \"n\"}"},
    {"createQualification", "{name: \"n\"}"},
    {"createSchool", "{name: \"n\"}"},
    {"createTag", "{name: \"n\", color: 3}"}
  ]

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp run(conn, document, user) do
    claims = FirebaseTokens.valid_claims(%{"x-hasura-user-id" => user.uid})

    conn
    |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    |> post("/gql", %{"query" => document})
    |> json_response(200)
  end

  for {field, input} <- @mutations do
    @field field
    @input input

    test "#{field} creates the row for an approved user and returns the existing one the next time",
         %{conn: conn, world: world} do
      document = "mutation { #{@field}(input: #{@input}) { result { id name } } }"

      first = run(conn, document, world.users.approved_plain)
      second = run(conn, document, world.users.approved_plain)

      assert %{"data" => %{@field => %{"result" => %{"id" => id, "name" => "n"}}}} = first
      assert %{"data" => %{@field => %{"result" => %{"id" => ^id}}}} = second
    end

    test "#{field} answers forbidden to an unapproved user", %{conn: conn, world: world} do
      document = "mutation { #{@field}(input: #{@input}) { result { id } } }"

      assert %{"errors" => [%{"extensions" => %{"code" => "forbidden"}}]} =
               run(conn, document, world.users.unapproved)
    end
  end

  test "createChurch hides the new church whatever the client sends", %{conn: conn, world: world} do
    document = "mutation { createChurch(input: {name: \"c\"}) { result { name isHidden } } }"

    assert %{"data" => %{"createChurch" => %{"result" => %{"isHidden" => true}}}} =
             run(conn, document, world.users.approved_plain)

    assert [%{is_hidden: true}] =
             Church |> Ash.read!(authorize?: false) |> Enum.filter(&(&1.name == "c"))

    rejected =
      "mutation { createChurch(input: {name: \"x\", isHidden: false}) { result { id } } }"

    assert %{"errors" => [_ | _]} = run(conn, rejected, world.users.approved_plain)
  end

  test "createPersonType presets family admin off and hidden on, with the sequence's order",
       %{conn: conn, world: world} do
    document = """
    mutation { createPersonType(input: {name: "role"}) {
      result { name order isHidden isFamilyAdmin } } }
    """

    assert %{"data" => %{"createPersonType" => %{"result" => result}}} =
             run(conn, document, world.users.approved_plain)

    assert %{"isHidden" => true, "isFamilyAdmin" => false, "order" => order} = result
    assert is_integer(order)
    assert Enum.any?(Ash.read!(PersonType, authorize?: false), &(&1.name == "role"))
  end

  test "createPersonType reports a taken order as person-type/order-taken",
       %{conn: conn, world: world} do
    %{rows: [[taken]]} = ChurchAdmin.Repo.query!("select nextval('person_types_order_seq')")

    ChurchAdmin.Repo.query!(
      "insert into person_types (name, \"order\") values ('squatter', $1)",
      [taken]
    )

    ChurchAdmin.Repo.query!("select setval('person_types_order_seq', $1, false)", [taken])

    document = "mutation { createPersonType(input: {name: \"late\"}) { result { id } } }"

    assert %{"errors" => [%{"extensions" => %{"code" => "person-type/order-taken"}}]} =
             run(conn, document, world.users.approved_plain)
  end
end
