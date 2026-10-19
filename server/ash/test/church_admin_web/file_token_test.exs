defmodule ChurchAdminWeb.FileTokenTest do
  use ExUnit.Case, async: true

  alias ChurchAdminWeb.FileToken

  @uid "6f1c2a3e-0b4d-4e5f-8a9b-0c1d2e3f4a5b"
  @params %{areas_ids: ["a"], services_ids: [], classes_ids: [], groups_ids: []}

  test "a token carries its operation, user and parameters" do
    {token, _expires_at} = FileToken.issue(:export, @uid, @params)

    assert FileToken.verify(token) == {:ok, %{op: :export, uid: @uid, params: @params}}
  end

  test "an export token lasts ten minutes" do
    before = DateTime.utc_now()
    {_token, expires_at} = FileToken.issue(:export, @uid, @params)

    assert DateTime.diff(expires_at, before, :second) in 599..601
  end

  test "a token older than its operation allows is expired" do
    issued_at = System.system_time(:second) - 11 * 60
    {token, _expires_at} = FileToken.issue(:export, @uid, @params, signed_at: issued_at)

    assert FileToken.verify(token) == {:error, :expired}
  end

  test "a token just inside its window is still good" do
    issued_at = System.system_time(:second) - 9 * 60
    {token, _expires_at} = FileToken.issue(:export, @uid, @params, signed_at: issued_at)

    assert {:ok, _claims} = FileToken.verify(token)
  end

  test "a forged or truncated token is invalid" do
    {token, _expires_at} = FileToken.issue(:export, @uid, @params)
    forged = Phoenix.Token.sign(ChurchAdminWeb.Endpoint, "another salt", %{op: :export})

    for bad <- [forged, "not a token", String.slice(token, 0..-3//1), token <> "x", ""] do
      assert FileToken.verify(bad) == {:error, :invalid}
    end
  end

  for {op, minutes} <- [export: 10, photo_upload: 5, photo_download: 5, app_download: 20] do
    test "a #{op} token lasts #{minutes} minutes" do
      {fresh, expires_at} =
        FileToken.issue(unquote(op), @uid, %{},
          signed_at: System.system_time(:second) - (unquote(minutes) - 1) * 60
        )

      {stale, _expires_at} =
        FileToken.issue(unquote(op), @uid, %{},
          signed_at: System.system_time(:second) - (unquote(minutes) + 1) * 60
        )

      assert {:ok, %{op: unquote(op)}} = FileToken.verify(fresh)
      assert FileToken.verify(stale) == {:error, :expired}
      assert DateTime.diff(expires_at, DateTime.utc_now(), :second) in 55..65
    end
  end
end
