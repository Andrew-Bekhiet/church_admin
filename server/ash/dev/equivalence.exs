# Compares, per user and root, the primary keys (and edit flags) master's
# Hasura returns with role `user` against what Ash reads with that user's
# actor, on the same database. Run through dev/equivalence.sh, which builds
# that database and Hasura; directly:
#
#   mix run --no-start dev/equivalence.exs --hasura-url URL --admin-secret S \
#     --out mismatches.csv [uid ...]
#
# Without uids it checks every auth.users_data uid plus an anonymous request.
# Writes one CSV row per mismatch and exits 1 when there is any. A unit that
# adds read policies for a resource adds its root to `roots/0`.

defmodule ChurchAdmin.Equivalence do
  alias ChurchAdmin.Accounts.{ScopeGrant, User, UserPermission}

  alias ChurchAdmin.Activity.{
    ActivityDay,
    Call,
    Confession,
    Edit,
    Kodas,
    LatestCall,
    LatestConfession,
    LatestEdit,
    LatestFatherVisit,
    LatestKodas,
    LatestVisit,
    Visit
  }

  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Catalog
  alias ChurchAdmin.Organization.{Class, Group, Service}
  alias ChurchAdmin.People.{ClassMembership, Family, GroupMembership, Person, ServiceMembership}
  alias ChurchAdmin.Places.{Address, Area, AreaStreet, District, Store, Street}

  # `hasura` is master's root field (graphql-default naming); `key` lists
  # Hasura's camelCase key fields and the matching Ash attributes; `page` is
  # the role's select `limit`, which caps every Hasura page; `flag` is a
  # per-row boolean compared with Hasura's NULL read as false.
  def roots do
    [
      %{
        name: "persons",
        hasura: "persons",
        resource: Person,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "families",
        hasura: "families",
        resource: Family,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "serviceMemberships",
        hasura: "personsServices",
        resource: ServiceMembership,
        key: [{"personId", :person_id}, {"serviceId", :service_id}],
        page: 100
      },
      %{
        name: "groupMemberships",
        hasura: "personsGroups",
        resource: GroupMembership,
        key: [{"personId", :person_id}, {"groupId", :group_id}],
        page: 100
      },
      %{name: "addresses", hasura: "addresses", resource: Address, key: [{"id", :id}], page: 100},
      %{
        name: "services",
        hasura: "services",
        resource: Service,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "classes",
        hasura: "classes",
        resource: Class,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "groups",
        hasura: "groups",
        resource: Group,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "classMemberships",
        hasura: "classesPersons",
        resource: ClassMembership,
        key: [{"classId", :class_id}, {"personId", :person_id}]
      },
      %{
        name: "areas",
        hasura: "areas",
        resource: Area,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "streets",
        hasura: "streets",
        resource: Street,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{
        name: "stores",
        hasura: "stores",
        resource: Store,
        key: [{"id", :id}],
        flag: {"userCanEdit", :user_can_edit}
      },
      %{name: "districts", hasura: "districts", resource: District, key: [{"id", :id}]},
      %{
        name: "areaStreets",
        hasura: "areasStreets",
        resource: AreaStreet,
        key: [{"areaId", :area_id}, {"streetId", :street_id}]
      },
      %{
        name: "users",
        hasura: "authUsersData",
        resource: User,
        key: [{"uid", :uid}],
        flag: {"currentUserCanManageThisUser", :current_user_can_manage_this_user}
      },
      %{
        name: "userPermissions",
        hasura: "authUsersPermissions",
        resource: UserPermission,
        key: [{"uid", :uid}, {"permission", :permission}]
      },
      %{
        name: "scopeGrants",
        hasura: "authUsersAdminOn",
        resource: ScopeGrant,
        key: [{"permissionId", :permission_id}]
      },
      %{
        name: "activityDays",
        hasura: "historyAttendanceDays",
        resource: ActivityDay,
        key: [{"day", :day}]
      },
      %{
        name: "confessions",
        hasura: "historyConfessionHistory",
        resource: Confession,
        key: [{"id", :id}]
      },
      %{name: "kodases", hasura: "historyKodasHistory", resource: Kodas, key: [{"id", :id}]},
      %{
        name: "calls",
        hasura: "historyCallHistory",
        resource: Call,
        key: [{"personId", :person_id}, {"time", :time}]
      },
      %{
        name: "visits",
        hasura: "historyVisitHistory",
        resource: Visit,
        key: [{"visitId", :visit_id}]
      },
      %{
        name: "edits",
        hasura: "historyEditHistory",
        resource: Edit,
        key: [
          {"table", :table},
          {"recordId", :record_id},
          {"time", :time},
          {"recordedBy", :recorded_by}
        ]
      }
    ] ++ catalog_roots() ++ latest_roots()
  end

  defp catalog_roots do
    lookups = [
      {"churches", Catalog.Church},
      {"fathers", Catalog.Father},
      {"schools", Catalog.School},
      {"colleges", Catalog.College},
      {"universities", Catalog.University},
      {"jobs", Catalog.Job},
      {"qualifications", Catalog.Qualification},
      {"hobbies", Catalog.Hobby},
      {"tags", Catalog.Tag},
      {"personStates", Catalog.PersonState},
      {"personTypes", Catalog.PersonType},
      {"shammasLevels", Catalog.ShammasLevel}
    ]

    for {name, resource} <- lookups do
      %{name: name, hasura: name, resource: resource, key: [{"id", :id}]}
    end ++
      [
        %{
          name: "studyYears",
          hasura: "studyYears",
          resource: Catalog.StudyYear,
          key: [{"order", :order}]
        }
      ]
  end

  # Hasura tracks the latest-per-record views without root fields, reachable
  # only through the entity relationships (`persons { lastCall { ... } }`), so
  # these roots page the entity and read the nested row. Ash rows are limited
  # to the entities Hasura showed the user, because the view can hold rows of
  # entities the user cannot read as entities (soft-deleted persons).
  defp latest_roots do
    person_logs =
      for {name, path, resource} <- [
            {"latestCalls", "lastCall", LatestCall},
            {"latestConfessions", "lastConfession", LatestConfession},
            {"latestKodases", "lastKodas", LatestKodas}
          ] do
        %{
          name: name,
          hasura: "persons",
          via: %{path: path, id_attribute: :person_id, table: nil},
          resource: resource,
          key: [{"personId", :person_id}]
        }
      end

    record_logs =
      for {entity, table, paths} <- [
            {"persons", "persons", [{"lastEdit", LatestEdit}, {"lastVisit", LatestVisit}]},
            {"families", "families",
             [
               {"lastEdit", LatestEdit},
               {"lastVisit", LatestVisit},
               {"lastFatherVisit", LatestFatherVisit}
             ]},
            {"services", "services", [{"lastEdit", LatestEdit}]},
            {"classes", "classes", [{"lastEdit", LatestEdit}]},
            {"groups", "groups", [{"lastEdit", LatestEdit}]},
            {"areas", "areas", [{"lastEdit", LatestEdit}]},
            {"streets", "streets", [{"lastEdit", LatestEdit}, {"lastVisit", LatestVisit}]},
            {"stores", "stores", [{"lastEdit", LatestEdit}]}
          ],
          {path, resource} <- paths do
        %{
          name: "#{entity}.#{path}",
          hasura: entity,
          via: %{path: path, id_attribute: :record_id, table: table},
          resource: resource,
          key: [{"table", :table}, {"recordId", :record_id}]
        }
      end

    person_logs ++ record_logs
  end

  def run(argv) do
    {opts, uids} =
      OptionParser.parse!(argv,
        strict: [hasura_url: :string, admin_secret: :string, out: :string]
      )

    hasura = %{
      url: Keyword.fetch!(opts, :hasura_url),
      secret: Keyword.fetch!(opts, :admin_secret)
    }

    uids = if uids == [], do: [nil | all_uids()], else: uids

    results = for uid <- uids, root <- roots(), do: compare(hasura, uid, root)
    mismatches = Enum.flat_map(results, &elem(&1, 1))
    compared = results |> Enum.map(&elem(&1, 0)) |> Enum.sum()

    write_csv(Keyword.fetch!(opts, :out), mismatches)

    IO.puts(
      "#{length(uids)} users x #{length(roots())} roots, #{compared} rows visible through Hasura: " <>
        "#{length(mismatches)} mismatches"
    )

    if mismatches != [], do: System.halt(1)
  end

  defp compare(hasura, uid, root) do
    {hasura_rows, entity_ids} = hasura_rows(hasura, uid, root)
    ash_rows = ash_rows(uid, root, entity_ids)
    user = uid || "anonymous"

    missing =
      for key <- Map.keys(hasura_rows) -- Map.keys(ash_rows),
          do: [user, root.name, "missing_in_ash", key, ""]

    extra =
      for key <- Map.keys(ash_rows) -- Map.keys(hasura_rows),
          do: [user, root.name, "extra_in_ash", key, ""]

    flags =
      for {key, hasura_flag} <- hasura_rows,
          Map.has_key?(ash_rows, key),
          ash_rows[key] != hasura_flag,
          do: [user, root.name, "flag_differs", key, "hasura=#{hasura_flag} ash=#{ash_rows[key]}"]

    {map_size(hasura_rows), missing ++ extra ++ flags}
  end

  defp hasura_rows(_hasura, nil, _root), do: {%{}, MapSet.new()}

  defp hasura_rows(hasura, uid, %{via: via} = root) do
    page = Map.get(root, :page, 100_000)
    nested = Enum.map_join(root.key, " ", &elem(&1, 0))

    Stream.iterate(0, &(&1 + page))
    |> Enum.reduce_while({%{}, MapSet.new()}, fn offset, {rows, ids} ->
      document =
        "{ rows: #{root.hasura}(limit: #{page}, offset: #{offset}, orderBy: [{id: ASC}]) " <>
          "{ id #{via.path} { #{nested} } } }"

      page_rows = hasura_query!(hasura, uid, document)
      ids = Enum.into(page_rows, ids, & &1["id"])

      rows =
        for entity <- page_rows, nested_row = entity[via.path], into: rows do
          {hasura_key(nested_row, root), false}
        end

      if length(page_rows) < page, do: {:halt, {rows, ids}}, else: {:cont, {rows, ids}}
    end)
  end

  defp hasura_rows(hasura, uid, root) do
    page = Map.get(root, :page, 100_000)
    fields = Enum.map(root.key, &elem(&1, 0)) ++ List.wrap(flag_field(root))
    order = Enum.map_join(root.key, ", ", fn {field, _} -> "{#{field}: ASC}" end)

    rows =
      Stream.iterate(0, &(&1 + page))
      |> Enum.reduce_while(%{}, fn offset, acc ->
        document =
          "{ rows: #{root.hasura}(limit: #{page}, offset: #{offset}, orderBy: [#{order}]) { #{Enum.join(fields, " ")} } }"

        rows = hasura_query!(hasura, uid, document)
        acc = Enum.into(rows, acc, &{hasura_key(&1, root), &1[flag_field(root)] == true})
        if length(rows) < page, do: {:halt, acc}, else: {:cont, acc}
      end)

    {rows, nil}
  end

  defp hasura_query!(hasura, uid, document) do
    response =
      Req.post!(hasura.url,
        json: %{query: document},
        headers: [
          {"x-hasura-admin-secret", hasura.secret},
          {"x-hasura-role", "user"},
          {"x-hasura-user-id", uid}
        ]
      )

    case response.body do
      %{"data" => %{"rows" => rows}} -> rows
      body -> raise "Hasura failed for #{uid}: #{inspect(body)}"
    end
  end

  defp ash_rows(uid, root, entity_ids) do
    actor = if uid, do: ActorLoader.load(uid)
    attributes = Enum.map(root.key, &elem(&1, 1))

    root.resource
    |> Ash.Query.load(List.wrap(flag_attribute(root)))
    |> Ash.read!(actor: actor, page: false)
    |> Enum.filter(&of_entity_hasura_showed?(&1, root, entity_ids))
    |> Map.new(fn row ->
      {Enum.map_join(attributes, "|", &key_part(Map.fetch!(row, &1))), ash_flag(row, root)}
    end)
  end

  defp of_entity_hasura_showed?(_row, %{via: _via}, nil), do: false

  defp of_entity_hasura_showed?(row, %{via: via}, entity_ids) do
    (is_nil(via.table) or row.table == via.table) and
      to_string(Map.fetch!(row, via.id_attribute)) in entity_ids
  end

  defp of_entity_hasura_showed?(_row, _root, _entity_ids), do: true

  defp ash_flag(row, %{flag: {_, attribute}}), do: Map.fetch!(row, attribute) == true
  defp ash_flag(_row, _root), do: false

  defp hasura_key(row, root),
    do: Enum.map_join(root.key, "|", fn {field, _} -> key_part(row[field]) end)

  # Hasura prints timestamps as "2026-03-01T09:00:00.1+00:00", Ash as DateTime.
  defp key_part(%DateTime{} = value), do: value |> DateTime.to_unix(:microsecond) |> to_string()

  defp key_part(value) when is_binary(value) do
    case DateTime.from_iso8601(value) do
      {:ok, datetime, _offset} -> key_part(datetime)
      {:error, _reason} -> value
    end
  end

  defp key_part(value), do: to_string(value)

  defp flag_field(%{flag: {field, _}}), do: field
  defp flag_field(_root), do: nil

  defp flag_attribute(%{flag: {_, attribute}}), do: attribute
  defp flag_attribute(_root), do: nil

  defp all_uids do
    %{rows: rows} = ChurchAdmin.Repo.query!("select uid::text from auth.users_data order by uid")
    List.flatten(rows)
  end

  defp write_csv(path, mismatches) do
    lines =
      for row <- [["user", "root", "kind", "key", "detail"] | mismatches] do
        Enum.map_join(row, ",", &csv_field/1)
      end

    File.write!(path, Enum.join(lines, "\n") <> "\n")
  end

  defp csv_field(value) do
    value = to_string(value)

    if String.contains?(value, [",", "\"", "\n"]),
      do: ~s("#{String.replace(value, "\"", "\"\"")}"),
      else: value
  end
end

Logger.configure(level: :warning)
{:ok, _apps} = Application.ensure_all_started([:postgrex, :ecto_sql, :req])
{:ok, _repo} = ChurchAdmin.Repo.start_link()
ChurchAdmin.Equivalence.run(System.argv())
