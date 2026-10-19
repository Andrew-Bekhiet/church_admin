defmodule ChurchAdmin.Auth.TokenVerifierTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Auth.EmulatorTokenVerifier
  alias ChurchAdmin.Auth.FirebaseTokenVerifier
  alias ChurchAdmin.Auth.TokenVerifier

  test "firebase mode selects the signature-checking verifier in every environment" do
    for env <- [:dev, :test, :prod] do
      assert TokenVerifier.verifier_for!(:firebase, env) == FirebaseTokenVerifier
    end
  end

  test "emulator mode is allowed in dev and test" do
    assert TokenVerifier.verifier_for!(:emulator, :dev) == EmulatorTokenVerifier
    assert TokenVerifier.verifier_for!(:emulator, :test) == EmulatorTokenVerifier
  end

  test "emulator mode refuses to run in prod" do
    assert_raise ArgumentError, ~r/emulator/, fn ->
      TokenVerifier.verifier_for!(:emulator, :prod)
    end
  end

  test "the test environment verifies emulator tokens for the demo project" do
    assert TokenVerifier.configured!() == EmulatorTokenVerifier
    assert TokenVerifier.firebase_project_id() == "demo-church-admin"
  end
end
