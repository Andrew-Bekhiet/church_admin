defmodule ChurchAdmin.Notifications.StudyYearRollAlertTest do
  use ChurchAdmin.DataCase, async: false
  use Oban.Testing, repo: ChurchAdmin.Repo

  import ChurchAdmin.Factory
  import ChurchAdmin.Operations.StudyYearRollWorld, only: [forget_previous_system_roll: 1]

  alias ChurchAdmin.Accounts.DeviceToken
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Google.Messaging
  alias ChurchAdmin.Google.Messaging.{Local, Message}
  alias ChurchAdmin.Notifications.StudyYearRollAlert
  alias ChurchAdmin.Operations.StudyYearRollRun

  setup :forget_previous_system_roll

  @maintenance "maintenanceNotifications"
  @title "تنبيه صيانة"
  @failed_body "فشلت عملية ترحيل السنة الدراسية، يرجى المراجعة"
  @missed_body "لم يتم تنفيذ عملية ترحيل السنة الدراسية في موعدها، يرجى المراجعة"

  defp run!(status, season \\ 2026) do
    action = if status == "failed", do: :create_failed_run, else: :create_missed_run

    StudyYearRollRun
    |> Ash.Changeset.for_create(action, %{season_year: season, error: "boom"},
      actor: Actor.system()
    )
    |> Ash.create!()
  end

  defp succeeded_run!(season \\ 2026) do
    StudyYearRollRun
    |> Ash.Changeset.for_create(:create_succeeded_run, %{season_year: season, step_counts: %{}},
      actor: Actor.system()
    )
    |> Ash.create!()
  end

  defp maintainer!(tokens) do
    user = user!()
    permissions!(user, [@maintenance])
    for token <- tokens, do: device_token!(user, token)
    user
  end

  defp device_token!(user, token) do
    Ash.Seed.seed!(DeviceToken, %{uid: user.uid, token: token})
  end

  defp tokens_in_db do
    DeviceToken
    |> Ash.read!(authorize?: false, page: false)
    |> Enum.map(& &1.token)
    |> Enum.sort()
  end

  defp notified_at(run), do: Ash.get!(StudyYearRollRun, run.id, authorize?: false).notified_at

  defp sent_messages(expected_count) do
    for _ <- 1..expected_count//1 do
      assert_receive {:fcm_message, %Message{} = message}
      message
    end
  end

  defp perform(run), do: perform_job(StudyYearRollAlert, %{run_id: run.id})

  describe "a failed run" do
    test "sends one message per token of the maintenance holders, with today's text" do
      maintainer!(["token-1", "token-2"])
      maintainer!(["token-3"])
      run = run!("failed", 2031)

      assert :ok = perform(run)

      messages = Enum.sort_by(sent_messages(3), & &1.token)
      assert Enum.map(messages, & &1.token) == ["token-1", "token-2", "token-3"]
      refute_receive {:fcm_message, _}

      for message <- messages do
        assert message.title == @title
        assert message.body == @failed_body

        assert message.data == %{
                 "senderUID" => "LOCAL_NOTIFICATION_SENDER_UID",
                 "code" => "studyYearRollFailed",
                 "seasonYear" => "2031",
                 "status" => "failed"
               }
      end
    end

    test "skips users without the permission" do
      maintainer!(["maintainer-token"])
      bystander = user!()
      permissions!(bystander, ["approved", "readAllData"])
      device_token!(bystander, "bystander-token")

      assert :ok = perform(run!("failed"))

      assert [%Message{token: "maintainer-token"}] = sent_messages(1)
      refute_receive {:fcm_message, _}
    end

    test "sends a token held by two users once" do
      maintainer!(["shared"])
      maintainer!(["shared"])

      assert :ok = perform(run!("failed"))

      assert [%Message{token: "shared"}] = sent_messages(1)
      refute_receive {:fcm_message, _}
    end

    test "marks the run notified" do
      maintainer!(["token-1"])
      run = run!("failed")
      assert notified_at(run) == nil

      assert :ok = perform(run)

      assert %DateTime{} = notified_at(run)
    end

    test "does not send again for a run that was notified" do
      maintainer!(["token-1"])
      run = run!("failed")

      assert :ok = perform(run)
      assert :ok = perform(run)

      assert [_] = sent_messages(1)
      refute_receive {:fcm_message, _}
    end
  end

  describe "a missed run" do
    test "says the roll did not run on time" do
      maintainer!(["token-1"])

      assert :ok = perform(run!("missed", 2027))

      assert [%Message{} = message] = sent_messages(1)
      assert message.title == @title
      assert message.body == @missed_body

      assert message.data == %{
               "senderUID" => "LOCAL_NOTIFICATION_SENDER_UID",
               "code" => "studyYearRollMissed",
               "seasonYear" => "2027",
               "status" => "missed"
             }
    end
  end

  describe "other runs and recipients" do
    test "a succeeded run notifies nobody and stays unmarked" do
      maintainer!(["token-1"])
      run = succeeded_run!()

      assert :ok = perform(run)

      refute_receive {:fcm_message, _}
      assert notified_at(run) == nil
    end

    test "no recipients still completes the run's alert" do
      run = run!("failed")

      assert :ok = perform(run)

      refute_receive {:fcm_message, _}
      assert %DateTime{} = notified_at(run)
    end

    test "a run that no longer exists is cancelled" do
      assert {:cancel, _reason} = perform_job(StudyYearRollAlert, %{run_id: -1})
    end
  end

  describe "unregistered tokens" do
    test "are deleted for every user and the others still receive the alert" do
      stale = Local.unregistered_token("stale")
      maintainer!([stale, "fresh"])
      bystander = user!()
      device_token!(bystander, stale)
      run = run!("failed")

      assert :ok = perform(run)

      assert Enum.sort(Enum.map(sent_messages(2), & &1.token)) == Enum.sort([stale, "fresh"])
      assert tokens_in_db() == ["fresh"]
      assert %DateTime{} = notified_at(run)
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

    test "fail the job so Oban retries it, keeping the run unnotified" do
      maintainer!(["token-1"])
      run = run!("failed")

      Req.Test.stub(Messaging, fn conn ->
        conn
        |> Plug.Conn.put_status(500)
        |> Req.Test.json(%{"error" => %{"code" => 500, "message" => "INTERNAL"}})
      end)

      assert {:error, _reason} = perform(run)
      assert notified_at(run) == nil
    end

    test "still prune the unregistered tokens of the same pass" do
      maintainer!(["stale", "broken"])
      run = run!("failed")

      Req.Test.stub(Messaging, fn conn ->
        case conn.body_params["message"]["token"] do
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
        end
      end)

      assert {:error, _reason} = perform(run)
      assert tokens_in_db() == ["broken"]
    end
  end
end
