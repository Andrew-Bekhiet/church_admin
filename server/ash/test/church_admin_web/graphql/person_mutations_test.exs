defmodule ChurchAdminWeb.Graphql.PersonMutationsTest do
  use ChurchAdminWeb.ConnCase, async: false

  import ChurchAdminWeb.PlacesMutationHelpers, only: [run: 4, code: 1]

  alias ChurchAdmin.Factory

  @create_person """
  mutation($input: CreatePersonInput!) {
    createPerson(input: $input) {
      result { id name familyId contacts { phone isMainPhone } serviceMemberships { serviceId } }
    }
  }
  """

  @update_person """
  mutation($id: ID!, $input: UpdatePersonInput!) {
    updatePerson(id: $id, input: $input) { result { id name contacts { id phone label } } }
  }
  """

  @delete_person """
  mutation($id: ID!) { deletePerson(id: $id) { result { id } } }
  """

  @record_days """
  mutation($id: ID!, $input: RecordPersonSpiritualDaysInput!) {
    recordPersonSpiritualDays(id: $id, input: $input) { result { id lastConfessionDay lastKodasDay } }
  }
  """

  setup do
    ChurchAdmin.Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    manager = Factory.user!()
    Factory.permissions!(manager, ~w(approved readAllData writeAllData deleteData))
    %{manager: manager, family: Factory.family!(), service: Factory.service!()}
  end

  test "creates, updates, records days for and deletes a person", ctx do
    created =
      run(
        build_conn(),
        @create_person,
        %{
          "input" => %{
            "name" => "Mina",
            "familyId" => ctx.family.id,
            "services" => [ctx.service.id],
            "contacts" => [%{"phone" => "+201000000001", "isMainPhone" => true}]
          }
        },
        ctx.manager
      )

    assert %{"data" => %{"createPerson" => %{"result" => person}}} = created
    assert person["familyId"] == ctx.family.id
    assert person["serviceMemberships"] == [%{"serviceId" => ctx.service.id}]
    assert person["contacts"] == [%{"phone" => "+201000000001", "isMainPhone" => true}]

    updated =
      run(
        build_conn(),
        @update_person,
        %{
          "id" => person["id"],
          "input" => %{
            "name" => "Mina F",
            "contacts" => [
              %{"phone" => "+201000000001", "label" => "home", "isMainPhone" => true}
            ]
          }
        },
        ctx.manager
      )

    assert %{"name" => "Mina F", "contacts" => [%{"label" => "home"}]} =
             updated["data"]["updatePerson"]["result"]

    days =
      run(
        build_conn(),
        @record_days,
        %{
          "id" => person["id"],
          "input" => %{"confessionDay" => "2026-10-01", "kodasDay" => "2026-10-02"}
        },
        ctx.manager
      )

    assert %{"lastConfessionDay" => "2026-10-01", "lastKodasDay" => "2026-10-02"} =
             days["data"]["recordPersonSpiritualDays"]["result"]

    deleted = run(build_conn(), @delete_person, %{"id" => person["id"]}, ctx.manager)
    assert deleted["data"]["deletePerson"]["result"]["id"] == person["id"]
  end

  test "answers a foreign contact id with contact/not-owned", ctx do
    person = Factory.person!(family_id: ctx.family.id)
    other = Factory.person!(family_id: ctx.family.id)
    foreign = Factory.contact!(person_id: other.id, phone: "+201000000002")

    response =
      run(
        build_conn(),
        @update_person,
        %{
          "id" => person.id,
          "input" => %{
            "contacts" => [
              %{"id" => foreign.id, "phone" => "+201000000002", "isMainPhone" => false}
            ]
          }
        },
        ctx.manager
      )

    assert code(response) == "contact/not-owned"
  end
end
