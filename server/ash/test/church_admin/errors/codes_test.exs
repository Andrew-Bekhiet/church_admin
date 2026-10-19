defmodule ChurchAdmin.Errors.CodesTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Errors.Codes

  test "each code is reached through a function named after it" do
    assert Codes.forbidden() == "forbidden"
    assert Codes.not_found() == "not_found"
    assert Codes.user_email_taken() == "user/email-taken"
    assert Codes.account_already_claimed() == "account/already-claimed"
    assert Codes.service_in_use() == "service/in-use"
  end

  test "the catalogue keeps the strings the client already handles" do
    for code <- ~w(user/email-taken user/name-taken user/person-already-linked
                   user/permission-not-grantable invitation/scope-required
                   invitation/scope-not-manageable account/already-claimed
                   account/not-claimable invitation/not-claimable rate_limited) do
      assert code in Codes.all()
    end
  end

  test "every code is a lower-case word, or a resource and a kebab-case reason" do
    for code <- Codes.all() do
      assert code =~ ~r{^([a-z_]+|[a-z]+/[a-z]+(-[a-z]+)*)$}
    end
  end
end
