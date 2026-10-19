defmodule ChurchAdmin.Authz.Scope.Contact do
  @moduledoc """
  Contacts an actor may read, relative to `ChurchAdmin.People.Contact` and
  `ChurchAdmin.People.ResolvedContact`. A contact is read with its person;
  a family admin's contact (claimed by an admin-type person, or unclaimed
  with an admin type) is also read with any live member of that family.
  Soft-deleted persons count for the first rule and never for the second.
  """

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine

  alias ChurchAdmin.Authz.{Actor, Scope}

  @spec contact(Actor.t() | nil, :read) :: Ash.Expr.t()
  def contact(actor, :read) do
    readable_with(actor, fn person_scope ->
      any_of([
        expr(exists(person, ^person_scope)),
        expr(
          exists(person_type, is_family_admin) and
            exists(family_members, is_nil(deleted_at) and ^person_scope)
        ),
        expr(
          exists(
            person,
            exists(person_type, is_family_admin) and
              exists(family_members, is_nil(deleted_at) and ^person_scope)
          )
        )
      ])
    end)
  end

  @spec resolved_contact(Actor.t() | nil, :read) :: Ash.Expr.t()
  def resolved_contact(actor, :read) do
    readable_with(actor, fn person_scope ->
      any_of([
        expr(exists(person, ^person_scope)),
        expr(
          exists(person_type, is_family_admin) and
            exists(family_members, is_nil(deleted_at) and ^person_scope)
        )
      ])
    end)
  end

  defp readable_with(nil, _branches), do: false
  defp readable_with(%Actor{system?: true}, _branches), do: true

  defp readable_with(%Actor{} = actor, branches) do
    case Scope.person(actor, :read) do
      false -> false
      true -> true
      person_scope -> branches.(person_scope)
    end
  end
end
