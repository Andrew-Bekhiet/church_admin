defmodule ChurchAdmin.ActivityWorld do
  @moduledoc """
  `ChurchAdmin.AuthzWorld` plus activity logs, for the Activity read tests.
  `extend!/1` adds:

    * attendance days `day_1` and `day_2` and the class `c_y2` (year 2, any gender)
    * per person: a confession, a kodas and a call; `m1` has a second,
      later one of each
    * per record the permission view scopes, plus the users `servant`,
      `unapproved` and `unapproved_with_grants` and the `users_admin_on`
      row `grant`: a visit and an edit; `f_area` also has an older plain
      visit and a newer father visit, `m1` an older visit

  The world gains `targets` (`{table, id} => {table_atom, name}`, for mapping
  rows back to what they point at) and `recorded_by` (a user uid). Rows are
  seeded unauthorized under the system session.
  """

  alias ChurchAdmin.Activity.{ActivityDay, Call, Confession, Edit, Kodas, Visit}
  alias ChurchAdmin.{AuthzWorld, Factory}

  @day_1 ~D[2026-03-01]
  @day_2 ~D[2026-03-08]
  @base_time ~U[2026-03-01 09:00:00.000000Z]

  @persons [
    :self,
    :m1,
    :f2,
    :relative,
    :grp,
    :area_fam,
    :area_deleted,
    :area_store,
    :deleted,
    :unlinked,
    :servant
  ]

  @record_names %{
    persons: @persons,
    families: [:f_own, :f_svc, :f_grp, :f_area, :f_misc],
    services: [:s1],
    classes: [:c_y1, :c_y12_f, :c_y2],
    groups: [:g1, :g2],
    areas: [:a1, :a2],
    streets: [:st1],
    stores: [:store1]
  }

  @user_names [:servant, :unapproved, :unapproved_with_grants]

  def days, do: [@day_1, @day_2]
  def day_1, do: @day_1
  def day_2, do: @day_2
  def person_names, do: @persons

  @doc "Every `{table, name}` a visit and an edit row exists for, including `{:users_admin_on, :grant}`."
  def targets_with_rows do
    from_records = for {table, names} <- @record_names, name <- names, do: {table, name}
    from_users = for name <- @user_names, do: {:users, name}
    [{:users_admin_on, :grant} | from_records ++ from_users]
  end

  def extend!(world) do
    recorded_by = world.users.read_all.uid

    seed!(ActivityDay, %{day: @day_1})
    seed!(ActivityDay, %{day: @day_2})

    c_y2 = Factory.class!(world.records.s1, service_study_year: 2)
    world_with_class = put_in(world.records[:c_y2], c_y2)

    targets = targets(world_with_class)

    world_with_targets =
      Map.merge(world_with_class, %{targets: targets, recorded_by: recorded_by})

    world_with_targets
    |> seed_person_logs!()
    |> seed_record_logs!()
  end

  defp targets(world) do
    from_records =
      for {table, names} <- @record_names, name <- names, into: %{} do
        {{Atom.to_string(table), world.records[name].id}, {table, name}}
      end

    from_users =
      for name <- @user_names, into: %{} do
        {{"users", world.users[name].uid}, {:users, name}}
      end

    from_records
    |> Map.merge(from_users)
    |> Map.put({"users_admin_on", world.records.e_grant.record_id}, {:users_admin_on, :grant})
  end

  defp seed_person_logs!(world) do
    persons =
      for {name, index} <- Enum.with_index(@persons), do: {name, world.records[name].id, index}

    for {_name, person_id, index} <- persons do
      seed!(Confession, %{day_id: @day_1, person_id: person_id, recorded_by: world.recorded_by})
      seed!(Kodas, %{day_id: @day_1, person_id: person_id, recorded_by: world.recorded_by})

      seed!(Call, %{
        person_id: person_id,
        time: at(index),
        recorded_by: world.recorded_by
      })
    end

    m1 = world.records.m1.id
    seed!(Confession, %{day_id: @day_2, person_id: m1, recorded_by: world.recorded_by})
    seed!(Kodas, %{day_id: @day_2, person_id: m1, recorded_by: world.recorded_by})
    seed!(Call, %{person_id: m1, time: at(100), recorded_by: world.recorded_by})
    world
  end

  defp seed_record_logs!(world) do
    for {{table, id}, _target} <- world.targets do
      seed!(Visit, %{table: table, record_id: id, time: at(200), recorded_by: world.recorded_by})

      seed!(Edit, %{
        table: table,
        record_id: id,
        time: at(200),
        recorded_by: world.recorded_by,
        user_role: "user"
      })
    end

    m1 = world.records.m1.id
    f_area = world.records.f_area.id

    seed!(Visit, %{table: "persons", record_id: m1, time: at(150), recorded_by: world.recorded_by})

    seed!(Visit, %{
      table: "families",
      record_id: f_area,
      time: at(150),
      recorded_by: world.recorded_by
    })

    seed!(Visit, %{
      table: "families",
      record_id: f_area,
      time: at(300),
      is_father_visit: true,
      recorded_by: world.recorded_by
    })

    seed!(Edit, %{
      table: "persons",
      record_id: m1,
      time: at(250),
      recorded_by: world.recorded_by,
      user_role: "user"
    })

    world
  end

  @doc "The instant `minutes` after the world's base time."
  def at(minutes), do: DateTime.add(@base_time, minutes * 60, :second)

  @doc """
  The `{table, name}` pairs the actor kind may read in the permission view's
  history-record sense, from `authz-and-reads.md` §2.1. A service or group
  grant reaches the families of its live persons whether or not it writes
  related families (that flag only sets the row's `allow_edit`). `:everything` is the
  global `any` row. Soft-deleted persons count where the view counts them
  (through a service or an area).
  """
  def readable_targets(kind)

  def readable_targets(kind)
      when kind in [:read_all, :read_write, :manage_users, :export_all],
      do: :everything

  def readable_targets(:anonymous), do: MapSet.new()
  def readable_targets(:unapproved), do: users([:unapproved])
  def readable_targets(:unapproved_with_grants), do: users([:unapproved_with_grants])
  def readable_targets(:approved_plain), do: records(persons: [:self], families: [:f_own])

  def readable_targets(kind) when kind in [:service_open, :service_open_edit] do
    records(
      persons: [:m1, :f2, :deleted],
      families: [:f_svc],
      services: [:s1],
      classes: [:c_y1, :c_y12_f, :c_y2]
    )
  end

  def readable_targets(kind) when kind in [:service_year, :service_year_edit] do
    records(persons: [:m1], families: [:f_svc], services: [:s1], classes: [:c_y1, :c_y12_f])
  end

  def readable_targets(:service_gender) do
    records(persons: [:f2], services: [:s1], classes: [:c_y1, :c_y12_f, :c_y2])
  end

  def readable_targets(:service_write_related) do
    records(
      persons: [:m1, :f2, :deleted, :relative],
      families: [:f_svc],
      services: [:s1],
      classes: [:c_y1, :c_y12_f, :c_y2]
    )
  end

  def readable_targets(kind) when kind in [:group_read, :group_edit],
    do: records(persons: [:grp], families: [:f_grp], groups: [:g1])

  def readable_targets(kind) when kind in [:area_read, :area_edit] do
    records(
      persons: [:area_fam, :area_deleted, :area_store],
      families: [:f_area],
      classes: [:c_y1],
      groups: [:g2],
      areas: [:a1],
      streets: [:st1],
      stores: [:store1]
    )
  end

  def readable_targets(:service_admin_users) do
    :service_open
    |> readable_targets()
    |> MapSet.union(users([:servant, :unapproved_with_grants]))
  end

  def readable_targets(:service_record_servants) do
    :service_open
    |> readable_targets()
    |> MapSet.union(records(persons: [:servant]))
  end

  def readable_targets(:servant) do
    :service_open
    |> readable_targets()
    |> MapSet.union(records(persons: [:servant]))
  end

  def build!, do: extend!(AuthzWorld.build!())

  defp records(by_table) do
    MapSet.new(for {table, names} <- by_table, name <- names, do: {table, name})
  end

  defp users(names), do: MapSet.new(for name <- names, do: {:users, name})

  defp seed!(resource, attrs) do
    Ash.Seed.seed!(resource, attrs)
  end
end
