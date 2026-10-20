defmodule ChurchAdmin.Authz.OnboardingPolicyTest do
  @moduledoc """
  A Firebase account that was never onboarded carries no `x-hasura-user-id`
  claim, and Hasura rejected its token outright: it reads no row of any
  resource and cannot export. An onboarded account waiting for approval reads
  only its own account and person; the places, services, activity days and
  lookups every Hasura user read are for approved accounts.
  """

  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Accounts.{Preferences, User, UserPermission}
  alias ChurchAdmin.Activity.ActivityDay
  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Catalog
  alias ChurchAdmin.Exports.Export
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Organization.Service
  alias ChurchAdmin.People.Person
  alias ChurchAdmin.Places.{Area, AreaStreet, District, Street}

  @approved_reads [
    Service,
    Area,
    Street,
    AreaStreet,
    ActivityDay,
    District,
    Catalog.Church,
    Catalog.College,
    Catalog.Father,
    Catalog.Hobby,
    Catalog.Job,
    Catalog.PersonState,
    Catalog.PersonType,
    Catalog.Qualification,
    Catalog.School,
    Catalog.ShammasLevel,
    Catalog.StudyYear,
    Catalog.Tag,
    Catalog.University
  ]

  defp never_onboarded,
    do: Actor.for_principal(%Principal{auth_id: "never-onboarded", claims: %{}, uid: nil})

  defp seed_approved_reads! do
    n = System.unique_integer([:positive])
    Factory.street!(Factory.area!())
    Ash.Seed.seed!(ActivityDay, %{day: Date.utc_today()})
    Ash.Seed.seed!(District, %{name: "district #{n}"})
    Ash.Seed.seed!(Catalog.PersonState, %{name: "state #{n}", color: n})
    Ash.Seed.seed!(Catalog.ShammasLevel, %{name: "level #{n}", order: 1000 + n})
    Factory.study_year!(100 + rem(n, 1000))

    for resource <- @approved_reads -- [Service, Area, Street, AreaStreet, ActivityDay, District],
        resource not in [Catalog.PersonState, Catalog.ShammasLevel, Catalog.StudyYear],
        do: Ash.Seed.seed!(resource, %{name: "name #{n}"})
  end

  defp graphql_resources_read_without_arguments do
    for domain <- Application.fetch_env!(:church_admin, :ash_domains),
        resource <- Ash.Domain.Info.resources(domain),
        AshGraphql.Resource in Spark.extensions(resource),
        read = Ash.Resource.Info.primary_action(resource, :read),
        read != nil,
        Enum.all?(read.arguments, &(&1.allow_nil? or not is_nil(&1.default))),
        do: resource
  end

  test "an onboarded, unapproved account reads no place, service, activity day or lookup",
       %{world: world} do
    seed_approved_reads!()

    for kind <- [:unapproved, :unapproved_with_grants], resource <- @approved_reads do
      assert Ash.read!(resource, actor: actor(world, kind), page: false) == [],
             "#{kind} reads #{inspect(resource)}"
    end
  end

  test "an approved account reads every place, service, activity day and lookup",
       %{world: world} do
    seed_approved_reads!()

    for resource <- @approved_reads do
      assert [_ | _] = Ash.read!(resource, actor: actor(world, :approved_plain), page: false),
             "#{inspect(resource)} is not read"
    end
  end

  test "an onboarded, unapproved account reads its own user, permissions, preferences and person",
       %{world: world} do
    unapproved = world.users.unapproved
    Factory.permissions!(unapproved, ["readAllData"])
    Ash.Seed.seed!(Preferences, %{uid: unapproved.uid})
    own_person = Factory.person!(uid: unapproved.uid)
    actor = actor(world, :unapproved)

    assert [%User{uid: uid}] = Ash.read!(User, actor: actor, page: false)
    assert uid == unapproved.uid

    assert [%UserPermission{permission: "readAllData"}] =
             Ash.read!(UserPermission, actor: actor, page: false)

    assert [%Preferences{uid: ^uid}] = Ash.read!(Preferences, actor: actor, page: false)
    assert [%Person{id: person_id}] = Ash.read!(Person, actor: actor, page: false)
    assert person_id == own_person.id
  end

  test "a never-onboarded account reads no row of any resource the API serves" do
    seed_approved_reads!()

    for resource <- graphql_resources_read_without_arguments() do
      case Ash.read(resource, actor: never_onboarded(), page: false) do
        {:ok, rows} -> assert rows == [], "#{inspect(resource)} returned #{length(rows)} rows"
        {:error, %Ash.Error.Forbidden{}} -> :ok
      end
    end
  end

  test "a never-onboarded account cannot export", %{world: world} do
    refute Ash.can?({Export, :export_data}, never_onboarded())
    assert Ash.can?({Export, :export_data}, actor(world, :read_all))
  end
end
