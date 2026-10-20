defmodule ChurchAdmin.Authz.ActorLoaderTest do
  use ChurchAdmin.AuthzCase, async: false

  alias ChurchAdmin.Authz.{Actor, ActorLoader, Grant}
  alias ChurchAdmin.Factory

  defp load(world, kind), do: ActorLoader.load(world.users[kind].uid)

  test "an unapproved user keeps its raw permissions but no grants or global flags", %{
    world: world
  } do
    actor = load(world, :unapproved_with_grants)

    assert %Actor{approved?: false, read_all?: false, service_grants: [], managed_user_uids: []} =
             actor
  end

  test "global flags need approval and readAllData, as the view's any rows do", %{world: world} do
    assert %Actor{approved?: true, read_all?: true, write_all?: false} = load(world, :read_all)
    assert %Actor{write_all?: true, manage_all_users?: false} = load(world, :read_write)
    assert %Actor{manage_all_users?: true} = load(world, :manage_users)
    assert %Actor{export_all?: true, write_all?: false} = load(world, :export_all)

    user = Factory.user!()
    Factory.permissions!(user, ["approved", "writeAllData", "recordAllAttendance"])

    assert %Actor{write_all?: false, record_all_attendance?: false} = ActorLoader.load(user.uid)
  end

  test "own person and live family", %{world: world} do
    actor = load(world, :approved_plain)

    assert actor.person_id == world.records.self.id
    assert actor.family_id == world.records.f_own.id

    user = Factory.user!()
    Factory.permissions!(user, ["approved"])
    family = Factory.family!()
    Factory.person!(uid: user.uid, family_id: family.id, deleted_at: Factory.deleted_at())

    assert %Actor{family_id: nil} = ActorLoader.load(user.uid)
  end

  test "scope grants carry their restriction and flags", %{world: world} do
    s1_id = world.records.s1.id

    assert [%Grant{scope_id: ^s1_id, study_year: 1, gender: nil, edit?: true}] =
             load(world, :service_year_edit).service_grants

    assert [%Grant{edit?: true, export?: true}] = load(world, :area_edit).area_grants
    assert [%Grant{edit?: true}] = load(world, :group_edit).group_grants
  end

  test "managed users share a scope with an admin-on-users grant, approved or not", %{
    world: world
  } do
    managed = MapSet.new(load(world, :service_admin_users).managed_user_uids)

    assert world.users.unapproved_with_grants.uid in managed
    assert world.users.servant.uid in managed
    refute world.users.service_admin_users.uid in managed
    refute world.users.area_read.uid in managed
  end

  test "visible servants are other approved users sharing a record-servants scope", %{
    world: world
  } do
    servants = MapSet.new(load(world, :service_record_servants).visible_servant_uids)

    assert world.users.servant.uid in servants
    refute world.users.unapproved_with_grants.uid in servants
    refute world.users.service_record_servants.uid in servants
  end

  test "a uid without a users_data row loads with every flag off" do
    uid = Ash.UUID.generate()
    assert ActorLoader.load(uid) == %Actor{uid: uid}
  end

  describe "load_for_principal/1" do
    defp principal(auth_id, uid),
      do: %ChurchAdmin.Auth.Principal{auth_id: auth_id, uid: uid, claims: %{}}

    test "loads the actor when the uid belongs to the principal's account" do
      user = Factory.user!(%{auth_id: "firebase-owner"})
      Factory.permissions!(user, ["approved"])
      principal = principal("firebase-owner", user.uid)

      assert {:ok, %Actor{uid: uid, approved?: true, principal: ^principal}} =
               ActorLoader.load_for_principal(principal)

      assert uid == user.uid
    end

    test "refuses a uid that belongs to another account" do
      user = Factory.user!(%{auth_id: "firebase-owner"})

      assert ActorLoader.load_for_principal(principal("firebase-intruder", user.uid)) == :error
    end

    test "refuses a uid whose user has no account linked" do
      user = Factory.user!(%{auth_id: nil})

      assert ActorLoader.load_for_principal(principal("firebase-intruder", user.uid)) == :error
    end

    test "refuses a uid no user has" do
      assert ActorLoader.load_for_principal(principal("firebase-owner", Ash.UUID.generate())) ==
               :error
    end
  end
end
