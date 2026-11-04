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

  defp world(permissions) do
    service = Factory.service!()
    first = reader!(permissions, service)
    second = reader!(permissions, service)
    group = Factory.group!(service)
    area = Factory.area!()
    street = Factory.street!(area)
    store = Factory.store!()
    year = Factory.study_year!(System.unique_integer([:positive]))
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

  defp operations_that_differ(first, second, ids) do
    for {operation, text} <- ClientDocuments.queries(),
        operation not in @registered_never_since_they_mint_links,
        variables <- variable_sets(operation, ids),
        results_of(text, operation, variables, first) !=
          results_of(text, operation, variables, second),
        uniq: true,
        do: operation
  end

  test "the fixture's readers differ only in the fields the viewer class blanks" do
    {first, second, _ids} = world(@read_only_reader)

    assert ViewerClass.global_reader?(first)
    assert ViewerClass.key(first, nil) == ViewerClass.key(second, nil)
    assert first.uid != second.uid
    assert first.person_id != second.person_id
    assert first.family_id != second.family_id
    assert first.managed_user_uids == [second.uid]
    assert second.managed_user_uids == [first.uid]
    assert first.visible_servant_uids == [second.uid]
    assert second.visible_servant_uids == [first.uid]
  end

  test "the per-uid list is exactly the operations whose results differ between global readers" do
    {read_only_first, read_only_second, read_only_ids} = world(@read_only_reader)
    {admin_first, admin_second, admin_ids} = world(@full_admin)

    differ =
      operations_that_differ(read_only_first, read_only_second, read_only_ids) ++
        operations_that_differ(admin_first, admin_second, admin_ids)

    assert Enum.sort(ViewerClass.per_uid_operations()) == differ |> Enum.uniq() |> Enum.sort()
  end
end
