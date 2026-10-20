defmodule ChurchAdmin.DataQuality.DataCheckOverrideTest do
  use ChurchAdmin.AuthzCase, async: false

  import ChurchAdmin.AccountsCase, only: [codes: 1]
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.DataQuality
  alias ChurchAdmin.DataQuality.Override
  alias ChurchAdmin.Factory

  @families [:f_own, :f_svc, :f_grp, :f_area, :f_misc]

  # The families whose check an actor may override or clear: global edit, a
  # family the grants reach, or a live person of the family who is the actor's
  # own or one the actor may edit; every branch needs approval.
  @editable_families [
    {:anonymous, []},
    {:unapproved, []},
    {:unapproved_with_grants, []},
    {:approved_plain, [:f_own]},
    {:read_all, []},
    {:read_write, @families},
    {:manage_users, @families},
    {:export_all, []},
    {:service_open, []},
    {:service_open_edit, [:f_svc]},
    {:service_year, []},
    {:service_gender, []},
    {:service_year_edit, [:f_svc]},
    {:service_admin_users, [:f_svc]},
    {:group_read, []},
    {:group_edit, [:f_grp]},
    {:area_read, []},
    {:area_edit, [:f_area]},
    {:service_record_servants, []},
    {:servant, []}
  ]

  defp family(world, name), do: Map.fetch!(world.records, name)

  defp override(world, name, is_complete, kind),
    do: override_for(world, family(world, name).id, is_complete, actor(world, kind))

  defp override_for(_world, family_id, is_complete, actor),
    do: DataQuality.override_data_check(family_id, is_complete, actor: actor)

  defp stored(world, name),
    do: Ash.get(Override, family(world, name).id, authorize?: false)

  defp seed_override!(world, name, is_complete \\ true) do
    Ash.Seed.seed!(Override, %{
      family_id: family(world, name).id,
      is_complete: is_complete
    })
  end

  describe "overrideDataCheck" do
    for {kind, editable} <- @editable_families do
      @kind kind
      @editable editable

      test "#{kind} overrides exactly #{inspect(editable)}", %{world: world} do
        allowed =
          for name <- @families, match?({:ok, _}, override(world, name, true, @kind)), do: name

        assert Enum.sort(allowed) == Enum.sort(@editable)
      end
    end

    test "answers relation/not-found for a family that does not exist or the actor cannot read",
         %{world: world} do
      actor = actor(world, :area_read)

      for family_id <- [Ash.UUID.generate(), family(world, :f_svc).id] do
        assert {:error, error} = override_for(world, family_id, true, actor)
        assert codes(error) == ["relation/not-found"]
      end
    end

    test "the refusal is forbidden and writes nothing", %{world: world} do
      assert {:error, error} = override(world, :f_svc, true, :service_open)
      assert codes(error) == ["forbidden"]
      assert {:error, _not_found} = stored(world, :f_svc)
    end

    test "creates the override stamped with the actor", %{world: world} do
      editor = world.users.read_write

      assert {:ok, %{family_id: family_id, is_complete: true, updated_by: updated_by}} =
               override(world, :f_svc, true, :read_write)

      assert family_id == family(world, :f_svc).id
      assert updated_by == editor.uid
    end

    test "a second override replaces the answer and the stamp, keeping one row", %{world: world} do
      assert {:ok, _} = override(world, :f_svc, true, :read_write)
      assert {:ok, _} = override(world, :f_svc, false, :service_open_edit)

      assert {:ok, %{is_complete: false, updated_by: updated_by}} = stored(world, :f_svc)
      assert updated_by == world.users.service_open_edit.uid

      assert Override
             |> Ash.read!(authorize?: false, page: false)
             |> Enum.count(&(&1.family_id == family(world, :f_svc).id)) == 1
    end

    test "overwriting someone else's override needs the same right", %{world: world} do
      seed_override!(world, :f_svc, true)

      assert {:error, error} = override(world, :f_svc, false, :service_open)
      assert codes(error) == ["forbidden"]
      assert {:ok, %{is_complete: true, updated_by: nil}} = stored(world, :f_svc)
    end

    test "an unapproved user may not override the family of their own person", %{world: world} do
      unapproved = world.users.unapproved
      Factory.person!(uid: unapproved.uid, family_id: family(world, :f_misc).id)

      assert {:error, error} = override(world, :f_misc, false, :unapproved)
      assert codes(error) == ["relation/not-found"]
      assert {:error, _not_found} = stored(world, :f_misc)
    end

    test "a deleted own person does not count", %{world: world} do
      user = Factory.user!()

      Factory.person!(
        uid: user.uid,
        family_id: family(world, :f_misc).id,
        deleted_at: Factory.deleted_at()
      )

      assert {:error, error} =
               override_for(world, family(world, :f_misc).id, true, ActorLoader.load(user.uid))

      assert codes(error) == ["relation/not-found"]
    end

    test "a family that does not exist is refused", %{world: world} do
      assert {:error, _error} =
               override_for(world, Ash.UUID.generate(), true, actor(world, :read_write))
    end
  end

  describe "clearDataCheckOverride" do
    for {kind, editable} <- @editable_families do
      @kind kind
      @editable editable

      test "#{kind} clears exactly #{inspect(editable)}", %{world: world} do
        for name <- @families, do: seed_override!(world, name)

        cleared =
          for name <- @families, clear(world, name, @kind) == :ok, do: name

        assert Enum.sort(cleared) == Enum.sort(@editable)

        for name <- @families -- @editable, do: assert({:ok, _} = stored(world, name))
        for name <- @editable, do: assert({:error, _} = stored(world, name))
      end
    end
  end

  defp clear(world, name, kind) do
    with {:ok, record} <- stored(world, name) do
      DataQuality.clear_data_check_override(record, actor: actor(world, kind))
    end
  end

  test "the stamp survives the owner's deletion as null", %{world: world} do
    {:ok, _} = override(world, :f_svc, true, :read_write)

    ChurchAdmin.Repo.query!("delete from auth.users_data where uid = $1", [
      Ecto.UUID.dump!(world.users.read_write.uid)
    ])

    assert {:ok, %{updated_by: nil}} = stored(world, :f_svc)
  end
end
