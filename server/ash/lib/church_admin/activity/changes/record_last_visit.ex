defmodule ChurchAdmin.Activity.Changes.RecordLastVisit do
  @moduledoc """
  Records a visit of the written record when the command's `last_visit`
  argument differs from the time of its latest visit, so a client that sends
  the unchanged value back records nothing. The visit is stamped with the
  acting user and written without authorization: the command's own policy
  already decided the actor may edit the record.

      change {RecordLastVisit, table: "areas"}, on: [:create, :update]
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Activity.Visit
  alias ChurchAdmin.Changes.AfterActionFailure

  require Ash.Query

  @options_schema [
    table: [type: :string, required: true],
    argument: [type: :atom, default: :last_visit],
    is_father_visit: [type: :boolean, default: false]
  ]

  @impl true
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl true
  def change(changeset, opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, record ->
      time = Ash.Changeset.get_argument(changeset, opts[:argument])

      case record_visit(time, record, opts, context.actor) do
        :ok -> {:ok, record}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  defp record_visit(nil, _record, _opts, _actor), do: :ok

  defp record_visit(time, record, opts, actor) do
    if latest_visit_time(record.id, opts[:table]) == time do
      :ok
    else
      Visit
      |> Ash.Changeset.for_create(
        :record,
        %{
          table: opts[:table],
          record_id: record.id,
          time: time,
          is_father_visit: opts[:is_father_visit]
        },
        actor: actor,
        authorize?: false
      )
      |> Ash.create()
      |> case do
        {:ok, _visit} -> :ok
        {:error, error} -> {:error, error}
      end
    end
  end

  defp latest_visit_time(record_id, table) do
    Visit
    |> Ash.Query.filter(table == ^table and record_id == ^record_id)
    |> Ash.Query.sort(time: :desc)
    |> Ash.Query.limit(1)
    |> Ash.read!(authorize?: false)
    |> case do
      [visit] -> visit.time
      [] -> nil
    end
  end
end
