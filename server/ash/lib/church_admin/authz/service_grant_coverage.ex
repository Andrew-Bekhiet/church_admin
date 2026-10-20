defmodule ChurchAdmin.Authz.ServiceGrantCoverage do
  @moduledoc """
  The one rule for which classes a service grant covers: the same service; a
  grant without a study year covers every year, otherwise the year must fall
  inside the class's `from..to` years; a grant without a gender covers every
  gender, as does a class without one, otherwise the genders are equal.

  `covers_class/2` takes the grant's and the class's columns as expressions,
  so the class scope (grant values from the actor), `ScopeGrant.classes` and
  `Class.admins` (a column of the other row, reached through `parent/1`) share
  it. `grant_row/0` and `class_row/0` name those columns on their own rows and
  `through_parent/1` lifts them across a relationship filter.
  """

  require Ash.Expr

  @type columns :: %{atom() => Ash.Expr.t()}

  @spec grant_row() :: columns()
  def grant_row do
    %{
      service: Ash.Expr.expr(admin_on_service),
      study_year: Ash.Expr.expr(service_study_year),
      gender: Ash.Expr.expr(service_gender)
    }
  end

  @spec class_row() :: columns()
  def class_row do
    %{
      service: Ash.Expr.expr(service_id),
      from: Ash.Expr.expr(service_study_year),
      to: Ash.Expr.expr(service_study_year_to),
      gender: Ash.Expr.expr(service_gender)
    }
  end

  @spec through_parent(columns()) :: columns()
  def through_parent(columns),
    do: Map.new(columns, fn {key, column} -> {key, Ash.Expr.expr(parent(^column))} end)

  @spec covers_class(columns(), columns()) :: Ash.Expr.t()
  def covers_class(grant, class) do
    year_covered = fn ->
      Ash.Expr.expr(^class.from <= ^grant.study_year and ^class.to >= ^grant.study_year)
    end

    gender_covered = fn ->
      Ash.Expr.expr(is_nil(^class.gender) or ^class.gender == ^grant.gender)
    end

    Ash.Expr.expr(
      ^class.service == ^grant.service and
        ^unless_unset(grant.study_year, year_covered) and
        ^unless_unset(grant.gender, gender_covered)
    )
  end

  defp unless_unset(nil, _covered), do: true
  defp unless_unset(value, covered) when is_integer(value) or is_boolean(value), do: covered.()
  defp unless_unset(column, covered), do: Ash.Expr.expr(is_nil(^column) or ^covered.())
end
