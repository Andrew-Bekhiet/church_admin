defmodule ChurchAdmin.Validations.ReferencesVisible do
  @moduledoc """
  The records an attribute or argument names (one id or a list) exist and the
  actor can read them; otherwise the action fails with `relation/not-found`
  on that field, the same answer for a missing record and one the actor may
  not see. A `nil` value names nothing and passes.

      validate {ReferencesVisible, attribute: :admin_family_id, resource: Family}
      validate {ReferencesVisible, argument: :areas, resource: Area}
  """

  use Ash.Resource.Validation

  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Errors.DomainError

  require Ash.Query

  @options_schema [
    attribute: [type: :atom],
    argument: [type: :atom],
    resource: [type: :atom, required: true]
  ]

  @impl true
  def init(opts) do
    with {:ok, opts} <- Spark.Options.validate(opts, @options_schema),
         true <- Keyword.has_key?(opts, :attribute) != Keyword.has_key?(opts, :argument) do
      {:ok, opts}
    else
      false -> {:error, "give either `attribute` or `argument`"}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl true
  def validate(changeset, opts, context) do
    field = opts[:attribute] || opts[:argument]

    ids =
      changeset
      |> value(opts)
      |> List.wrap()
      |> Enum.reject(&is_nil/1)
      |> Enum.uniq()

    if all_readable?(opts[:resource], ids, context.actor) do
      :ok
    else
      {:error, DomainError.exception(code: Codes.relation_not_found(), fields: [field])}
    end
  end

  defp value(changeset, opts) do
    if opts[:attribute],
      do: Ash.Changeset.get_attribute(changeset, opts[:attribute]),
      else: Ash.Changeset.get_argument(changeset, opts[:argument])
  end

  defp all_readable?(_resource, [], _actor), do: true

  defp all_readable?(resource, ids, actor) do
    count =
      resource
      |> Ash.Query.filter(id in ^ids)
      |> Ash.count!(actor: actor)

    count == length(ids)
  end
end
