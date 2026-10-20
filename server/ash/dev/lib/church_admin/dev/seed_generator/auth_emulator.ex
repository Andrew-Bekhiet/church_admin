defmodule ChurchAdmin.Dev.SeedGenerator.AuthEmulator do
  @moduledoc """
  The seeded accounts as the body of the Auth emulator's batch import,
  `POST /identitytoolkit.googleapis.com/v1/projects/<project>/accounts:batchCreate`.

  Every account signs in with the same development password. `localId` is the
  user's `auth_id`; `customAttributes` is the serialized claim set the
  Hasura-era token carried, which the `x-hasura-user-id` claim keeps on this branch.
  Pending users have no `auth_id` and are not imported.
  """

  @dev_password "SeedPass-123"

  @spec dev_password() :: String.t()
  def dev_password, do: @dev_password

  @spec build([map()]) :: String.t()
  def build(users) do
    accounts = for user <- users, not user.pending?, do: account(user)

    encoded_accounts =
      [users: accounts] |> Jason.OrderedObject.new() |> Jason.encode!(pretty: true)

    encoded_accounts <> "\n"
  end

  defp account(user) do
    Jason.OrderedObject.new([
      {"localId", user.auth_id},
      {"email", user.email},
      {"emailVerified", true},
      {"displayName", user.name},
      {"rawPassword", @dev_password},
      {"customAttributes", claims(user)}
    ])
  end

  defp claims(user) do
    [
      {"x-hasura-user-id", user.uid},
      {"x-hasura-default-role", "user"},
      {"x-hasura-allowed-roles", ["user"]}
    ]
    |> Jason.OrderedObject.new()
    |> Jason.encode!()
  end
end
