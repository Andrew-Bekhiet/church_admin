defmodule ChurchAdmin.Authz.OnboardingPolicyTest do
  @moduledoc """
  A Firebase account that was never onboarded carries no `x-hasura-user-id`
  claim, and Hasura rejected its token outright: it reads no row of any
  resource and cannot export. Onboarded accounts, approved or not, keep the
  reads Hasura gave every signed-in user.
  """

  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Activity.ActivityDay
  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Catalog
  alias ChurchAdmin.Exports.Export
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Organization.Service
  alias ChurchAdmin.Places.{Area, AreaStreet, District, Street}

  @signed_in_reads [
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

  defp seed_signed_in_reads! do
    n = System.unique_integer([:positive])
    Factory.street!(Factory.area!())
    Ash.Seed.seed!(ActivityDay, %{day: Date.utc_today()})
    Ash.Seed.seed!(District, %{name: "district #{n}"})
    Ash.Seed.seed!(Catalog.PersonState, %{name: "state #{n}", color: n})
    Ash.Seed.seed!(Catalog.ShammasLevel, %{name: "level #{n}", order: 1000 + n})
    Factory.study_year!(100 + rem(n, 1000))

    for resource <- @signed_in_reads -- [Service, Area, Street, AreaStreet, ActivityDay, District],
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

  test "an onboarded, unapproved account reads what Hasura gave every signed-in user",
       %{world: world} do
    seed_signed_in_reads!()

    for resource <- @signed_in_reads do
      assert [_ | _] = Ash.read!(resource, actor: actor(world, :unapproved), page: false),
             "#{inspect(resource)} is not read"
    end
  end

  test "a never-onboarded account reads no row of any resource the API serves" do
    seed_signed_in_reads!()

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
