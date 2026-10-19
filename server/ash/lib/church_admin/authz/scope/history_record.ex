defmodule ChurchAdmin.Authz.Scope.HistoryRecord do
  @moduledoc """
  History rows (`table`, `record_id`) whose record the actor may read or
  edit, relative to a resource built with
  `ChurchAdmin.Authz.Fragments.HistoryRecord`. Only the tables
  the permission view names count; rows of any other table (e.g.
  `users_admin_on`) are visible to `read_all?` actors alone. A `users` row
  matches the view's per-user rows only, never its `any-user` row.
  """

  import Ash.Expr
  import ChurchAdmin.Authz.Scope.Combine

  alias ChurchAdmin.Authz.{Actor, Scope}

  @spec history_record(Actor.t() | nil, :read | :edit) :: Ash.Expr.t()
  def history_record(nil, _access), do: false
  def history_record(%Actor{system?: true}, _access), do: true

  def history_record(%Actor{} = actor, access) do
    if Scope.global?(actor, access) do
      true
    else
      any_of([
        record_in("persons", :record_person, Scope.person(actor, access)),
        record_in("families", :record_family, Scope.family(actor, access)),
        record_in("services", :record_service, Scope.service(actor, access)),
        record_in("classes", :record_class, Scope.class(actor, access)),
        record_in("groups", :record_group, Scope.group(actor, access)),
        record_in("areas", :record_area, Scope.area(actor, access)),
        record_in("streets", :record_street, Scope.street(actor, access)),
        record_in("stores", :record_store, Scope.store(actor, access)),
        unless_empty(
          Scope.listed_user_uids(actor, access),
          fn uids -> expr(table == "users" and record_id in ^uids) end
        )
      ])
    end
  end

  defp record_in(_table_name, _relationship, false), do: false

  defp record_in(table_name, relationship, scope) do
    expr(table == ^table_name and ^Ash.Query.Exists.new([relationship], scope))
  end
end
