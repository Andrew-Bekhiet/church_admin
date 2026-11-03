defmodule ChurchAdmin.Notifications.ScreenCaptureAlert do
  @moduledoc """
  Tells the holders of `screenCaptureNotifications` over FCM that a user took
  a screenshot or recorded the screen (args: `attempt_id`), with the text and
  data the Firebase function `notifyScreenCaptureAttempt` sent. Tokens FCM
  reports unregistered are deleted. A per-token delivery failure is logged and
  the job still succeeds: a retry would send the alert again to everyone who
  already got it. Only a failure reading the attempt or its tokens fails the
  job.
  """

  use Oban.Worker, queue: :notifications, max_attempts: 4

  require Logger

  alias ChurchAdmin.Accounts.User
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Google.Messaging.Message
  alias ChurchAdmin.Notifications.PermissionHolderAlert
  alias ChurchAdmin.Operations.ScreenCaptureAttempt

  @permission "screenCaptureNotifications"
  @title "تنبيه أمان"
  @unknown_user_name "مستخدم غير معروف"

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"attempt_id" => attempt_id}}) do
    case Ash.get(ScreenCaptureAttempt, attempt_id, actor: Actor.system(), error?: false) do
      {:ok, nil} -> {:cancel, "screen capture attempt #{attempt_id} no longer exists"}
      {:ok, attempt} -> alert(attempt)
      {:error, error} -> {:error, error}
    end
  end

  defp alert(%ScreenCaptureAttempt{} = attempt) do
    case PermissionHolderAlert.tokens_of_holders(@permission) do
      [] ->
        :ok

      tokens ->
        user_name = user_name(attempt.uid)

        tokens
        |> PermissionHolderAlert.deliver_each(&alert_message(attempt, user_name, &1))
        |> log_delivery_failures(attempt)
    end
  end

  defp user_name(uid) do
    case Ash.get!(User, uid, actor: Actor.system(), error?: false) do
      nil -> @unknown_user_name
      %User{name: name} -> name
    end
  end

  defp alert_message(%ScreenCaptureAttempt{} = attempt, user_name, token) do
    %Message{
      token: token,
      title: @title,
      body: body(attempt.capture_kind, user_name),
      data: %{
        "senderUID" => attempt.uid,
        "code" => "screenCaptureAttempt",
        "captureKind" => Atom.to_string(attempt.capture_kind),
        "recordedAt" => DateTime.to_iso8601(attempt.recorded_at)
      }
    }
  end

  defp body(:screenshot, user_name), do: "قام #{user_name} بأخذ لقطة شاشة من التطبيق"
  defp body(:screen_recording, user_name), do: "قام #{user_name} بتسجيل أو عرض شاشة التطبيق"

  defp log_delivery_failures([], _attempt), do: :ok

  defp log_delivery_failures(failures, attempt) do
    Logger.error(
      "Failed to deliver some screen capture notifications for attempt #{attempt.id}: #{inspect(failures)}"
    )

    :ok
  end
end
