defmodule ChurchAdmin.Operations.StudyYearRollUnderTest do
  @moduledoc """
  The single seam the study-year roll tests call. It drives the generic
  actions of `ChurchAdmin.Operations.StudyYearRollRun` as the system actor
  and keeps the return shapes the tests were written against on the SQL
  roll.

  `today` and `season` are always passed explicitly, so no test reads the
  Cairo clock.
  """

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Operations.StudyYearRoll
  alias ChurchAdmin.Operations.StudyYearRollRun
  require Ash.Query

  @type failure :: %{message: String.t(), detail: String.t() | nil}
  @type step_counts :: %{String.t() => non_neg_integer()}
  @type run_row :: %{
          status: :succeeded | :failed | :missed,
          error: String.t() | nil,
          step_counts: step_counts() | nil
        }

  @spec run_when_due(Date.t()) :: :ok
  def run_when_due(%Date{} = today), do: run_action!(:run_when_due, %{today: today})

  @spec record_missed(Date.t()) :: :ok
  def record_missed(%Date{} = today), do: run_action!(:record_missed, %{today: today})

  @spec run(integer()) ::
          {:ok, step_counts()} | {:ok, :skipped_already_rolled} | {:error, failure()}
  def run(season) when is_integer(season) do
    case run_action(:run, %{season: season}) do
      {:ok, result} ->
        {:ok, result}

      {:error, error} ->
        %{message: message, detail: detail} = StudyYearRoll.failure_in(error)
        {:error, %{message: message, detail: detail}}
    end
  end

  @spec blockers() :: [%{issue_code: String.t(), detail: String.t()}]
  def blockers do
    {:ok, blockers} = run_action(:blockers, %{})
    blockers
  end

  defp run_action!(action, arguments) do
    :ok = run_action(action, arguments)
  end

  defp run_action(action, arguments) do
    StudyYearRollRun
    |> Ash.ActionInput.for_action(action, arguments, actor: Actor.system())
    |> Ash.run_action()
  end

  @spec runs(integer()) :: [run_row()]
  def runs(season) do
    StudyYearRollRun
    |> Ash.Query.filter(season_year == ^season)
    |> Ash.Query.sort(id: :asc)
    |> Ash.read!(actor: Actor.system())
    |> Enum.map(fn run ->
      %{status: run_status(run.status), error: run.error, step_counts: run.step_counts}
    end)
  end

  defp run_status("succeeded"), do: :succeeded
  defp run_status("failed"), do: :failed
  defp run_status("missed"), do: :missed

  @doc """
  The author columns of every `history.edit_history` row the roll writes:
  the system actor's.
  """
  @spec edit_history_author() :: %{user_role: String.t(), recorded_by: Ecto.UUID.t() | nil}
  def edit_history_author, do: %{user_role: "admin", recorded_by: nil}
end
