defmodule ChurchAdmin.Exports.Authorization do
  @moduledoc """
  All or nothing: an export is allowed only when the actor may export every
  selected area, service, class and group
  (`ChurchAdmin.Authz.Scope.exportable?/3`). One id without the right fails
  the whole request with `export/forbidden`.
  """

  alias ChurchAdmin.Authz.Scope
  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Exports.Selection

  @spec authorize(ChurchAdmin.Authz.Actor.t() | nil, Selection.t()) ::
          :ok | {:error, DomainError.t()}
  def authorize(actor, %Selection{} = selection) do
    exportable? =
      selection
      |> Selection.entity_ids()
      |> Enum.all?(fn {entity, ids} -> Scope.exportable?(actor, entity, ids) end)

    if exportable?,
      do: :ok,
      else: {:error, DomainError.exception(code: Codes.export_forbidden())}
  end
end
