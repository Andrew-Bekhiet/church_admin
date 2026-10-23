defmodule ChurchAdminWeb.Graphql.LastRecorderSortTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.Activity.{ActivityDay, Call, Confession, Edit, Kodas, Visit}
  alias ChurchAdmin.{ActivityWorld, AuthzWorld, Factory, FirebaseTokens}

  @older_day ~D[2026-03-01]
  @newer_day ~D[2026-03-08]

  setup do
    world = AuthzWorld.build!()
    service = Factory.service!()
    area = Factory.area!()

    Ash.Seed.seed!(ActivityDay, %{day: @older_day})
    Ash.Seed.seed!(ActivityDay, %{day: @newer_day})

    {:ok,
     world: world,
     first_name_user: Factory.user!(%{name: "Aaa recorder"}),
     last_name_user: Factory.user!(%{name: "Zzz recorder"}),
     builders: %{
       streets: fn -> Factory.street!(area) end,
       stores: fn -> Factory.store!() end,
       services: fn -> Factory.service!() end,
       persons: fn -> Factory.person!() end,
       groups: fn -> Factory.group!(service) end,
       families: fn -> Factory.family!() end,
       classes: fn -> Factory.class!(service, %{service_study_year: 1}) end,
       areas: fn -> Factory.area!() end
     }}
  end

  defp record_entry!(:edit, query, record, user, rank) do
    Ash.Seed.seed!(Edit, %{
      table: Atom.to_string(query),
      record_id: record_id(query, record),
      time: ActivityWorld.at(rank),
      recorded_by: user.uid,
      user_role: "user"
    })
  end

  defp record_entry!(:visit, query, record, user, rank),
    do: seed_visit!(query, record, user, rank, false)

  defp record_entry!(:father_visit, query, record, user, rank),
    do: seed_visit!(query, record, user, rank, true)

  defp record_entry!(:call, _query, record, user, rank) do
    Ash.Seed.seed!(Call, %{
      person_id: record.id,
      time: ActivityWorld.at(rank),
      recorded_by: user.uid
    })
  end

  defp record_entry!(:confession, _query, record, user, rank),
    do: Ash.Seed.seed!(Confession, day_entry(record, user, rank))

  defp record_entry!(:kodas, _query, record, user, rank),
    do: Ash.Seed.seed!(Kodas, day_entry(record, user, rank))

  defp day_entry(record, user, rank) do
    day = if rem(rank, 2) == 1, do: @older_day, else: @newer_day
    %{day_id: day, person_id: record.id, recorded_by: user.uid}
  end

  defp seed_visit!(query, record, user, rank, father?) do
    Ash.Seed.seed!(Visit, %{
      table: Atom.to_string(query),
      record_id: record.id,
      time: ActivityWorld.at(rank),
      recorded_by: user.uid,
      is_father_visit: father?
    })
  end

  defp record_id(:users, record), do: record.uid
  defp record_id(_query, record), do: record.id

  @cases [
    {:streets, :edit, "LAST_EDIT_USER_NAME"},
    {:stores, :edit, "LAST_EDIT_USER_NAME"},
    {:services, :edit, "LAST_EDIT_USER_NAME"},
    {:persons, :edit, "LAST_EDIT_USER_NAME"},
    {:groups, :edit, "LAST_EDIT_USER_NAME"},
    {:families, :edit, "LAST_EDIT_USER_NAME"},
    {:classes, :edit, "LAST_EDIT_USER_NAME"},
    {:areas, :edit, "LAST_EDIT_USER_NAME"},
    {:streets, :visit, "LAST_VISIT_USER_NAME"},
    {:families, :visit, "LAST_VISIT_USER_NAME"},
    {:areas, :visit, "LAST_VISIT_USER_NAME"},
    {:families, :father_visit, "LAST_FATHER_VISIT_USER_NAME"},
    {:persons, :visit, "LAST_VISIT_AT_USER_NAME"},
    {:persons, :kodas, "LAST_KODAS_DAY_USER_NAME"},
    {:persons, :confession, "LAST_CONFESSION_DAY_USER_NAME"},
    {:persons, :call, "LAST_CALL_USER_NAME"}
  ]

  for {query, kind, field} <- @cases do
    @query query
    @kind kind
    @field field

    test "#{query} sort by #{field} follows the name of the user who recorded the latest entry",
         %{conn: conn} = context do
      %{first_name_user: first_user, last_name_user: last_user, builders: builders} = context
      build = Map.fetch!(builders, @query)

      recorded_last_by_first_name = build.()
      recorded_last_by_last_name = build.()
      never_recorded = build.()

      record_entry!(@kind, @query, recorded_last_by_first_name, last_user, 1)
      record_entry!(@kind, @query, recorded_last_by_first_name, first_user, 2)
      record_entry!(@kind, @query, recorded_last_by_last_name, first_user, 3)
      record_entry!(@kind, @query, recorded_last_by_last_name, last_user, 4)

      [first_id, last_id, none_id] =
        Enum.map(
          [recorded_last_by_first_name, recorded_last_by_last_name, never_recorded],
          &id_of(@query, &1)
        )

      wanted_ids = [first_id, last_id, none_id]

      assert sorted_ids(conn, context, @query, @field, "ASC_NULLS_LAST", wanted_ids) ==
               [first_id, last_id, none_id]

      assert sorted_ids(conn, context, @query, @field, "DESC_NULLS_LAST", wanted_ids) ==
               [last_id, first_id, none_id]
    end
  end

  test "users sort by LAST_EDIT_USER_NAME follows their own name, as the edits they made are recorded by them",
       %{conn: conn} = context do
    %{first_name_user: first_user, last_name_user: last_user} = context
    never_edited = Factory.user!()

    record_entry!(:edit, :users, first_user, first_user, 1)
    record_entry!(:edit, :users, last_user, last_user, 2)

    wanted_ids = [first_user.uid, last_user.uid, never_edited.uid]

    assert sorted_ids(conn, context, :users, "LAST_EDIT_USER_NAME", "ASC_NULLS_LAST", wanted_ids) ==
             [first_user.uid, last_user.uid, never_edited.uid]

    assert sorted_ids(conn, context, :users, "LAST_EDIT_USER_NAME", "DESC_NULLS_LAST", wanted_ids) ==
             [last_user.uid, first_user.uid, never_edited.uid]
  end

  defp id_of(_query, record), do: record.id

  defp sorted_ids(conn, %{world: world}, query, field, order, wanted_ids) do
    claims =
      world.users.read_all |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()

    document =
      "{ #{query}(sort: [{field: #{field}, order: #{order}}], first: 1000) { results { #{id_field(query)} } } }"

    response =
      conn
      |> put_req_header("authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
      |> post("/gql", %{"query" => document})
      |> json_response(200)

    refute Map.has_key?(response, "errors"), inspect(response["errors"])

    for result <- response["data"][Atom.to_string(query)]["results"],
        id = result[id_field(query)],
        id in wanted_ids,
        do: id
  end

  defp id_field(:users), do: "uid"
  defp id_field(_query), do: "id"
end
