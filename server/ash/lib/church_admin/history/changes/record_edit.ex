defmodule ChurchAdmin.History.Changes.RecordEdit do
  @moduledoc """
  Writes `history.edit_history` rows for every record a create, update or soft
  delete writes, inside the action's transaction; a hard delete writes none.
  An update writes its row even when nothing changed.

      changes do
        change {RecordEdit, table: "persons"}, on: [:create, :update, :destroy]
      end

  Options:

    * `table` and `record_id` (an attribute, default `:id`) name the one row
      per record. A join row writes several: `record_id: [{"groups", :group_id},
      {"persons", :person_id}]`.
    * `recorded_by` is `:actor` (default): the user actor's uid with role
      `"user"`, or nil with role `"admin"` for the system actor. A history row
      that names its own recorder passes `{:attribute, :recorded_by}`.

  A write without an actor fails rather than record an anonymous edit.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Activity.Edit
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Changes.AfterActionFailure

  @options_schema [
    table: [type: :string],
    record_id: [type: {:or, [:atom, {:list, {:tuple, [:string, :atom]}}]}, default: :id],
    recorded_by: [
      type: {:or, [{:in, [:actor]}, {:tuple, [{:in, [:attribute]}, :atom]}]},
      default: :actor
    ]
  ]

  @impl true
  def init(opts) do
    with {:ok, opts} <- Spark.Options.validate(opts, @options_schema),
         {:ok, rows} <- rows_per_record(opts) do
      {:ok, opts |> Keyword.drop([:table, :record_id]) |> Keyword.put(:rows, rows)}
    else
      {:error, %Spark.Options.ValidationError{} = error} -> {:error, Exception.message(error)}
      {:error, message} -> {:error, message}
    end
  end

  defp rows_per_record(opts) do
    case {opts[:table], opts[:record_id]} do
      {nil, rows} when is_list(rows) ->
        {:ok, rows}

      {table, attribute} when is_binary(table) and is_atom(attribute) ->
        {:ok, [{table, attribute}]}

      _ ->
        {:error, "give `table` with an attribute `record_id`, or a list of {table, attribute}"}
    end
  end

  @impl true
  def change(changeset, opts, context) do
    if writes_history?(changeset) do
      Ash.Changeset.after_action(changeset, fn changeset, record ->
        case record_edits([record], opts, context.actor) do
          :ok -> {:ok, record}
          {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
        end
      end)
    else
      changeset
    end
  end

  @impl true
  def atomic(changeset, opts, context), do: {:ok, change(changeset, opts, context)}

  @impl true
  def batch_callbacks?(%Ash.Query{}, _opts, _context), do: false
  def batch_callbacks?(_changesets, _opts, _context), do: true

  @impl true
  def batch_change(changesets, _opts, _context), do: changesets

  @impl true
  def after_batch(changesets_and_results, opts, context) do
    records =
      for {changeset, record} <- changesets_and_results, writes_history?(changeset), do: record

    case record_edits(records, opts, context.actor) do
      :ok -> :ok
      {:error, error} -> [{:error, error}]
    end
  end

  defp writes_history?(%{action: %{type: :destroy, soft?: soft?}}), do: soft?
  defp writes_history?(_changeset), do: true

  defp record_edits([], _opts, _actor), do: :ok

  defp record_edits(records, opts, actor) do
    with {:ok, actor_uid, user_role} <- recorder(actor) do
      records
      |> Enum.flat_map(&edit_rows(&1, opts, actor_uid, user_role))
      |> Ash.bulk_create(Edit, :record,
        authorize?: false,
        return_errors?: true,
        stop_on_error?: true
      )
      |> case do
        %Ash.BulkResult{status: :success} -> :ok
        %Ash.BulkResult{errors: errors} -> {:error, Ash.Error.to_error_class(errors)}
      end
    end
  end

  defp edit_rows(record, opts, actor_uid, user_role) do
    recorded_by =
      case opts[:recorded_by] do
        :actor -> actor_uid
        {:attribute, attribute} -> Map.fetch!(record, attribute)
      end

    for {table, attribute} <- opts[:rows] do
      %{
        table: table,
        record_id: Map.fetch!(record, attribute),
        recorded_by: recorded_by,
        user_role: user_role
      }
    end
  end

  defp recorder(%Actor{system?: true}), do: {:ok, nil, "admin"}
  defp recorder(%Actor{uid: uid}) when is_binary(uid), do: {:ok, uid, "user"}

  defp recorder(_actor) do
    {:error,
     Ash.Error.Changes.InvalidChanges.exception(
       message: "edit history needs a user actor with a uid or the system actor"
     )}
  end
end
