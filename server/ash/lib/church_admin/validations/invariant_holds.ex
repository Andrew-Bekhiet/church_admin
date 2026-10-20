defmodule ChurchAdmin.Validations.InvariantHolds do
  @moduledoc """
  Checks an invariant against the state an action wrote, after the write and
  its child writes and inside the same transaction, so a violation rolls the
  whole command back. It replaces the deferred constraint triggers, which
  checked at commit.

  `violations` receives the written records (one, or a whole batch) and
  returns an `Ash.Query` for those that break the invariant; one existence
  query runs, without authorization. A match fails the action with a
  `ChurchAdmin.Errors.DomainError` carrying `code` and `fields`.

      change {InvariantHolds,
              code: Codes.validation_invalid(), fields: [:family_id],
              violations: &PersonInvariants.unanchored/1},
             on: [:create, :update]
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Changes.AfterActionFailure
  alias ChurchAdmin.Errors.DomainError

  @options_schema [
    code: [type: :string, required: true],
    fields: [type: {:list, :atom}, default: []],
    violations: [type: {:fun, 1}, required: true]
  ]

  @impl true
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl true
  def change(changeset, opts, _context) do
    Ash.Changeset.after_action(changeset, fn changeset, record ->
      case check([record], opts) do
        :ok -> {:ok, record}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  @impl true
  def atomic(changeset, opts, context), do: {:ok, change(changeset, opts, context)}

  @impl true
  def batch_callbacks?(%Ash.Query{}, _opts, _context), do: false
  def batch_callbacks?(_changesets, _opts, _context), do: true

  @impl true
  def batch_change(changesets, _opts, _context), do: changesets

  @impl true
  def after_batch(changesets_and_results, opts, _context) do
    case check(Enum.map(changesets_and_results, &elem(&1, 1)), opts) do
      :ok -> :ok
      {:error, error} -> [{:error, error}]
    end
  end

  defp check([], _opts), do: :ok

  defp check(records, opts) do
    violations_query = opts[:violations].(records)

    if Ash.exists?(violations_query, authorize?: false) do
      {:error, DomainError.exception(code: opts[:code], fields: opts[:fields])}
    else
      :ok
    end
  end
end
