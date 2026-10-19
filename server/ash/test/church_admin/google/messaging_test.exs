defmodule ChurchAdmin.Google.MessagingTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Google.Error
  alias ChurchAdmin.Google.Messaging
  alias ChurchAdmin.Google.Messaging.Message

  @message %Message{
    token: "device-token",
    title: "تنبيه صيانة",
    body: "فشلت عملية ترحيل السنة الدراسية، يرجى المراجعة",
    data: %{"code" => "studyYearRollFailed", "seasonYear" => "2026"}
  }

  describe "Messaging.Http.send_message/1" do
    defp stub(fun), do: Req.Test.stub(Messaging, fun)

    defp fcm_error(conn, status, google_status, error_code) do
      conn
      |> Plug.Conn.put_status(status)
      |> Req.Test.json(%{
        "error" => %{
          "code" => status,
          "message" => "failed",
          "status" => google_status,
          "details" => [
            %{
              "@type" => "type.googleapis.com/google.firebase.fcm.v1.FcmError",
              "errorCode" => error_code
            }
          ]
        }
      })
    end

    test "posts the message to messages:send and returns its name" do
      stub(fn conn ->
        assert conn.method == "POST"
        assert conn.request_path == "/v1/projects/church-admin-test/messages:send"
        assert Plug.Conn.get_req_header(conn, "authorization") == ["Bearer owner"]

        assert conn.body_params == %{
                 "message" => %{
                   "token" => "device-token",
                   "notification" => %{"title" => @message.title, "body" => @message.body},
                   "data" => %{"code" => "studyYearRollFailed", "seasonYear" => "2026"}
                 }
               }

        Req.Test.json(conn, %{"name" => "projects/church-admin-test/messages/0:1"})
      end)

      assert Messaging.Http.send_message(@message) ==
               {:ok, "projects/church-admin-test/messages/0:1"}
    end

    test "reports an UNREGISTERED token so the caller can prune it" do
      stub(&fcm_error(&1, 404, "NOT_FOUND", "UNREGISTERED"))

      assert Messaging.Http.send_message(@message) == {:error, :unregistered}
    end

    test "reports a bare 404 as an unregistered token" do
      stub(&Plug.Conn.send_resp(&1, 404, ""))

      assert Messaging.Http.send_message(@message) == {:error, :unregistered}
    end

    test "maps other failures to a typed error without raising" do
      stub(&fcm_error(&1, 400, "INVALID_ARGUMENT", "INVALID_ARGUMENT"))

      assert {:error, %Error{api: :messaging, reason: :invalid_request, code: "INVALID_ARGUMENT"}} =
               Messaging.Http.send_message(@message)
    end

    test "maps quota exhaustion to rate limited" do
      stub(&fcm_error(&1, 429, "RESOURCE_EXHAUSTED", "QUOTA_EXCEEDED"))

      assert {:error, %Error{reason: :rate_limited, status: 429}} =
               Messaging.Http.send_message(@message)
    end
  end

  describe "Messaging.send_message/1 in test" do
    test "delivers the message to the calling test process instead of FCM" do
      assert {:ok, _name} = Messaging.send_message(@message)

      assert_received {:fcm_message, @message}
    end

    test "delivers to the test process from a process the test started" do
      task = Task.async(fn -> Messaging.send_message(@message) end)

      assert {:ok, _name} = Task.await(task)
      assert_received {:fcm_message, @message}
    end

    test "reports a token built as unregistered as unregistered" do
      message = %{@message | token: Messaging.Local.unregistered_token("stale")}

      assert Messaging.send_message(message) == {:error, :unregistered}
      assert_received {:fcm_message, ^message}
    end
  end
end
