defmodule ChurchAdmin.Accounts.ClaimsTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Accounts.Claims

  test "default_for/1 grants the user role to the given user id under the Hasura claim names" do
    assert Claims.default_for("user-uid") == %{
             "x-hasura-user-id" => "user-uid",
             "x-hasura-default-role" => "user",
             "x-hasura-allowed-roles" => ["user"]
           }
  end
end
