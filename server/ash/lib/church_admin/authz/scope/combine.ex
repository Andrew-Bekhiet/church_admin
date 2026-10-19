defmodule ChurchAdmin.Authz.Scope.Combine do
  @moduledoc """
  Folds scope branches with the constants `true` / `false` resolved before any
  SQL is built: an always-true branch makes the whole disjunction `true`, an
  empty id list makes its branch `false`.
  """

  import Ash.Expr

  @spec any_of([Ash.Expr.t() | boolean()]) :: Ash.Expr.t() | boolean()
  def any_of(branches) do
    branches = Enum.reject(branches, &(&1 == false))

    cond do
      true in branches -> true
      branches == [] -> false
      true -> Enum.reduce(branches, fn branch, acc -> expr(^acc or ^branch) end)
    end
  end

  @spec all_of([Ash.Expr.t() | boolean()]) :: Ash.Expr.t() | boolean()
  def all_of(conditions) do
    conditions = Enum.reject(conditions, &(&1 == true))

    cond do
      false in conditions -> false
      conditions == [] -> true
      true -> Enum.reduce(conditions, fn condition, acc -> expr(^acc and ^condition) end)
    end
  end

  @doc """
  One branch for every service grant without a study year or gender (merged
  into a single `in` list) plus one branch per restricted grant.
  """
  @spec per_service_grant(
          [ChurchAdmin.Authz.Grant.t()],
          ([String.t()] -> Ash.Expr.t()),
          (ChurchAdmin.Authz.Grant.t() -> Ash.Expr.t())
        ) :: Ash.Expr.t() | boolean()
  def per_service_grant(grants, unrestricted_branch, restricted_branch) do
    {unrestricted, restricted} = Enum.split_with(grants, &ChurchAdmin.Authz.Grant.unrestricted?/1)

    any_of([
      unless_empty(ChurchAdmin.Authz.Grant.scope_ids(unrestricted), unrestricted_branch)
      | Enum.map(restricted, restricted_branch)
    ])
  end

  @spec unless_empty(list(), (list() -> Ash.Expr.t())) :: Ash.Expr.t() | false
  def unless_empty([], _branch), do: false
  def unless_empty(values, branch), do: branch.(values)

  @spec when_present(Ash.Expr.t() | boolean(), (Ash.Expr.t() -> Ash.Expr.t())) ::
          Ash.Expr.t() | boolean()
  def when_present(false, _wrap), do: false
  def when_present(condition, wrap), do: wrap.(condition)
end
