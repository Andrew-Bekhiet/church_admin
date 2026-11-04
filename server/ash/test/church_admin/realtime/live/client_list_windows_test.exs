defmodule ChurchAdmin.Realtime.Live.ClientListWindowsTest do
  use ChurchAdmin.DataCase, async: false

  alias ChurchAdmin.ClientDocuments
  alias ChurchAdmin.ClientListWorld
  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Live.Narrowing
  alias ChurchAdmin.Realtime.Live.Refresh
  alias ChurchAdmin.Realtime.Live.Result
  alias ChurchAdmin.Realtime.Live.Window
  alias ChurchAdmin.Realtime.TypeMap
  alias ChurchAdminWeb.Graphql.Pipeline

  @required_variables %{
    "meetingsHeldDays" => %{"from" => "2000-01-01", "to" => "2100-01-01"}
  }
  @window %{rows: 10, chunk: 10}

  @filters_have_no_id ~w(calls edits personMeetingEntries rosterAttendance rosterEntries studyYears users visits)
  @rows_read_their_own_table ~w(families familiesWithAddresses geolocatedFamilies persons personsPhoneContacts)
  @window_for_everyone Enum.sort(@filters_have_no_id ++ @rows_read_their_own_table)
  @window_for_a_scoped_user_only ~w(geolocatedPersons geolocatedStores meetingsWithDays)

  defp list_documents do
    paging_variables = MapSet.new(~w(first after))

    for {operation, text} <- ClientDocuments.queries_as_sent(),
        {:ok, document} = Document.prepare(text, operation),
        MapSet.subset?(paging_variables, document.declared_variables),
        do: {operation, document}
  end

  defp input(operation, document, actor) do
    %{
      document: document,
      variables: Map.get(@required_variables, operation, %{}),
      window: @window,
      actor: actor,
      stored_hashes: nil,
      window_required?: true,
      result: nil,
      dependencies: nil,
      rows_stand_alone?: nil,
      touched: [],
      changes: []
    }
  end

  defp window_run(operation, document, actor),
    do: operation |> input(document, actor) |> Refresh.run()

  defp row_type(document), do: Pipeline.list_row_type(document.root_field)

  defp plan_after_a_change_to_its_first_row(operation, document, actor) do
    {:ok, run} = window_run(operation, document, actor)
    type = row_type(document)

    Narrowing.plan(%{
      input(operation, document, actor)
      | window_required?: false,
        result: run.result,
        dependencies: run.dependencies,
        rows_stand_alone?: run.rows_stand_alone?,
        touched: [
          %{
            relation: TypeMap.relation_of_type(type),
            op: :update,
            columns: :all,
            id_types: [type]
          }
        ],
        changes: [%{type: type, id: run.result |> Result.ids() |> List.first(), op: "update"}]
    })
  end

  defp operations_that_need_the_window(actor) do
    needing_it =
      for {operation, document} <- list_documents(),
          plan_after_a_change_to_its_first_row(operation, document, actor) == :window,
          do: operation

    Enum.sort(needing_it)
  end

  test "every client list document, as printed, has one root field with rows of a known table" do
    documents = list_documents()

    assert length(documents) == 41

    for {operation, document} <- documents do
      assert document.root_field != nil, operation
      assert row_type(document) != nil, operation
      assert document |> row_type() |> TypeMap.relation_of_type() != nil, operation
    end
  end

  describe "with a row behind every list" do
    setup do
      {:ok, ClientListWorld.build!()}
    end

    test "every client list document runs as a window that holds rows", context do
      for {operation, document} <- list_documents(),
          actor <- [context.full_admin, context.scoped] do
        assert {:ok, %{result: %Result{} = result}} = window_run(operation, document, actor)
        assert Result.data(result)[document.root_field]["results"] != [], operation
      end
    end

    test "a change to one row narrows all but the lists that need the window", context do
      assert operations_that_need_the_window(context.full_admin) == @window_for_everyone

      assert operations_that_need_the_window(context.scoped) ==
               Enum.sort(@window_for_everyone ++ @window_for_a_scoped_user_only)
    end

    test "a narrowed run finds the row it names under a real client filter", context do
      for {operation, document} <- list_documents(),
          {:narrow, _candidates} <- [
            plan_after_a_change_to_its_first_row(operation, document, context.full_admin)
          ] do
        input = input(operation, document, context.full_admin)
        {:ok, %{result: result}} = Refresh.run(input)
        [id | _rest] = Result.ids(result)
        filtered = put_in(input.variables["filter"], %{"id" => %{"isNil" => false}})

        assert {:ok, [%{"id" => ^id}]} = Window.fetch_rows(filtered, [id]), operation
      end
    end
  end
end
