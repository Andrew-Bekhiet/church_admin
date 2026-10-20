defmodule ChurchAdmin.People.PersonCommandsTest do
  @moduledoc """
  The person commands as the client calls them: desired-state inputs,
  the implicit family, activity recorded only when it changed, the
  employment normalisation, the scope rules and the error codes.
  """

  use ChurchAdmin.DataCase, async: false

  import ChurchAdmin.AccountsCase, only: [codes: 1]

  alias ChurchAdmin.Activity.{Call, Confession, Kodas, Visit}
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.{Factory, People}
  alias ChurchAdmin.People.{Contact, Family, Person, PersonHobby, PersonTag, ServiceMembership}
  alias ChurchAdmin.Places.Address

  setup do
    Repo.query!(
      "insert into auth.permissions (name) values ('deleteData') on conflict do nothing"
    )

    for order <- [1, 2, 13], do: Factory.study_year!(order)

    manager = Factory.user!()
    Factory.permissions!(manager, ~w(approved readAllData writeAllData deleteData))
    area = Factory.area!()

    %{
      actor: ActorLoader.load(manager.uid),
      family: Factory.family!(),
      service: Factory.service!(),
      area: area,
      street: Factory.street!(area)
    }
  end

  defp actor_with(permissions, grants \\ []) do
    user = Factory.user!()
    Factory.permissions!(user, permissions)
    for {kind, id, flags} <- grants, do: Factory.grant!(user, kind, id, flags)
    ActorLoader.load(user.uid)
  end

  defp reload(id), do: Ash.get!(Person, id, authorize?: false)

  defp rows_of(resource, filter) do
    resource
    |> Ash.Query.do_filter(filter)
    |> Ash.read!(authorize?: false, page: false)
  end

  describe "createPerson" do
    test "writes the person with its memberships, contacts, family contacts and activity", ctx do
      tag = Factory.tag!()
      hobby = Factory.hobby!()
      group = Factory.group!(ctx.service)
      parent = Factory.person_type!(is_family_admin: true)
      Factory.person!(family_id: ctx.family.id, person_type_id: parent.id)
      Factory.person!(family_id: ctx.family.id, person_type_id: parent.id)

      {:ok, person} =
        People.create_person(
          %{
            name: "Mina Fawzy",
            family_id: ctx.family.id,
            services: [ctx.service.id],
            groups: [group.id],
            tags: [tag.id],
            hobbies: [hobby.id],
            contacts: [%{phone: "+201000000001", is_main_phone: true}],
            family_contacts: [%{phone: "+201000000002", person_type_id: parent.id}],
            last_confession: ~D[2026-10-01],
            last_kodas: ~D[2026-10-02],
            last_call: ~U[2026-10-03 10:00:00.000000Z],
            last_visit: ~U[2026-10-04 10:00:00.000000Z]
          },
          actor: ctx.actor
        )

      loaded_person =
        Ash.load!(person, [:services, :groups, :tags, :hobbies, :contacts], authorize?: false)

      assert Enum.map(loaded_person.services, & &1.id) == [ctx.service.id]
      assert Enum.map(loaded_person.groups, & &1.id) == [group.id]
      assert Enum.map(loaded_person.tags, & &1.id) == [tag.id]
      assert Enum.map(loaded_person.hobbies, & &1.id) == [hobby.id]
      assert [%{phone: "+201000000001", is_main_phone: true}] = loaded_person.contacts

      assert [%{phone: "+201000000002", person_id: nil}] =
               rows_of(Contact, family_id: ctx.family.id)

      assert [%{day_id: ~D[2026-10-01]}] = rows_of(Confession, person_id: person.id)
      assert [%{day_id: ~D[2026-10-02]}] = rows_of(Kodas, person_id: person.id)
      assert [%{time: ~U[2026-10-03 10:00:00.000000Z]}] = rows_of(Call, person_id: person.id)
      assert [%{table: "persons"}] = rows_of(Visit, record_id: person.id)
    end

    test "with an address and no family creates the family, named after the person's other names",
         ctx do
      address = %{area_id: ctx.area.id, street_id: ctx.street.id, house_code: "12"}

      {:ok, person} =
        People.create_person(%{name: "Mina Fawzy Gerges", address: address}, actor: ctx.actor)

      family = Ash.get!(Family, person.family_id, authorize?: false)
      assert family.name == "Fawzy Gerges"
      assert [%{house_code: "12", street_id: street_id}] = rows_of(Address, family_id: family.id)
      assert street_id == ctx.street.id

      {:ok, named} =
        People.create_person(
          %{name: "Mina", address: address, new_family_name: "Gerges"},
          actor: ctx.actor
        )

      assert Ash.get!(Family, named.family_id, authorize?: false).name == "Gerges"
    end

    test "without an address or family leaves the person without a family", ctx do
      {:ok, person} =
        People.create_person(%{name: "Mina", services: [ctx.service.id]}, actor: ctx.actor)

      assert person.family_id == nil
    end

    test "a failing contact rolls back the person and its new family", ctx do
      address = %{area_id: ctx.area.id, street_id: ctx.street.id}

      assert {:error, _error} =
               People.create_person(
                 %{
                   name: "Rolled Back",
                   address: address,
                   contacts: [%{phone: "not a phone"}]
                 },
                 actor: ctx.actor
               )

      assert rows_of(Person, name: "Rolled Back") == []
      assert rows_of(Family, name: "Back") == []
    end

    test "a family the actor cannot read is relation/not-found", ctx do
      editor = actor_with(~w(approved), [{:service, ctx.service.id, edit?: true}])

      assert {:error, error} =
               People.create_person(
                 %{name: "p", family_id: ctx.family.id, services: [ctx.service.id]},
                 actor: editor
               )

      assert codes(error) == ["relation/not-found"]
    end

    test "linking the new person to another user is forbidden", ctx do
      other = Factory.user!()

      assert {:error, error} =
               People.create_person(%{name: "p", family_id: ctx.family.id, uid: other.uid},
                 actor: ctx.actor
               )

      assert codes(error) == ["forbidden"]
    end
  end

  describe "updatePerson" do
    setup ctx do
      tag = Factory.tag!()

      {:ok, person} =
        People.create_person(
          %{
            name: "p",
            family_id: ctx.family.id,
            services: [ctx.service.id],
            tags: [tag.id],
            contacts: [%{phone: "+201000000001"}]
          },
          actor: ctx.actor
        )

      %{person: person, tag: tag}
    end

    test "a list left out stays, an empty list empties", ctx do
      {:ok, _person} = People.update_person(ctx.person, %{tags: []}, actor: ctx.actor)

      assert rows_of(PersonTag, person_id: ctx.person.id) == []
      assert [_membership] = rows_of(ServiceMembership, person_id: ctx.person.id)
      assert [_contact] = rows_of(Contact, person_id: ctx.person.id)
      assert rows_of(PersonHobby, person_id: ctx.person.id) == []
    end

    test "a contact id the person does not hold is contact/not-owned", ctx do
      foreign =
        Factory.contact!(
          person_id: Factory.person!(family_id: ctx.family.id).id,
          phone: "+201000000009"
        )

      assert {:error, error} =
               People.update_person(
                 ctx.person,
                 %{contacts: [%{id: foreign.id, phone: "+201000000009"}]},
                 actor: ctx.actor
               )

      assert codes(error) == ["contact/not-owned"]
    end

    test "records a call only when it differs from the latest", ctx do
      time = ~U[2026-10-03 10:00:00.000000Z]
      {:ok, _person} = People.update_person(ctx.person, %{last_call: time}, actor: ctx.actor)
      {:ok, _person} = People.update_person(ctx.person, %{last_call: time}, actor: ctx.actor)

      {:ok, _person} =
        People.update_person(ctx.person, %{last_call: ~U[2026-10-05 10:00:00.000000Z]},
          actor: ctx.actor
        )

      assert length(rows_of(Call, person_id: ctx.person.id)) == 2
    end

    test "an editor may take the person out of the service that lets it edit, not change it out of scope",
         ctx do
      Factory.study_year!(3)
      {:ok, person} = People.update_person(ctx.person, %{study_year_id: 1}, actor: ctx.actor)
      editor = actor_with(~w(approved), [{:service, ctx.service.id, edit?: true, study_year: 1}])

      assert {:error, error} = People.update_person(person, %{study_year_id: 2}, actor: editor)
      assert codes(error) == ["forbidden"]
      assert reload(person.id).study_year_id == 1

      assert {:ok, _person} = People.update_person(person, %{services: []}, actor: editor)
      assert rows_of(ServiceMembership, person_id: person.id) == []
    end

    test "a reader may not update", ctx do
      reader = actor_with(~w(approved readAllData))

      assert {:error, error} = People.update_person(ctx.person, %{name: "x"}, actor: reader)
      assert codes(error) == ["forbidden"]
    end
  end

  describe "employment normalisation" do
    test "clears what the other answers make meaningless", ctx do
      school = Ash.Seed.seed!(ChurchAdmin.Catalog.School, %{name: "school"})

      {:ok, person} =
        People.create_person(
          %{
            name: "p",
            family_id: ctx.family.id,
            is_servant: false,
            service_type: "choir",
            gender: false,
            is_shammas: true,
            work_status: "student",
            study_year_id: 13,
            school_id: school.id,
            job_description: "x"
          },
          actor: ctx.actor
        )

      assert %{service_type: nil, is_shammas: false, school_id: nil, job_description: nil} =
               person

      assert person.study_year_id == 13

      {:ok, unemployed_person} =
        People.update_person(person, %{work_status: "unemployed"}, actor: ctx.actor)

      assert unemployed_person.study_year_id == nil

      {:ok, employed_person} =
        People.update_person(
          unemployed_person,
          %{work_status: "employed", job_description: "teacher"},
          actor: ctx.actor
        )

      assert employed_person.job_description == "teacher"
    end
  end

  describe "deletePerson" do
    test "needs deleteData besides edit rights", ctx do
      {:ok, person} =
        People.create_person(%{name: "p", family_id: ctx.family.id}, actor: ctx.actor)

      writer = actor_with(~w(approved readAllData writeAllData))

      assert {:error, error} = People.delete_person(person, actor: writer)
      assert codes(error) == ["forbidden"]

      assert :ok = People.delete_person(person, actor: ctx.actor)
      assert reload(person.id).deleted_at
    end
  end

  describe "recordPersonSpiritualDays" do
    test "records the confession and kodas once, however often it is sent", ctx do
      {:ok, person} =
        People.create_person(%{name: "p", family_id: ctx.family.id}, actor: ctx.actor)

      days = %{confession_day: ~D[2026-10-01], kodas_day: ~D[2026-10-02]}

      {:ok, _person} = People.record_person_spiritual_days(person, days, actor: ctx.actor)
      {:ok, _person} = People.record_person_spiritual_days(person, days, actor: ctx.actor)

      assert [_confession] = rows_of(Confession, person_id: person.id)
      assert [_kodas] = rows_of(Kodas, person_id: person.id)
    end
  end
end
