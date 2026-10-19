defmodule ChurchAdmin.Changes.CodeTakenIdentity do
  @moduledoc """
  Reports a unique-index violation on `field` as a `DomainError` carrying
  `code`, in place of Ash's generic "has already been taken".

      change {CodeTakenIdentity, field: :order, code: Codes.person_type_order_taken()}
  """

  use Ash.Resource.Change

  alias Ash.Error.Changes.InvalidAttribute
  alias ChurchAdmin.Errors.DomainError

  @options_schema [
    field: [type: :atom, required: true],
    code: [type: :string, required: true]
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
    Ash.Changeset.handle_errors(changeset, fn _changeset, error ->
      translate(error, opts[:field], opts[:code])
    end)
  end

  defp translate(%InvalidAttribute{field: field, message: "has already been taken"}, field, code),
    do: DomainError.exception(code: code, fields: [field])

  defp translate(error, _field, _code), do: error
end
