defmodule ChurchAdmin.Operations.Changes.EnqueueStudyYearRollAlert do
  @moduledoc """
  Enqueues `ChurchAdmin.Notifications.StudyYearRollAlert` for the run a
  create writes, in the same transaction, so the alert exists exactly when
  the run does. Only creates enqueue: replacing a season's failed error does
  not, which keeps the alert to one per season.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Notifications.StudyYearRollAlert

  @impl true
  def change(changeset, _opts, _context) do
    Ash.Changeset.after_action(changeset, fn _changeset, run ->
      case Oban.insert(StudyYearRollAlert.new(%{run_id: run.id})) do
        {:ok, _job} -> {:ok, run}
        {:error, error} -> {:error, error}
      end
    end)
  end
end
