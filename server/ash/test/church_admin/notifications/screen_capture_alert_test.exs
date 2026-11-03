defmodule ChurchAdmin.Notifications.ScreenCaptureAlertTest do
  use ChurchAdmin.DataCase, async: false
  use Oban.Testing, repo: ChurchAdmin.Repo

  import ChurchAdmin.Factory

  alias ChurchAdmin.Accounts.DeviceToken
  alias ChurchAdmin.Authz.ActorLoader
  alias ChurchAdmin.Google.Messaging
  alias ChurchAdmin.Google.Messaging.{Local, Message}
  alias ChurchAdmin.Notifications.ScreenCaptureAlert
  alias ChurchAdmin.Operations
  alias ChurchAdmin.Operations.ScreenCaptureAttempt

  @permission "screenCaptureNotifications"
  @title "تنبيه أمان"
  @screenshot_body "قام %{name} بأخذ لقطة شاشة من التطبيق"
  @recording_body "قام %{name} بتسجيل أو عرض شاشة التطبيق"

  defp body(template, name), do: String.replace(template, "%{name}", name)

  defp recipient!(tokens) do
    user = user!()
    permissions!(user, [@permission])
    for token <- tokens, do: device_token!(user, token)
    user
  end

  defp device_token!(user, token),
    do: Ash.Seed.seed!(DeviceToken, %{uid: user.uid, token: token})

  defp attempt!(user, kind),
    do: Ash.Seed.seed!(ScreenCaptureAttempt, %{uid: user.uid, capture_kind: kind})

  defp tokens_in_db do
    DeviceToken
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.map(& &1.token)
    |> Enum.sort()
  end

  defp sent_messages(expected_count) do
    for _ <- 1..expected_count//1 do
      assert_receive {:fcm_message, %Message{} = message}
      message
    end
  end

  defp perform(attempt), do: perform_job(ScreenCaptureAlert, %{attempt_id: attempt.id})

  describe "recipients" do
    test "one message per token of the permission holders, with the screenshot text and data" do
      recipient!(["token-1", "token-2"])
      recipient!(["token-3"])
      bystander = user!()
      permissions!(bystander, ["approved", "readAllData"])
      device_token!(bystander, "bystander-token")
      capturer = user!(%{name: "مينا"})
      attempt = attempt!(capturer, :screenshot)

      assert :ok = perform(attempt)

      messages = 3 |> sent_messages() |> Enum.sort_by(& &1.token)
      assert Enum.map(messages, & &1.token) == ["token-1", "token-2", "token-3"]
      refute_receive {:fcm_message, _}

      for message <- messages do
        assert message.title == @title
        assert message.body == body(@screenshot_body, "مينا")

        assert message.data == %{
                 "senderUID" => capturer.uid,
                 "code" => "screenCaptureAttempt",
                 "captureKind" => "screenshot",
                 "recordedAt" => DateTime.to_iso8601(attempt.recorded_at)
               }
      end
    end

    test "a screen recording says the screen was recorded or shown" do
      recipient!(["token-1"])
      capturer = user!(%{name: "مينا"})
      attempt = attempt!(capturer, :screen_recording)

      assert :ok = perform(attempt)

      assert [%Message{} = message] = sent_messages(1)
      assert message.body == body(@recording_body, "مينا")
      assert message.data["captureKind"] == "screen_recording"
    end

    test "a token held by two holders is sent once" do
      recipient!(["shared"])
      recipient!(["shared"])

      assert :ok = perform(attempt!(user!(), :screenshot))

      assert [%Message{token: "shared"}] = sent_messages(1)
      refute_receive {:fcm_message, _}
    end

    test "nobody holds the permission, so nothing is sent and the job succeeds" do
      bystander = user!()
      permissions!(bystander, ["approved"])
      device_token!(bystander, "bystander-token")

      assert :ok = perform(attempt!(user!(), :screenshot))

      refute_receive {:fcm_message, _}
    end
  end

  describe "the user's name" do
    test "falls back to an unknown user when the user row is gone" do
      recipient!(["token-1"])
      capturer = user!()
      attempt = attempt!(capturer, :screenshot)
      delete_user_row_keeping_attempt!(capturer)

      assert :ok = perform(attempt)

      assert [%Message{} = message] = sent_messages(1)
      assert message.body == body(@screenshot_body, "مستخدم غير معروف")
    end

    defp delete_user_row_keeping_attempt!(user) do
      ChurchAdmin.Repo.query!("set local session_replication_role = replica")

      ChurchAdmin.Repo.query!("delete from auth.users_data where uid = $1::text::uuid", [
        user.uid
      ])

      ChurchAdmin.Repo.query!("set local session_replication_role = origin")
    end
  end

  describe "an attempt that no longer exists" do
    test "is cancelled" do
      assert {:cancel, _reason} = perform_job(ScreenCaptureAlert, %{attempt_id: -1})
    end
  end

  describe "unregistered tokens" do
    test "are deleted for every user and the others still receive the alert" do
      stale = Local.unregistered_token("stale")
      recipient!([stale, "fresh"])
      device_token!(user!(), stale)

      assert :ok = perform(attempt!(user!(), :screenshot))

      assert 2 |> sent_messages() |> Enum.map(& &1.token) |> Enum.sort() ==
               Enum.sort([stale, "fresh"])

      assert tokens_in_db() == ["fresh"]
    end
  end

  describe "delivery failures" do
    setup do
      messaging = Application.fetch_env!(:church_admin, ChurchAdmin.Google.Config)[:messaging]

      http = [
        adapter: Messaging.Http,
        base_url: "http://fcm.test",
        req_options: [plug: {Req.Test, Messaging}, retry: false]
      ]

      put_messaging!(http)
      on_exit(fn -> put_messaging!(messaging) end)
    end

    defp put_messaging!(messaging) do
      config = Application.fetch_env!(:church_admin, ChurchAdmin.Google.Config)

      Application.put_env(
        :church_admin,
        ChurchAdmin.Google.Config,
        Keyword.put(config, :messaging, messaging)
      )
    end

    test "a partial failure is logged and does not retry the job, while the unregistered token goes" do
      recipient!(["stale", "broken", "fine"])
      attempt = attempt!(user!(), :screenshot)
      parent = self()

      Req.Test.stub(Messaging, fn conn ->
        token = conn.body_params["message"]["token"]
        send(parent, {:attempted, token})

        case token do
          "stale" ->
            conn
            |> Plug.Conn.put_status(404)
            |> Req.Test.json(%{
              "error" => %{
                "code" => 404,
                "status" => "NOT_FOUND",
                "details" => [%{"errorCode" => "UNREGISTERED"}]
              }
            })

          "broken" ->
            conn |> Plug.Conn.put_status(500) |> Req.Test.json(%{"error" => %{"code" => 500}})

          "fine" ->
            Req.Test.json(conn, %{"name" => "projects/test/messages/1"})
        end
      end)

      log = ExUnit.CaptureLog.capture_log(fn -> assert :ok = perform(attempt) end)

      assert log =~ "Failed to deliver some screen capture notifications"
      assert log =~ "broken"
      for token <- ["stale", "broken", "fine"], do: assert_received({:attempted, ^token})
      assert tokens_in_db() == ["broken", "fine"]
    end
  end

  describe "enqueueing" do
    test "recording an attempt enqueues one alert for it" do
      actor = ActorLoader.load(user!().uid)

      {:ok, recorded} = Operations.record_screen_capture_attempt(:screenshot, actor: actor)

      assert_enqueued(worker: ScreenCaptureAlert, args: %{attempt_id: recorded.id})
      assert [_one] = all_enqueued(worker: ScreenCaptureAlert)
    end
  end
end
