defmodule ChurchAdmin.Realtime.Live.ClientListDependenciesTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.ClientDocuments
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.Refresh

  defp admin! do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved readAllData writeAllData manageAllUsers))

    %{
      ActorLoader.load(user.uid)
      | principal: %Principal{uid: user.uid, auth_id: "firebase", claims: %{}}
    }
  end

  defp dependencies_of(operation, actor) do
    {:ok, document} = Document.prepare(ClientDocuments.queries()[operation], operation)

    {:ok, %{dependencies: dependencies}} =
      Refresh.run(%{
        document: document,
        variables: %{},
        window: %{rows: 10, chunk: 10},
        actor: actor,
        known_hashes: nil,
        touched: []
      })

    dependencies
  end

  for operation <- ~w(persons families familiesWithAddresses geolocatedFamilies) do
    test "#{operation}, which selects dataCheck, has column dependencies" do
      family = Factory.family!()
      Factory.person!(%{family_id: family.id})

      dependencies = dependencies_of(unquote(operation), admin!())

      assert dependencies != :everything
      assert is_map_key(dependencies, {"public", "families"})
    end
  end
end
