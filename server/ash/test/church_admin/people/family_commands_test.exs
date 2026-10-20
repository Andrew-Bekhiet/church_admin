defmodule ChurchAdmin.People.FamilyCommandsTest do
  @moduledoc """
  The family commands as the client calls them: desired-state inputs
  (address, unclaimed contacts, parent and child families, visits), the
  widowhood normalisation, the scope rules and the error codes.
  """

  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.AccountsCase, only: [codes: 1]

  alias ChurchAdmin.Activity.Visit
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.{Factory, People}
  alias ChurchAdmin.People.{Contact, Family, FamilyRelation}
  alias ChurchAdmin.Places.Address

  setup do
    Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    manager = Factory.user!()
    Factory.permissions!(manager, ~w(approved readAllData writeAllData deleteData))
    area = Factory.area!()
    other_area = Factory.area!()

    %{
      actor: ActorLoader.load(manager.uid),
      area: area,
      street: Factory.street!(area),
      other_area: other_area,
      other_street: Factory.street!(other_area),
      parent_type: Factory.person_type!(is_family_admin: true)
    }
  end

  defp actor_with(permissions, grants \\ []) do
    user = Factory.user!()
    Factory.permissions!(user, permissions)
    for {kind, id, flags} <- grants, do: Factory.grant!(user, kind, id, flags)
    ActorLoader.load(user.uid)
  end

  defp area_editor(area), do: actor_with(~w(approved), [{:area, area.id, edit?: true}])

  defp reload(id), do: Ash.get!(Family, id, authorize?: false)

  defp rows_of(resource, filter) do
    resource
    |> Ash.Query.do_filter(filter)
    |> Ash.read!(authorize?: false, page: false)
  end

  defp address(area, street), do: %{area_id: area.id, street_id: street.id}

  defp parent_ids(family_id),
    do: FamilyRelation |> rows_of(child_family_id: family_id) |> Enum.map(& &1.parent_family_id)

  defp child_ids(family_id),
    do: FamilyRelation |> rows_of(parent_family_id: family_id) |> Enum.map(& &1.child_family_id)

  describe "createFamily" do
    test "writes the family with its address, contacts, parents, children and visits", ctx do
      parent = Factory.family!()
      child = Factory.family!()

      {:ok, family} =
        People.create_family(
          %{
            name: "Fawzy",
            address: address(ctx.area, ctx.street),
            contacts: [%{phone: "+201000000001", person_type_id: ctx.parent_type.id}],
            parents: [parent.id],
            children: [child.id],
            last_visit: ~U[2026-10-01 10:00:00.000000Z],
            last_father_visit: ~U[2026-10-02 10:00:00.000000Z]
          },
          actor: ctx.actor
        )

      assert [%{area_id: area_id}] = rows_of(Address, family_id: family.id)
      assert area_id == ctx.area.id
      assert [%{phone: "+201000000001", person_id: nil}] = rows_of(Contact, family_id: family.id)
      assert parent_ids(family.id) == [parent.id]
      assert child_ids(family.id) == [child.id]

      assert family.id
             |> then(&rows_of(Visit, table: "families", record_id: &1))
             |> Enum.map(&{&1.time, &1.is_father_visit})
             |> Enum.sort() == [
               {~U[2026-10-01 10:00:00.000000Z], false},
               {~U[2026-10-02 10:00:00.000000Z], true}
             ]
    end

    test "an area editor gives the family it creates its contacts", ctx do
      {:ok, family} =
        People.create_family(
          %{
            name: "Fawzy",
            address: address(ctx.area, ctx.street),
            contacts: [%{phone: "+201000000001", person_type_id: ctx.parent_type.id}]
          },
          actor: area_editor(ctx.area)
        )

      assert [_contact] = rows_of(Contact, family_id: family.id)
    end

    test "a widowed family keeps no marriage date, any other no deceased spouse", ctx do
      {:ok, widowed} =
        People.create_family(
          %{
            name: "a",
            status: "widowed",
            marriage_date: ~D[2000-01-01],
            deceased_spouse_name: "Fawzy"
          },
          actor: ctx.actor
        )

      {:ok, married} =
        People.create_family(
          %{name: "b", marriage_date: ~D[2000-01-01], deceased_spouse_name: "Fawzy"},
          actor: ctx.actor
        )

      assert {widowed.marriage_date, widowed.deceased_spouse_name} == {nil, "Fawzy"}
      assert {married.marriage_date, married.deceased_spouse_name} == {~D[2000-01-01], nil}
    end

    test "a parent the actor cannot read is relation/not-found", ctx do
      hidden = Factory.family!()

      assert {:error, error} =
               People.create_family(
                 %{name: "a", address: address(ctx.area, ctx.street), parents: [hidden.id]},
                 actor: area_editor(ctx.area)
               )

      assert codes(error) == ["relation/not-found"]
    end

    test "a parent the actor reads but may not edit is forbidden", ctx do
      reader = actor_with(~w(approved readAllData), [{:area, ctx.area.id, edit?: true}])
      parent = Factory.family!()

      assert {:error, error} =
               People.create_family(
                 %{name: "a", address: address(ctx.area, ctx.street), parents: [parent.id]},
                 actor: reader
               )

      assert codes(error) == ["forbidden"]
    end
  end

  describe "updateFamily" do
    test "a list left out stays, an empty list empties", ctx do
      parent = Factory.family!()
      {:ok, family} = People.create_family(%{name: "a", parents: [parent.id]}, actor: ctx.actor)

      {:ok, _family} = People.update_family(family, %{name: "b"}, actor: ctx.actor)
      assert parent_ids(family.id) == [parent.id]

      {:ok, _family} = People.update_family(family, %{parents: []}, actor: ctx.actor)
      assert parent_ids(family.id) == []
    end

    test "records a visit only when it differs from the latest", ctx do
      {:ok, family} = People.create_family(%{name: "a"}, actor: ctx.actor)
      visit = %{last_visit: ~U[2026-10-01 10:00:00.000000Z]}

      {:ok, _family} = People.update_family(family, visit, actor: ctx.actor)
      {:ok, _family} = People.update_family(family, visit, actor: ctx.actor)

      assert [_visit] = rows_of(Visit, table: "families", record_id: family.id)
    end

    test "becoming widowed clears the marriage date", ctx do
      {:ok, family} =
        People.create_family(%{name: "a", marriage_date: ~D[2000-01-01]}, actor: ctx.actor)

      {:ok, family} =
        People.update_family(family, %{status: "widowed", deceased_spouse_name: "Fawzy"},
          actor: ctx.actor
        )

      assert {family.marriage_date, family.deceased_spouse_name} == {nil, "Fawzy"}
    end

    test "an area editor may move the family's address out of its area", ctx do
      editor = area_editor(ctx.area)

      {:ok, family} =
        People.create_family(%{name: "a", address: address(ctx.area, ctx.street)},
          actor: editor
        )

      assert {:ok, _family} =
               People.update_family(
                 family,
                 %{address: address(ctx.other_area, ctx.other_street)},
                 actor: editor
               )

      assert [%{area_id: area_id}] = rows_of(Address, family_id: family.id)
      assert area_id == ctx.other_area.id
    end

    test "a reader may not update", _ctx do
      family = Factory.family!()

      assert {:error, error} =
               People.update_family(family, %{name: "b"},
                 actor: actor_with(~w(approved readAllData))
               )

      assert codes(error) == ["forbidden"]
      assert reload(family.id).name == family.name
    end

    test "an editor of the family's address but none of its members may not write its contacts",
         ctx do
      family = Factory.family!()
      Factory.address!(family_id: family.id, area_id: ctx.area.id, street_id: ctx.street.id)

      assert {:error, error} =
               People.update_family(
                 family,
                 %{contacts: [%{phone: "+201000000001", person_type_id: ctx.parent_type.id}]},
                 actor: area_editor(ctx.area)
               )

      assert codes(error) == ["forbidden"]
    end
  end

  describe "deleteFamily" do
    test "needs writeAllData and deleteData", ctx do
      {:ok, family} = People.create_family(%{name: "a"}, actor: ctx.actor)

      writer = actor_with(~w(approved readAllData writeAllData))
      assert {:error, error} = People.delete_family(family, actor: writer)
      assert codes(error) == ["forbidden"]

      assert :ok = People.delete_family(family, actor: ctx.actor)
      assert reload(family.id).deleted_at
    end
  end
end
