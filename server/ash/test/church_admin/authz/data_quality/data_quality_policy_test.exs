defmodule ChurchAdmin.Authz.DataQuality.DataQualityPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.DataQuality.{DataCheck, Override}

  setup %{world: world} do
    families = Map.take(world.records, [:f_own, :f_svc, :f_grp, :f_area, :f_misc])

    for family <- [families.f_own, families.f_svc, families.f_area] do
      ChurchAdmin.Repo.query!(
        "insert into data_check_overrides (family_id, is_complete) values ($1, true)",
        [Ecto.UUID.dump!(family.id)]
      )
    end

    checks =
      Map.new(
        [
          f_own: :check_f_own,
          f_svc: :check_f_svc,
          f_grp: :check_f_grp,
          f_area: :check_f_area,
          f_misc: :check_f_misc
        ],
        fn {family, name} ->
          {name, Ash.get!(DataCheck, families[family].id, authorize?: false)}
        end
      )

    overrides =
      Map.new(
        [f_own: :override_own, f_svc: :override_svc, f_area: :override_area],
        fn {family, name} ->
          {name, Ash.get!(Override, families[family].id, authorize?: false)}
        end
      )

    {:ok, world: %{world | records: world.records |> Map.merge(checks) |> Map.merge(overrides)}}
  end

  # A check follows its family's read scope.
  @data_checks [
    {:anonymous, []},
    {:unapproved, []},
    {:approved_plain, [:check_f_own]},
    {:read_all, [:check_f_own, :check_f_svc, :check_f_grp, :check_f_area, :check_f_misc]},
    {:area_read, [:check_f_area]},
    {:service_open, [:check_f_svc]},
    {:service_year, [:check_f_svc]},
    {:service_gender, []},
    {:group_read, [:check_f_grp]},
    {:servant, [:check_f_svc]}
  ]

  @overrides [
    {:anonymous, []},
    {:unapproved, []},
    {:approved_plain, [:override_own]},
    {:read_all, [:override_own, :override_svc, :override_area]},
    {:area_read, [:override_area]},
    {:service_open, [:override_svc]},
    {:group_read, []}
  ]

  for {resource, expectations} <- [{DataCheck, @data_checks}, {Override, @overrides}],
      {kind, read} <- expectations do
    @resource resource
    @kind kind
    @read MapSet.new(read)

    test "#{inspect(resource)}: #{kind} reads #{inspect(read)}", %{world: world} do
      assert visible(world, @resource, @kind) == @read
    end
  end
end
