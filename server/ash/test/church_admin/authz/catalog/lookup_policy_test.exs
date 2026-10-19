defmodule ChurchAdmin.Authz.Catalog.LookupPolicyTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Authz.Actor

  alias ChurchAdmin.Catalog.{
    Church,
    College,
    Father,
    Hobby,
    Job,
    PersonState,
    PersonType,
    Qualification,
    School,
    ShammasLevel,
    StudyYear,
    Tag,
    University
  }

  @lookups [
    Church,
    Father,
    School,
    College,
    University,
    Job,
    Qualification,
    Hobby,
    Tag,
    PersonState,
    PersonType,
    ShammasLevel,
    StudyYear
  ]

  defp seed_row!(resource) do
    ChurchAdmin.DataCase.set_system_db_session()
    n = System.unique_integer([:positive])

    attrs =
      case resource do
        StudyYear -> %{order: 100 + rem(n, 1000), name: "year #{n}"}
        PersonState -> %{name: "name #{n}", color: n}
        ShammasLevel -> %{name: "name #{n}", order: 1000 + n}
        _ -> %{name: "name #{n}"}
      end

    Ash.Seed.seed!(resource, attrs)
  end

  for resource <- @lookups do
    @resource resource

    test "#{inspect(resource)} is read by every authenticated actor and by no anonymous one",
         %{world: world} do
      row = seed_row!(@resource)

      for kind <- [:unapproved, :approved_plain, :read_all, :service_open] do
        names =
          @resource |> Ash.read!(actor: actor(world, kind), page: false) |> Enum.map(& &1.name)

        assert row.name in names, "#{kind} cannot read it"
      end

      assert Ash.read!(@resource, actor: nil, page: false) == []

      names = @resource |> Ash.read!(actor: Actor.system(), page: false) |> Enum.map(& &1.name)
      assert row.name in names
    end
  end
end
