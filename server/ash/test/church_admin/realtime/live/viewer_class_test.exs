defmodule ChurchAdmin.Realtime.Live.ViewerClassTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.{Actor, Grant}
  alias ChurchAdmin.Realtime.Live.ViewerClass

  defp global_reader(overrides \\ []) do
    struct!(
      %Actor{
        uid: "uid-a",
        principal: %Principal{uid: "uid-a", auth_id: "a", claims: %{}},
        person_id: "person-a",
        family_id: "family-a",
        approved?: true,
        read_all?: true,
        permissions: MapSet.new(["approved", "readAllData"]),
        managed_user_uids: ["uid-c"],
        visible_servant_uids: ["uid-d"]
      },
      overrides
    )
  end

  defp global_reader_with_other_identity do
    global_reader(
      uid: "uid-b",
      principal: %Principal{uid: "uid-b", auth_id: "b", claims: %{}},
      person_id: "person-b",
      family_id: "family-b",
      managed_user_uids: ["uid-e"],
      visible_servant_uids: ["uid-f"]
    )
  end

  test "two global readers that differ only in identity share a class" do
    assert ViewerClass.key(global_reader(), "hobbies") ==
             ViewerClass.key(global_reader_with_other_identity(), "hobbies")
  end

  test "any difference in a flag, a permission or a grant splits the class" do
    base = ViewerClass.key(global_reader(), "hobbies")
    with_grant = [%Grant{id: "g", scope_id: "s"}]

    for different <- [
          global_reader(write_all?: true),
          global_reader(manage_all_users?: true),
          global_reader(permissions: MapSet.new(["approved", "readAllData", "deleteData"])),
          global_reader(service_grants: with_grant),
          global_reader(group_grants: with_grant),
          global_reader(area_grants: with_grant)
        ] do
      assert ViewerClass.key(different, "hobbies") != base
    end
  end

  test "grants match by content, whatever their row ids and order" do
    first = %Grant{id: "1", scope_id: "s1"}
    second = %Grant{id: "2", scope_id: "s2"}
    same_rights = [%{second | id: "3"}, %{first | id: "4"}]

    written_first = global_reader(service_grants: [first, second])
    written_last = global_reader(service_grants: same_rights)

    assert ViewerClass.key(written_first, "hobbies") == ViewerClass.key(written_last, "hobbies")
  end

  test "an actor without a global read is keyed by its uid" do
    actor = %Actor{uid: "uid-a", approved?: true}

    assert ViewerClass.key(actor, "hobbies") == {:uid, "uid-a"}
  end

  test "an operation on the per-uid list is keyed by uid even for a global reader" do
    per_uid = ViewerClass.per_uid_operations()

    for operation <- per_uid do
      assert ViewerClass.key(global_reader(), operation) == {:uid, "uid-a"}
    end
  end

  test "same_scope? ignores the token and notices a change in identity-bound facts" do
    reader = global_reader()

    other_token = %{
      reader
      | principal: %Principal{uid: "uid-a", auth_id: "a", claims: %{"n" => 1}}
    }

    assert ViewerClass.same_scope?(reader, other_token)
    refute ViewerClass.same_scope?(reader, %{reader | managed_user_uids: ["uid-z"]})
    refute ViewerClass.same_scope?(reader, %{reader | family_id: "family-z"})
  end

  test "an anonymous operation of a global reader still shares" do
    assert ViewerClass.key(global_reader(), nil) ==
             ViewerClass.key(global_reader_with_other_identity(), nil)
  end
end
