defmodule ChurchAdmin.Authz.Organization.ClassCoverageTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Accounts.ScopeGrant
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Organization.Class

  setup %{world: world} do
    Factory.study_year!(3)
    world = ChurchAdmin.OrgWorld.extend(world)
    c_y13 = Factory.class!(world.records.s1, service_study_year: 1, service_study_year_to: 3)
    c_s2_y13 = Factory.class!(world.records.s2, service_study_year: 1, service_study_year_to: 3)

    world =
      world
      |> put_in([:records, :c_y13], c_y13)
      |> put_in([:records, :c_s2_y13], c_s2_y13)

    {:ok, world: world}
  end

  @of_s1 [:c_y1, :c_y12_f, :c_y2_m, :c_y13]

  # {grant on s1 as study year and gender, classes it covers}: the same service,
  # a set year inside the class's years, a set gender equal to the class's or
  # the class having none; an unset year or gender restricts nothing.
  @expectations [
    {[study_year: 2], [:c_y12_f, :c_y2_m, :c_y13]},
    {[study_year: 3], [:c_y13]},
    {[], @of_s1},
    {[gender: true], [:c_y1, :c_y2_m, :c_y13]},
    {[gender: false], [:c_y1, :c_y12_f, :c_y13]},
    {[study_year: 1, gender: false], [:c_y1, :c_y12_f, :c_y13]}
  ]

  for {flags, covered} <- @expectations do
    @flags flags
    @covered MapSet.new(covered)

    test "a service grant #{inspect(flags)} lists and administers #{inspect(covered)}",
         %{world: world} do
      user = grantee(world.records.s1, @flags)

      assert names(listed_classes(world, user), world) == @covered
      assert names(administered_classes(world, user), world) == @covered
    end
  end

  test "an unrestricted grant on another service covers none of s1's classes", %{world: world} do
    user = grantee(world.records.s2, [])
    expected = MapSet.new([:c_s2, :c_s2_y13])

    assert names(listed_classes(world, user), world) == expected
    assert names(administered_classes(world, user), world) == expected
  end

  defp grantee(service, flags) do
    user = Factory.user!()
    Factory.permissions!(user, ["approved"])
    Factory.grant!(user, :service, service.id, flags)
    user
  end

  defp listed_classes(world, user) do
    [grant] =
      ScopeGrant
      |> Ash.Query.filter(uid == ^user.uid)
      |> Ash.Query.load(:classes)
      |> Ash.read!(actor: actor(world, :read_all), page: false)

    grant.classes
  end

  defp administered_classes(world, user) do
    Class
    |> Ash.Query.load(:admins)
    |> Ash.read!(actor: actor(world, :read_all), page: false)
    |> Enum.filter(fn class -> Enum.any?(class.admins, &(&1.uid == user.uid)) end)
  end
end
