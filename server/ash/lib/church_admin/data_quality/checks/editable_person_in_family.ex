defmodule ChurchAdmin.DataQuality.Checks.EditablePersonInFamily do
  @moduledoc """
  Filter check: the record's family has a live person the actor may edit,
  which includes an approved actor's own person.

      authorize_if ChurchAdmin.DataQuality.Checks.EditablePersonInFamily
  """

  use Ash.Policy.FilterCheck

  import Ash.Expr

  alias ChurchAdmin.Authz.Scope

  @impl Ash.Policy.Check
  def describe(_opts), do: "a live person of the family is one the actor may edit"

  @impl Ash.Policy.FilterCheck
  def filter(actor, _context, _opts) do
    case Scope.person(actor, :edit) do
      false ->
        false

      editable ->
        Ash.Query.Exists.new([:family, :persons], expr(is_nil(deleted_at) and ^editable))
    end
  end
end
