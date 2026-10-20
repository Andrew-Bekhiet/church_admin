defmodule ChurchAdmin.Authz.Calculations.UserCanEdit do
  @moduledoc """
  Whether the actor may edit the record: the `:edit` scope of `entity`
  (`ChurchAdmin.Authz.Scope`), evaluated in SQL per row. Never NULL.
  On a person it also holds for the actor's own linked person while the
  actor is unapproved, as `auth.user_can_edit_person` did (the scope already
  covers it once approved).

      calculate :user_can_edit, :boolean, {UserCanEdit, entity: :person},
        allow_nil?: false, public?: true
  """

  use Ash.Resource.Calculation

  import Ash.Expr

  alias ChurchAdmin.Authz.{Actor, Scope}

  @impl Ash.Resource.Calculation
  def expression(opts, context) do
    entity = Keyword.fetch!(opts, :entity)
    scope = Scope.for_entity(entity, context.actor, :edit)

    case {entity, context.actor} do
      {:person, %Actor{approved?: false, uid: uid}} when is_binary(uid) ->
        expr((not is_nil(uid) and uid == ^uid) or ^scope)

      _other ->
        scope
    end
  end
end
