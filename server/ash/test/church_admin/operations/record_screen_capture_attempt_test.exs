defmodule ChurchAdmin.Operations.RecordScreenCaptureAttemptTest do
  use ChurchAdmin.AccountsCase, async: false

  alias ChurchAdmin.Operations
  alias ChurchAdmin.Operations.ScreenCaptureAttempt

  defp stored do
    ScreenCaptureAttempt |> Ash.read!(authorize?: false, page: false) |> Enum.sort_by(& &1.id)
  end

  defp stored_capture_kinds do
    %{rows: rows} =
      ChurchAdmin.Repo.query!("select capture_kind from operations.screen_capture_attempts")

    Enum.map(rows, &hd/1)
  end

  test "an approved user records an attempt carrying their uid" do
    user = user_with!(["approved"])

    assert {:ok, %ScreenCaptureAttempt{capture_kind: :screenshot, recorded_at: %DateTime{}}} =
             Operations.record_screen_capture_attempt(:screenshot, actor: actor_for(user))

    assert [%{uid: uid, capture_kind: :screenshot}] = stored()
    assert uid == user.uid
  end

  test "an unapproved user may record one" do
    unapproved = Factory.user!()

    assert {:ok, _attempt} =
             Operations.record_screen_capture_attempt(:screen_recording,
               actor: actor_for(unapproved)
             )

    assert [%{uid: uid}] = stored()
    assert uid == unapproved.uid
  end

  test "both kinds are stored as their lower-case value" do
    actor = actor_for(user_with!(["approved"]))

    {:ok, _} = Operations.record_screen_capture_attempt(:screenshot, actor: actor)
    {:ok, _} = Operations.record_screen_capture_attempt(:screen_recording, actor: actor)

    assert Enum.sort(stored_capture_kinds()) == ["screen_recording", "screenshot"]
  end

  test "a kind outside the two is invalid" do
    actor = actor_for(user_with!(["approved"]))

    assert {:error, error} = Operations.record_screen_capture_attempt(:nothing, actor: actor)
    assert codes(error) == ["invalid_attribute"]
    assert stored() == []
  end

  test "an anonymous caller is refused" do
    assert {:error, error} = Operations.record_screen_capture_attempt(:screenshot, actor: nil)

    assert codes(error) == ["forbidden"]
    assert stored() == []
  end

  test "a caller cannot name the uid" do
    user = user_with!(["approved"])
    other = user_with!(["approved"])

    assert {:error, error} =
             ScreenCaptureAttempt
             |> Ash.Changeset.for_create(
               :record_screen_capture_attempt,
               %{capture_kind: :screenshot, uid: other.uid},
               actor: actor_for(user)
             )
             |> Ash.create()

    assert codes(error) == ["invalid"]
    assert stored() == []
  end

  test "nobody reads the attempts back through an action" do
    user = user_with!(["approved"])
    actor = actor_for(user)
    {:ok, _} = Operations.record_screen_capture_attempt(:screenshot, actor: actor)

    assert {:error, error} = Ash.read(ScreenCaptureAttempt, actor: actor, page: false)
    assert codes(error) == ["forbidden"]
  end
end
