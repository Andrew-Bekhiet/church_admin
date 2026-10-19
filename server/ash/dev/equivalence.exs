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
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Organization.{Class, Group, Service}
  alias ChurchAdmin.People.{ClassMembership, Family, GroupMembership, Person, ServiceMembership}
  alias ChurchAdmin.Places.Address

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
      }
    ]
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
    hasura_rows = hasura_rows(hasura, uid, root)
    ash_rows = ash_rows(uid, root)
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

  defp hasura_rows(_hasura, nil, _root), do: %{}

  defp hasura_rows(hasura, uid, root) do
    page = Map.get(root, :page, 100_000)
    fields = Enum.map(root.key, &elem(&1, 0)) ++ List.wrap(flag_field(root))
    order = Enum.map_join(root.key, ", ", fn {field, _} -> "{#{field}: ASC}" end)

    Stream.iterate(0, &(&1 + page))
    |> Enum.reduce_while(%{}, fn offset, acc ->
      document =
        "{ rows: #{root.hasura}(limit: #{page}, offset: #{offset}, orderBy: [#{order}]) { #{Enum.join(fields, " ")} } }"

      rows = hasura_query!(hasura, uid, document)
      acc = Enum.into(rows, acc, &{hasura_key(&1, root), &1[flag_field(root)] == true})
      if length(rows) < page, do: {:halt, acc}, else: {:cont, acc}
    end)
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

  defp ash_rows(uid, root) do
    actor = if uid, do: ActorLoader.load(uid)
    attributes = Enum.map(root.key, &elem(&1, 1))

    root.resource
    |> Ash.Query.load(List.wrap(flag_attribute(root)))
    |> Ash.read!(actor: actor, page: false)
    |> Map.new(fn row ->
      {Enum.map_join(attributes, "|", &to_string(Map.fetch!(row, &1))), ash_flag(row, root)}
    end)
  end

  defp ash_flag(row, %{flag: {_, attribute}}), do: Map.fetch!(row, attribute) == true
  defp ash_flag(_row, _root), do: false

  defp hasura_key(row, root),
    do: Enum.map_join(root.key, "|", fn {field, _} -> to_string(row[field]) end)

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
