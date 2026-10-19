defmodule ChurchAdmin.Operations.StudyYearRollUnderTest do
  @moduledoc """
  The single seam the study-year roll tests call. It drives today's SQL
  (`operations.run_study_year_roll_when_due`, `run_study_year_roll`,
  `record_missed_study_year_roll`, `find_study_year_roll_blockers`) under the
  system database session; the Ash port re-points these functions and keeps
  their return shapes.

  `today` and `season` are always passed explicitly, so no test reads the
  Cairo clock.
  """

  alias ChurchAdmin.DataCase
  alias ChurchAdmin.Repo

  @type failure :: %{message: String.t(), detail: String.t() | nil}
  @type step_counts :: %{String.t() => non_neg_integer()}
  @type run_row :: %{
          status: :succeeded | :failed | :missed,
          error: String.t() | nil,
          step_counts: step_counts() | nil
        }

  @spec run_when_due(Date.t()) :: :ok
  def run_when_due(%Date{} = today) do
    DataCase.set_system_db_session()
    Repo.query!("call operations.run_study_year_roll_when_due($1)", [today])
    :ok
  end

  @spec record_missed(Date.t()) :: :ok
  def record_missed(%Date{} = today) do
    DataCase.set_system_db_session()
    Repo.query!("call operations.record_missed_study_year_roll($1)", [today])
    :ok
  end

  @spec run(integer()) ::
          {:ok, step_counts()} | {:ok, :skipped_already_rolled} | {:error, failure()}
  def run(season) when is_integer(season) do
    DataCase.set_system_db_session()

    {:ok, rows} =
      Repo.transaction(fn ->
        Repo.query!("select step, affected_rows from operations.run_study_year_roll($1)", [season]).rows
      end)

    case rows do
      [["skipped_already_rolled", 0]] -> {:ok, :skipped_already_rolled}
      rows -> {:ok, Map.new(rows, fn [step, count] -> {step, count} end)}
    end
  rescue
    error in Postgrex.Error ->
      {:error, %{message: error.postgres.message, detail: Map.get(error.postgres, :detail)}}
  end

  @spec blockers() :: [%{issue_code: String.t(), detail: String.t()}]
  def blockers do
    DataCase.set_system_db_session()

    {:ok, rows} =
      Repo.transaction(fn ->
        Repo.query!("select issue_code, detail from operations.find_study_year_roll_blockers()").rows
      end)

    Enum.map(rows, fn [issue_code, detail] -> %{issue_code: issue_code, detail: detail} end)
  end

  @spec runs(integer()) :: [run_row()]
  def runs(season) do
    Repo.query!(
      """
      select status, error, step_counts
      from operations.study_year_roll_runs
      where season_year = $1
      order by id
      """,
      [season]
    ).rows
    |> Enum.map(fn [status, error, step_counts] ->
      %{status: run_status(status), error: error, step_counts: step_counts}
    end)
  end

  defp run_status("succeeded"), do: :succeeded
  defp run_status("failed"), do: :failed
  defp run_status("missed"), do: :missed

  @doc """
  The author columns of every `history.edit_history` row the roll writes.
  Today's triggers read them from the system session's `hasura.user`.
  """
  @spec edit_history_author() :: %{user_role: String.t(), recorded_by: Ecto.UUID.t() | nil}
  def edit_history_author, do: %{user_role: "admin", recorded_by: nil}
end
