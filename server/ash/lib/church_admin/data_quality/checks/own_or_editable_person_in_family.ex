defmodule ChurchAdmin.DataQuality.Checks.OwnOrEditablePersonInFamily do
  @moduledoc """
  Filter check: the record's family has a live person who is the acting user's
  own person, approved or not, or one the actor may edit. Hasura let a family
  member override their family's data check without approval; this keeps that.

      authorize_if ChurchAdmin.DataQuality.Checks.OwnOrEditablePersonInFamily
  """

  use Ash.Policy.FilterCheck

  import Ash.Expr

  alias ChurchAdmin.Authz.{Actor, Scope}

  @impl true
  def describe(_opts),
    do: "a live person of the family is the actor's own or one the actor may edit"

  @impl true
  def filter(%Actor{} = actor, _context, _opts) do
    member = expr(is_nil(deleted_at) and (^own_person(actor) or ^Scope.person(actor, :edit)))
    Ash.Query.Exists.new([:family, :persons], member)
  end

  def filter(_actor, _context, _opts), do: false

  defp own_person(%Actor{uid: uid}) when is_binary(uid), do: expr(not is_nil(uid) and uid == ^uid)
  defp own_person(_actor), do: false
end
