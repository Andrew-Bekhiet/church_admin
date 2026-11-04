defmodule ChurchAdmin.Realtime.Live.ClientListWindowsTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.ClientDocuments
  alias ChurchAdmin.Factory
  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.Refresh
  alias ChurchAdmin.Realtime.Live.Result

  @required_variables %{
    "meetingsHeldDays" => %{"from" => "2000-01-01", "to" => "2100-01-01"}
  }

  defp admin! do
    user = Factory.user!()
    Factory.permissions!(user, ~w(approved readAllData writeAllData manageAllUsers))

    %{
      ActorLoader.load(user.uid)
      | principal: %Principal{uid: user.uid, auth_id: "firebase", claims: %{}}
    }
  end

  defp with_root_typename(text),
    do: Regex.replace(~r/\A([^{]*\{)/, text, "\\1 __typename", global: false)

  defp list_documents do
    for {operation, text} <- ClientDocuments.queries(),
        {:ok, document} = text |> with_root_typename() |> Document.prepare(operation),
        MapSet.member?(document.variables, "first"),
        do: {operation, document}
  end

  defp window_run(operation, document, actor) do
    Refresh.run(%{
      document: document,
      variables: Map.get(@required_variables, operation, %{}),
      window: %{rows: 10, chunk: 10},
      actor: actor,
      known_hashes: nil,
      window_required?: true,
      result: nil,
      dependencies: nil,
      rows_stand_alone?: nil,
      touched: [],
      changes: []
    })
  end

  test "every client list document runs as a window of rows" do
    documents = list_documents()
    actor = admin!()

    refused =
      for {operation, document} <- documents,
          not match?(
            {:ok, %{result: %Result{rows: rows}}} when is_list(rows),
            window_run(operation, document, actor)
          ),
          do: operation

    assert length(documents) > 20
    assert refused == []
  end
end
