defmodule ChurchAdmin.Notifications.StudyYearRollAlert do
  @moduledoc """
  Tells the holders of `maintenanceNotifications` over FCM that a study-year
  roll run was recorded `failed` or `missed` (args: `run_id`), with the text
  and data the Firebase function `notifyStudyYearRollFailure` sent. Tokens FCM
  reports unregistered are deleted. A delivery failure fails the job, so Oban
  retries it with its default backoff; the run is marked notified only after
  every token has been tried without one.
  """

  use Oban.Worker, queue: :notifications, max_attempts: 5

  require Logger

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Google.Messaging.Message
  alias ChurchAdmin.Notifications.PermissionHolderAlert
  alias ChurchAdmin.Operations.StudyYearRollRun

  @maintenance_permission "maintenanceNotifications"
  @non_user_sender_uid "LOCAL_NOTIFICATION_SENDER_UID"
  @title "تنبيه صيانة"
  @failed_body "فشلت عملية ترحيل السنة الدراسية، يرجى المراجعة"
  @missed_body "لم يتم تنفيذ عملية ترحيل السنة الدراسية في موعدها، يرجى المراجعة"

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"run_id" => run_id}}) do
    case Ash.get(StudyYearRollRun, run_id, actor: Actor.system(), error?: false) do
      {:ok, nil} -> {:cancel, "study year roll run #{run_id} no longer exists"}
      {:ok, run} -> alert_once(run)
      {:error, error} -> {:error, error}
    end
  end

  defp alert_once(%StudyYearRollRun{status: status, notified_at: nil} = run)
       when status in ["failed", "missed"] do
    tokens = PermissionHolderAlert.tokens_of_holders(@maintenance_permission)

    if tokens == [] do
      Logger.error("No maintenanceNotifications recipients for study year roll run #{run.id}")
    end

    case PermissionHolderAlert.deliver_each(tokens, &alert_message(run, &1)) do
      [] ->
        mark_notified(run)

      failures ->
        {:error, "FCM delivery failed for #{length(failures)} token(s): #{inspect(failures)}"}
    end
  end

  defp alert_once(_run), do: :ok

  defp alert_message(%StudyYearRollRun{} = run, token) do
    %Message{
      token: token,
      title: @title,
      body: body(run.status),
      data: %{
        "senderUID" => @non_user_sender_uid,
        "code" => code(run.status),
        "seasonYear" => Integer.to_string(run.season_year),
        "status" => run.status
      }
    }
  end

  defp body("failed"), do: @failed_body
  defp body("missed"), do: @missed_body

  defp code("failed"), do: "studyYearRollFailed"
  defp code("missed"), do: "studyYearRollMissed"

  defp mark_notified(run) do
    Ash.update!(run, %{}, action: :mark_notified, actor: Actor.system())
    :ok
  end
end
