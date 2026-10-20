defmodule ChurchAdminWeb.Graphql.UnapprovedUserQueryTest do
  @moduledoc """
  While a user waits for approval the client streams one query, `user(id:,
  fullData: true)` from `client/lib/.../users/queries.graphql`, and shows
  nothing else. It must keep answering without errors: the account and own
  person come back, and the places and services its scope grants name come
  back as null.
  """

  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Accounts.Preferences
  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens}

  @client_documents Path.expand("../../../../../client/lib/**/*.graphql", __DIR__)

  setup do
    {:ok, world: AuthzWorld.build!()}
  end

  defp top_level_definitions(body) do
    {definitions, _depth, _current} =
      body
      |> String.graphemes()
      |> Enum.reduce({[], 0, ""}, fn
        "{", {done, depth, current} -> {done, depth + 1, current <> "{"}
        "}", {done, 1, current} -> {[current <> "}" | done], 0, ""}
        "}", {done, depth, current} -> {done, depth - 1, current <> "}"}
        char, {done, depth, current} -> {done, depth, current <> char}
      end)

    Enum.map(definitions, &String.trim/1)
  end

  defp client_definitions do
    for path <- Path.wildcard(@client_documents),
        Path.basename(path) != "schema.graphql",
        definition <- path |> File.read!() |> top_level_definitions(),
        do: definition
  end

  defp spreads(definition),
    do: for([_, name] <- Regex.scan(~r/\.\.\.\s*(\w+)/, definition), do: name)

  defp fragment_closure([], _fragments, seen), do: seen

  defp fragment_closure([name | rest], fragments, seen) do
    if name in seen,
      do: fragment_closure(rest, fragments, seen),
      else:
        fragment_closure(
          spreads(Map.fetch!(fragments, name)) ++ rest,
          fragments,
          MapSet.put(seen, name)
        )
  end

  defp client_operation(name) do
    definitions = client_definitions()

    fragments =
      for definition <- definitions,
          [_, fragment] <- [Regex.run(~r/\Afragment\s+(\w+)/, definition)],
          into: %{},
          do: {fragment, definition}

    operation = Enum.find(definitions, &Regex.match?(~r/\Aquery\s+#{name}\s*\(/, &1))
    needed = operation |> spreads() |> fragment_closure(fragments, MapSet.new())

    Enum.join([operation | Enum.map(needed, &Map.fetch!(fragments, &1))], "\n")
  end

  defp run(conn, document, user, variables) do
    claims = FirebaseTokens.valid_claims(Factory.firebase_account!(user))

    conn
    |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  test "the client's own-user query answers an unapproved user with its account and person",
       %{conn: conn, world: world} do
    user = world.users.unapproved_with_grants
    Ash.Seed.seed!(Preferences, %{uid: user.uid})
    person = Factory.person!(uid: user.uid)

    response =
      run(conn, client_operation("user"), user, %{"id" => user.uid, "fullData" => true})

    refute Map.has_key?(response, "errors")
    %{"data" => %{"user" => data}} = response

    assert data["uid"] == user.uid
    assert data["person"]["id"] == person.id
    assert data["preferences"]["uid"] == user.uid
    assert [%{"service" => nil, "area" => nil, "group" => nil}] = data["scopeGrants"]
  end
end
