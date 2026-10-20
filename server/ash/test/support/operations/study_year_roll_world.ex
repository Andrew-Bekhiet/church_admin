defmodule ChurchAdmin.Operations.StudyYearRollWorld do
  @moduledoc """
  Fixtures and raw-SQL readers for the study-year roll tests. Readers bypass
  Ash so soft-deleted rows read the same as live ones.
  """

  import ChurchAdmin.Factory

  alias ChurchAdmin.Repo

  @doc """
  Removes the run the migrations record for the roll the previous system
  already did, so a test can roll season 2026 itself.
  """
  def forget_previous_system_roll(_context) do
    Repo.query!(
      "delete from operations.study_year_roll_runs where season_year = 2026 and status = 'succeeded'"
    )

    :ok
  end

  def nayrouz(season), do: Date.new!(season, 9, 11)

  def study_years!(orders \\ 1..6), do: Enum.each(orders, &study_year!/1)

  def graded_service!(first_year, last_year, attrs \\ []) do
    service!(
      Map.merge(
        %{study_year_from_id: first_year, study_year_to_id: last_year},
        Map.new(attrs)
      )
    )
  end

  def pupil!(service, study_year, attrs \\ []) do
    person = person!(Map.merge(%{study_year_id: study_year}, Map.new(attrs)))
    in_service!(person, service)
    person
  end

  def route!(service, next_service) do
    Repo.query!("update public.services set next_service_id = $2 where id = $1", [
      dump(service.id),
      next_service && dump(next_service.id)
    ])

    :ok
  end

  def study_year_of(person),
    do: one!("select study_year_id from public.persons where id = $1", [person.id])

  def work_status_of(person),
    do: one!("select work_status from public.persons where id = $1", [person.id])

  def services_of(person) do
    ids!(
      "select service_id from public.persons_services where person_id = $1 order by service_id",
      [person.id]
    )
  end

  def groups_of(person) do
    ids!(
      "select group_id from public.persons_groups where person_id = $1 order by group_id",
      [person.id]
    )
  end

  def class_placement(class) do
    %{rows: [[service_id, first_year, last_year, deleted_at]]} =
      Repo.query!(
        """
        select service_id, service_study_year, service_study_year_to, deleted_at
        from public.classes where id = $1
        """,
        [dump(class.id)]
      )

    %{
      service_id: Ecto.UUID.load!(service_id),
      years: first_year..last_year//1,
      deleted?: not is_nil(deleted_at)
    }
  end

  def scope_study_year(grant) do
    one!("select service_study_year from auth.users_admin_on where permission_id = $1", [
      grant.permission_id
    ])
  end

  @doc """
  Runs `fun` and returns its result with the `history.edit_history` rows
  written meanwhile, as `{table, record_id, user_role, recorded_by}` tuples.
  """
  def with_edit_history_written(fun) do
    before = MapSet.new(ids!("select audit_id from history.edit_history", []))
    result = fun.()

    %{rows: rows} =
      Repo.query!(
        "select audit_id, \"table\", record_id, user_role, recorded_by from history.edit_history"
      )

    written =
      for [audit_id, table, record_id, user_role, recorded_by] <- rows,
          not MapSet.member?(before, Ecto.UUID.load!(audit_id)) do
        %{
          table: table,
          record_id: Ecto.UUID.load!(record_id),
          user_role: user_role,
          recorded_by: recorded_by && Ecto.UUID.load!(recorded_by)
        }
      end

    {result, written}
  end

  defp one!(sql, params) do
    %{rows: [[value]]} = Repo.query!(sql, Enum.map(params, &dump/1))
    value
  end

  defp ids!(sql, params) do
    Repo.query!(sql, Enum.map(params, &dump/1)).rows
    |> Enum.map(fn [id] -> Ecto.UUID.load!(id) end)
  end

  defp dump(id), do: Ecto.UUID.dump!(id)
end
