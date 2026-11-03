defmodule ChurchAdmin.Operations.Changes.EnqueueScreenCaptureAlert do
  @moduledoc """
  Enqueues `ChurchAdmin.Notifications.ScreenCaptureAlert` for the attempt a
  create writes, in the same transaction, so the alert exists exactly when
  the attempt does.
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Notifications.ScreenCaptureAlert

  @impl Ash.Resource.Change
  def change(changeset, _opts, _context) do
    Ash.Changeset.after_action(changeset, fn _changeset, attempt ->
      case Oban.insert(ScreenCaptureAlert.new(%{attempt_id: attempt.id})) do
        {:ok, _job} -> {:ok, attempt}
        {:error, error} -> {:error, error}
      end
    end)
  end
end
