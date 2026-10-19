defmodule ChurchAdmin.Notifications.StudyYearRollAlert do
  @moduledoc """
  Tells maintainers that a study-year roll run was recorded `failed` or
  `missed` (args: `run_id`). Delivery over FCM to holders of
  `maintenanceNotifications` lands with the notifications unit; until then
  the job only completes.
  """

  use Oban.Worker, queue: :notifications, max_attempts: 5

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"run_id" => _run_id}}), do: :ok
end
