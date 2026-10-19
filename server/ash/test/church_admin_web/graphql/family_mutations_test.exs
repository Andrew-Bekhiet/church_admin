defmodule ChurchAdminWeb.Graphql.FamilyMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  import ChurchAdminWeb.PlacesMutationHelpers, only: [run: 4, code: 1]

  alias ChurchAdmin.Factory

  @create_family """
  mutation($input: CreateFamilyInput!) {
    createFamily(input: $input) {
      result { id name status parents { id } unclaimedContacts { id phone } address { areaId } }
    }
  }
  """

  @update_family """
  mutation($id: ID!, $input: UpdateFamilyInput!) {
    updateFamily(id: $id, input: $input) { result { id name parents { id } lastVisit } }
  }
  """

  @delete_family """
  mutation($id: ID!) { deleteFamily(id: $id) { result { id } } }
  """

  setup do
    ChurchAdmin.Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    manager = Factory.user!()
    Factory.permissions!(manager, ~w(approved readAllData writeAllData deleteData))
    area = Factory.area!()

    %{
      manager: manager,
      area: area,
      street: Factory.street!(area),
      parent: Factory.family!(),
      parent_type: Factory.person_type!(is_family_admin: true)
    }
  end

  test "creates, updates and deletes a family", ctx do
    created =
      run(
        build_conn(),
        @create_family,
        %{
          "input" => %{
            "name" => "Fawzy",
            "status" => "married",
            "parents" => [ctx.parent.id],
            "address" => %{"areaId" => ctx.area.id, "streetId" => ctx.street.id},
            "contacts" => [
              %{
                "phone" => "+201000000001",
                "isMainPhone" => true,
                "personTypeId" => ctx.parent_type.id
              }
            ]
          }
        },
        ctx.manager
      )

    assert %{"data" => %{"createFamily" => %{"result" => family}}} = created
    assert family["parents"] == [%{"id" => ctx.parent.id}]
    assert [%{"phone" => "+201000000001"}] = family["unclaimedContacts"]
    assert family["address"] == %{"areaId" => ctx.area.id}

    updated =
      run(
        build_conn(),
        @update_family,
        %{
          "id" => family["id"],
          "input" => %{
            "name" => "Fawzy Mina",
            "parents" => [],
            "lastVisit" => "2026-10-01T10:00:00.000000Z"
          }
        },
        ctx.manager
      )

    assert %{"name" => "Fawzy Mina", "parents" => [], "lastVisit" => "2026-10-01T10:00:00" <> _} =
             updated["data"]["updateFamily"]["result"]

    deleted = run(build_conn(), @delete_family, %{"id" => family["id"]}, ctx.manager)
    assert deleted["data"]["deleteFamily"]["result"]["id"] == family["id"]
  end

  test "answers a family the actor cannot read with relation/not-found", ctx do
    editor = Factory.user!()
    Factory.permissions!(editor, ~w(approved))
    Factory.grant!(editor, :area, ctx.area.id, edit?: true)

    response =
      run(
        build_conn(),
        @create_family,
        %{
          "input" => %{
            "name" => "Fawzy",
            "children" => [ctx.parent.id],
            "address" => %{"areaId" => ctx.area.id, "streetId" => ctx.street.id}
          }
        },
        editor
      )

    assert code(response) == "relation/not-found"
  end
end
