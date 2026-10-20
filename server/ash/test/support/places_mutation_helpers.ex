defmodule ChurchAdminWeb.PlacesMutationHelpers do
  @moduledoc """
  What the places mutation tests share: the authorization world, a GraphQL
  call as a user, and reads of the rows a mutation leaves behind.
  """

  import Phoenix.ConnTest, only: [json_response: 2, post: 3]
  import Plug.Conn, only: [put_req_header: 3]

  alias ChurchAdmin.Activity.Visit
  alias ChurchAdmin.Places.AreaStreet
  alias ChurchAdmin.{AuthzWorld, Factory, FirebaseTokens, PlacesWorld}

  require Ash.Query

  @endpoint ChurchAdminWeb.Endpoint

  @doc "The places world, plus a user holding writeAllData without approval."
  def build_world! do
    ChurchAdmin.Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    world = PlacesWorld.extend!(AuthzWorld.build!())

    unapproved_writer = Factory.user!()
    Factory.permissions!(unapproved_writer, ["readAllData", "writeAllData"])

    {:ok, world: world, unapproved_writer: unapproved_writer}
  end

  def run(conn, document, variables, user) do
    conn
    |> authorize(user)
    |> post("/gql", %{"query" => document, "variables" => variables})
    |> json_response(200)
  end

  defp authorize(conn, nil), do: conn

  defp authorize(conn, user) do
    claims = user |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()
    put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
  end

  def user(world, kind), do: world.users[kind]

  def code(response), do: get_in(response, ["errors", Access.at(0), "extensions", "code"])

  def pair_set(%{id: street_id}) do
    AreaStreet
    |> Ash.Query.filter(street_id == ^street_id)
    |> Ash.read!(authorize?: false, page: false)
    |> MapSet.new(& &1.area_id)
  end

  def streets_of_area(%{id: area_id}) do
    AreaStreet
    |> Ash.Query.filter(area_id == ^area_id)
    |> Ash.read!(authorize?: false, page: false)
    |> MapSet.new(& &1.street_id)
  end

  def visits(table, record_id) do
    Visit
    |> Ash.Query.filter(table == ^table and record_id == ^record_id)
    |> Ash.read!(authorize?: false, page: false)
  end

  def count(resource), do: resource |> Ash.read!(authorize?: false, page: false) |> length()

  def address_input(world, area, street, extra \\ %{}) do
    Map.merge(
      %{
        "areaId" => world.records[area].id,
        "streetId" => world.records[street].id,
        "countryIsoCode" => "EG"
      },
      extra
    )
  end
end
