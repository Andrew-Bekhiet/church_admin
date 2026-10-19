defmodule ChurchAdmin.Changes.InUseOnForeignKey do
  @moduledoc """
  Answers a destroy that a restricting foreign key refused with a
  `ChurchAdmin.Errors.DomainError` carrying `code` (`<resource>/in-use`).
  The resource lists the restricting constraints in `foreign_key_names`
  (`{field, constraint}`); AshPostgres reports each under that field, and
  this change turns an error on one of those fields into the domain error.

      postgres do
        foreign_key_names [{:addresses, "addresses_areas_fk"}]
      end

      changes do
        change {InUseOnForeignKey, code: Codes.area_in_use()}, on: [:destroy]
      end
  """

  use Ash.Resource.Change

  alias Ash.Error.Changes.InvalidAttribute
  alias ChurchAdmin.Errors.DomainError

  @options_schema [code: [type: :string, required: true]]

  @impl true
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl true
  def change(changeset, opts, _context) do
    fields = restricting_fields(changeset.resource)

    Ash.Changeset.handle_errors(changeset, fn _changeset, error ->
      case error do
        %InvalidAttribute{field: field} ->
          if field in fields,
            do: DomainError.exception(code: opts[:code], fields: [field]),
            else: error

        other ->
          other
      end
    end)
  end

  defp restricting_fields(resource) do
    resource
    |> AshPostgres.DataLayer.Info.foreign_key_names()
    |> List.wrap()
    |> Enum.map(&elem(&1, 0))
  end
end
