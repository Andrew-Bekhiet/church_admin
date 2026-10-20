defmodule ChurchAdmin.Organization.ClassCoverage do
  @moduledoc """
  The one rule for which classes a service grant or a meeting covers, both
  placed by a service, a study year and a gender: the same service; no study
  year covers every year, otherwise the year must fall inside the class's
  `from..to` years; no gender covers every gender, as does a class without
  one, otherwise the genders are equal.

  `covers_class/2` takes the placement's and the class's columns as
  expressions, so the class scope (grant values from the actor),
  `ScopeGrant.classes`, `Class.admins` and `Class.meetings` (a column of the
  other row, reached through `parent/1`) share it. `scope_grant_row/0`,
  `meeting_row/0` and `class_row/0` name those columns on their own rows and
  `through_parent/1` lifts them across a relationship filter.
  """

  require Ash.Expr

  @type columns :: %{atom() => Ash.Expr.t()}

  @spec scope_grant_row() :: columns()
  def scope_grant_row do
    %{
      service: Ash.Expr.expr(admin_on_service),
      study_year: Ash.Expr.expr(service_study_year),
      gender: Ash.Expr.expr(service_gender)
    }
  end

  @spec meeting_row() :: columns()
  def meeting_row do
    %{
      service: Ash.Expr.expr(service_id),
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
  def covers_class(placement, class) do
    year_covered = fn ->
      Ash.Expr.expr(^class.from <= ^placement.study_year and ^class.to >= ^placement.study_year)
    end

    gender_covered = fn ->
      Ash.Expr.expr(is_nil(^class.gender) or ^class.gender == ^placement.gender)
    end

    Ash.Expr.expr(
      ^class.service == ^placement.service and
        ^unless_unset(placement.study_year, year_covered) and
        ^unless_unset(placement.gender, gender_covered)
    )
  end

  defp unless_unset(nil, _covered), do: true
  defp unless_unset(value, covered) when is_integer(value) or is_boolean(value), do: covered.()
  defp unless_unset(column, covered), do: Ash.Expr.expr(is_nil(^column) or ^covered.())
end
