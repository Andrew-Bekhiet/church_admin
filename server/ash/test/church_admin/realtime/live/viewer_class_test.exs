defmodule ChurchAdmin.Realtime.Live.ViewerClassTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.{Actor, Grant}
  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.ViewerClass

  @plain_fields MapSet.new(~w(hobbies results id name))

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
    assert ViewerClass.key(global_reader(), @plain_fields) ==
             ViewerClass.key(global_reader_with_other_identity(), @plain_fields)
  end

  test "any difference in a flag, a permission or a grant splits the class" do
    base = ViewerClass.key(global_reader(), @plain_fields)
    with_grant = [%Grant{id: "g", scope_id: "s"}]

    for different <- [
          global_reader(write_all?: true),
          global_reader(manage_all_users?: true),
          global_reader(permissions: MapSet.new(["approved", "readAllData", "deleteData"])),
          global_reader(service_grants: with_grant),
          global_reader(group_grants: with_grant),
          global_reader(area_grants: with_grant)
        ] do
      assert ViewerClass.key(different, @plain_fields) != base
    end
  end

  test "grants match by content, whatever their row ids and order" do
    first = %Grant{id: "1", scope_id: "s1"}
    second = %Grant{id: "2", scope_id: "s2"}
    same_rights = [%{second | id: "3"}, %{first | id: "4"}]

    written_first = global_reader(service_grants: [first, second])
    written_last = global_reader(service_grants: same_rights)

    assert ViewerClass.key(written_first, @plain_fields) ==
             ViewerClass.key(written_last, @plain_fields)
  end

  test "an actor without a global read is keyed by its uid" do
    actor = %Actor{uid: "uid-a", approved?: true}

    assert ViewerClass.key(actor, @plain_fields) == {:uid, "uid-a"}
  end

  defp fields_of(text) do
    {:ok, document} = Document.prepare(text, nil)
    document.selected_fields
  end

  test "every field that depends on identity is keyed by uid for a read-only global reader" do
    fields =
      ViewerClass.fields_per_uid_for_everyone() ++ ViewerClass.fields_per_uid_below_full_write()

    for field <- fields do
      assert ViewerClass.key(global_reader(), MapSet.new(["persons", field])) == {:uid, "uid-a"}
    end
  end

  test "a full admin is keyed by uid only for fields that depend on identity for everyone" do
    admin = global_reader(write_all?: true, manage_all_users?: true)

    for field <- ViewerClass.fields_per_uid_for_everyone() do
      assert ViewerClass.key(admin, MapSet.new([field])) == {:uid, "uid-a"}
    end

    for field <- ViewerClass.fields_per_uid_below_full_write() do
      assert {:global_reader, _facts} = ViewerClass.key(admin, MapSet.new([field]))
    end
  end

  test "write-all without manage-all is not a full writer" do
    writer = global_reader(write_all?: true)

    assert ViewerClass.key(writer, MapSet.new(["currentUserCanManageThisUser"])) ==
             {:uid, "uid-a"}
  end

  test "what decides is the document's selection, however the client names or hides it" do
    for text <- [
          "query renamed { persons { results { userCanEdit } } }",
          "{ persons { results { userCanEdit } } }",
          "{ persons { results { editable: userCanEdit } } }",
          "{ persons { results { ...Row } } } fragment Row on Person { userCanEdit }",
          "{ persons { results { ... on Person { userCanEdit } } } }",
          "{ persons { results { family { persons { userCanEdit } } } } }"
        ] do
      assert ViewerClass.key(global_reader(), fields_of(text)) == {:uid, "uid-a"}, text
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

  test "an anonymous document selecting nothing identity-bound still shares" do
    fields = fields_of("{ persons { results { id name } } }")

    assert ViewerClass.key(global_reader(), fields) ==
             ViewerClass.key(global_reader_with_other_identity(), fields)
  end
end
