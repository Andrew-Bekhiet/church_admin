defmodule ChurchAdmin.Realtime.Live.ViewerClassCompletenessTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Accounts.{DeviceToken, Preferences}
  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.ClientDocuments
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.ViewerClass
  alias ChurchAdminWeb.Graphql.Pipeline

  @read_only_reader ~w(approved readAllData)
  @full_admin ~w(approved readAllData writeAllData manageAllUsers exportAllData)
  @write_all_without_manage_all ~w(approved readAllData writeAllData)

  @registered_never_since_they_mint_links ~w(photoDownloadUrl appDownloadLink)

  defp reader!(permissions, service) do
    user = Factory.user!()
    Factory.permissions!(user, permissions)

    Factory.grant!(user, :service, service.id,
      edit?: true,
      export?: false,
      record_persons?: false,
      manage_users?: true,
      record_servants?: true
    )

    family = Factory.family!()
    person = Factory.person!(%{family_id: family.id, uid: user.uid})
    Factory.edit_row!("persons", person.id)
    Ash.Seed.seed!(Preferences, %{uid: user.uid, dark_theme: permissions == @full_admin})
    Ash.Seed.seed!(DeviceToken, %{uid: user.uid, token: "token-#{user.uid}"})

    %{user: user, person: person, family: family}
  end

  defp world(permissions, study_year_order) do
    service = Factory.service!()
    first = reader!(permissions, service)
    second = reader!(permissions, service)
    group = Factory.group!(service)
    area = Factory.area!()
    street = Factory.street!(area)
    store = Factory.store!()
    year = Factory.study_year!(study_year_order)
    class = Factory.class!(service, service_study_year: year.order)
    meeting = Factory.meeting!(service_id: service.id)

    Factory.address!(%{family_id: first.family.id, area_id: area.id, street_id: street.id})

    ids = %{
      "area" => area.id,
      "class" => class.id,
      "family" => first.family.id,
      "familyWithRelatives" => first.family.id,
      "group" => group.id,
      "meeting" => meeting.id,
      "person" => first.person.id,
      "personMemberships" => first.person.id,
      "personHistoryAnalysis" => first.person.id,
      "service" => service.id,
      "store" => store.id,
      "street" => street.id,
      "studyYear" => year.order,
      "user" => first.user.uid
    }

    {actor!(first.user), actor!(second.user), ids}
  end

  defp actor!(user) do
    %{
      ActorLoader.load(user.uid)
      | principal: %Principal{uid: user.uid, auth_id: "firebase-#{user.uid}", claims: %{}}
    }
  end

  defp variable_sets("user", ids) do
    [%{"id" => ids["user"], "fullData" => false}, %{"id" => ids["user"], "fullData" => true}]
  end

  defp variable_sets("personHistoryAnalysis", ids) do
    [
      %{
        "id" => ids["personHistoryAnalysis"],
        "callHistory" => true,
        "visitHistory" => true,
        "editHistory" => true,
        "confessionHistory" => true,
        "kodasHistory" => true
      }
    ]
  end

  defp variable_sets("meetingsHeldDays", _ids),
    do: [%{"first" => 1_000, "from" => "2000-01-01", "to" => "2100-01-01"}]

  defp variable_sets("homeSearch", _ids), do: [%{"query" => "%"}]

  defp variable_sets(operation, ids) do
    case ids do
      %{^operation => id} -> [%{"id" => id}]
      _list -> [%{"first" => 1_000}]
    end
  end

  defp results_of(text, operation, variables, actor) do
    {:ok, document} = Document.prepare(text, operation)

    case Pipeline.run_parsed(document.parsed, operation, variables, actor) do
      %{errors: errors} -> flunk("#{operation} #{inspect(variables)}: #{inspect(errors)}")
      %{data: data} -> data
    end
  end

  defp fields_that_differ(first, second, ids) do
    for {operation, text} <- ClientDocuments.queries(),
        operation not in @registered_never_since_they_mint_links,
        variables <- variable_sets(operation, ids),
        field <-
          different_fields(
            results_of(text, operation, variables, first),
            results_of(text, operation, variables, second)
          ),
        uniq: true,
        do: field
  end

  defp different_fields(%{} = first, %{} = second) do
    Enum.flat_map(first, fn {field, value} -> difference(field, value, second[field]) end)
  end

  defp difference(_field, same, same), do: []

  defp difference(field, %{} = first, %{} = second) do
    if first["id"] == second["id"], do: different_fields(first, second), else: [field]
  end

  defp difference(field, first, second)
       when is_list(first) and length(first) == length(second) do
    first |> Enum.zip(second) |> Enum.flat_map(fn {a, b} -> difference(field, a, b) end)
  end

  defp difference(field, _first, _second), do: [field]

  defp key_of(text, actor) do
    {:ok, document} = Document.prepare(text, nil)
    ViewerClass.key(actor, document.selected_fields)
  end

  test "the fixture's readers differ only in the fields the viewer class blanks" do
    {first, second, _ids} = world(@read_only_reader, 1)

    assert ViewerClass.global_reader?(first)
    assert ViewerClass.key(first, MapSet.new()) == ViewerClass.key(second, MapSet.new())
    assert first.uid != second.uid
    assert first.person_id != second.person_id
    assert first.family_id != second.family_id
    assert first.managed_user_uids == [second.uid]
    assert second.managed_user_uids == [first.uid]
    assert first.visible_servant_uids == [second.uid]
    assert second.visible_servant_uids == [first.uid]
  end

  describe "the per-uid lists are exactly the fields whose values differ" do
    test "for everyone: the fields that differ between two full admins" do
      {first, second, ids} = world(@full_admin, 2)

      assert first.write_all? and first.manage_all_users?

      assert Enum.sort(ViewerClass.fields_per_uid_for_everyone()) ==
               first |> fields_that_differ(second, ids) |> Enum.sort()
    end

    test "below full write: the rest of what differs between two read-only global readers" do
      {first, second, ids} = world(@read_only_reader, 1)

      assert Enum.sort(ViewerClass.fields_per_uid_below_full_write()) ==
               Enum.sort(
                 fields_that_differ(first, second, ids) --
                   ViewerClass.fields_per_uid_for_everyone()
               )
    end

    test "write-all without manage-all differs on managing users, so it is below full write" do
      {first, second, ids} = world(@write_all_without_manage_all, 3)

      assert first.write_all?
      refute first.manage_all_users?

      differ = fields_that_differ(first, second, ids)

      assert "currentUserCanManageThisUser" in differ

      assert differ --
               (ViewerClass.fields_per_uid_for_everyone() ++
                  ViewerClass.fields_per_uid_below_full_write()) == []
    end

    test "a client document whose results differ is keyed per viewer" do
      {first, second, ids} = world(@read_only_reader, 1)

      for {operation, text} <- ClientDocuments.queries(),
          operation not in @registered_never_since_they_mint_links,
          variables <- variable_sets(operation, ids),
          results_of(text, operation, variables, first) !=
            results_of(text, operation, variables, second) do
        assert key_of(text, first) != key_of(text, second), operation
      end
    end
  end
end
