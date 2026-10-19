defmodule ChurchAdmin.Accounts.InvitationCodeTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Accounts.InvitationCode

  test "generated codes match the invitations_code_format check" do
    for _ <- 1..50,
        do: assert(InvitationCode.generate() =~ ~r/^[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}$/)
  end

  test "a typed code is trimmed, upper-cased and dashed" do
    assert InvitationCode.normalize(" ab12cd34ef56 ") == {:ok, "AB12-CD34-EF56"}
    assert InvitationCode.normalize("ab12-CD34-ef56") == {:ok, "AB12-CD34-EF56"}
  end

  test "anything else is not a code" do
    for typed <- ["", "AB12-CD34-EF5", "AB12CD34EF567", "AB12 CD34 EF56", "AB12-CD34-EF5!"] do
      assert InvitationCode.normalize(typed) == :error
    end
  end
end
