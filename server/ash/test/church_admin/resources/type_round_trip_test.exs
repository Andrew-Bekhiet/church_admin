defmodule ChurchAdmin.Resources.TypeRoundTripTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Attendance.{Meeting, RosterEntry}
  alias ChurchAdmin.DataQuality.DataCheck
  alias ChurchAdmin.Organization.Group
  alias ChurchAdmin.Places.Area

  require Ash.Query

  setup do
    set_system_db_session()
  end

  @polygon %{
    "type" => "Polygon",
    "coordinates" => [[[30.0, 31.0], [30.0, 32.0], [31.0, 32.0], [30.0, 31.0]]]
  }

  defp sql!(statement, params \\ []) do
    %{rows: rows} = Ecto.Adapters.SQL.query!(Repo, statement, params)
    List.flatten(rows || [])
  end

  defp insert_service! do
    [id] = sql!("insert into services (name) values ('service') returning id")
    id
  end

  test "geography is read as GeoJSON and written from GeoJSON" do
    sql!(
      "insert into areas (name, bounds) values ('read', ST_GeogFromText('SRID=4326;POLYGON((30 31, 30 32, 31 32, 30 31))'))"
    )

    seeded = Ash.Seed.seed!(Area, %{name: "written", bounds: @polygon})

    assert %{"type" => "Polygon", "coordinates" => coordinates} =
             Area
             |> Ash.Query.filter(name == "read")
             |> Ash.read_one!(authorize?: false)
             |> Map.fetch!(:bounds)

    assert coordinates == @polygon["coordinates"]

    assert Ash.get!(Area, seeded.id, authorize?: false).bounds["coordinates"] ==
             @polygon["coordinates"]
  end

  test "daterange is carried as Postgres range text" do
    service_id = insert_service!()

    sql!(
      "insert into groups (name, service_id, validity) values ('g', $1, daterange('2025-09-01', '2026-06-30'))",
      [service_id]
    )

    assert %{validity: "[2025-09-01,2026-06-30)"} = Ash.read_one!(Group, authorize?: false)
  end

  test "the meeting audience enum is read and filtered by its snake_case value" do
    service_id = insert_service!()

    sql!(
      "insert into history.meetings (name, service_id, audience) values ('m', $1, 'onlyServants')",
      [
        service_id
      ]
    )

    assert %{audience: :only_servants} = Ash.read_one!(Meeting, authorize?: false)

    assert [_] =
             Meeting
             |> Ash.Query.filter(audience == :only_servants)
             |> Ash.read!(authorize?: false)

    assert [] =
             Meeting
             |> Ash.Query.filter(audience == :only_persons)
             |> Ash.read!(authorize?: false)
  end

  test "a view with an array column and a composite key is readable" do
    service_id = insert_service!()
    [person_id] = sql!("insert into persons (name) values ('p') returning id")

    sql!("insert into persons_services (person_id, service_id) values ($1, $2)", [
      person_id,
      service_id
    ])

    sql!("insert into history.meetings (name, service_id) values ('m', $1)", [service_id])

    assert %{phones: [], as_servant: false, person_id: roster_person_id} =
             Ash.read_one!(RosterEntry, authorize?: false)

    assert roster_person_id == Ecto.UUID.load!(person_id)
  end

  test "a view with a jsonb array column is readable" do
    sql!("insert into families (name) values ('f')")

    assert %{details: [%{"check" => _} | _], completeness_percent: percent} =
             Ash.read_one!(DataCheck, authorize?: false)

    assert is_integer(percent)
  end
end
