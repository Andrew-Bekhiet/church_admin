defmodule ChurchAdminWeb.Graphql.RecordScreenCaptureAttemptTest do
  use ChurchAdminWeb.ConnCase, async: false

  alias ChurchAdmin.{Factory, FirebaseTokens}
  alias ChurchAdmin.Operations.ScreenCaptureAttempt

  @document """
  mutation($input: RecordScreenCaptureAttemptInput!) {
    recordScreenCaptureAttempt(input: $input) { result { id captureKind recordedAt } errors { code } }
  }
  """

  defp run(conn, user, variables) do
    conn =
      if user do
        claims = user |> Factory.firebase_account!() |> FirebaseTokens.valid_claims()
        put_req_header(conn, "authorization", "Bearer " <> FirebaseTokens.unsigned(claims))
      else
        conn
      end

    conn |> post("/gql", %{"query" => @document, "variables" => variables}) |> json_response(200)
  end

  defp stored, do: Ash.read!(ScreenCaptureAttempt, authorize?: false, page: false)

  test "a signed-in user records a screenshot with the upper-case enum value", %{conn: conn} do
    user = Factory.user!()

    assert %{"data" => %{"recordScreenCaptureAttempt" => %{"result" => result}}} =
             run(conn, user, %{"input" => %{"captureKind" => "SCREENSHOT"}})

    assert %{"captureKind" => "SCREENSHOT", "recordedAt" => recorded_at} = result
    assert {:ok, _, _} = DateTime.from_iso8601(recorded_at)
    assert [%{uid: uid, capture_kind: :screenshot}] = stored()
    assert uid == user.uid
  end

  test "a screen recording is recorded as such", %{conn: conn} do
    assert %{"data" => %{"recordScreenCaptureAttempt" => %{"result" => result}}} =
             run(conn, Factory.user!(), %{"input" => %{"captureKind" => "SCREEN_RECORDING"}})

    assert result["captureKind"] == "SCREEN_RECORDING"
    assert [%{capture_kind: :screen_recording}] = stored()
  end

  test "the input names no uid", %{conn: conn} do
    other = Factory.user!()

    assert %{"errors" => [%{"message" => message} | _]} =
             run(conn, Factory.user!(), %{
               "input" => %{"captureKind" => "SCREENSHOT", "uid" => other.uid}
             })

    assert message =~ "uid"
    assert stored() == []
  end

  test "an anonymous call is refused", %{conn: conn} do
    assert %{"errors" => [%{"extensions" => %{"code" => "forbidden"}}]} =
             run(conn, nil, %{"input" => %{"captureKind" => "SCREENSHOT"}})

    assert stored() == []
  end
end
