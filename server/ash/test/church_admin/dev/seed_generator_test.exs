defmodule ChurchAdmin.Dev.SeedGeneratorTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Dev.SeedGenerator
  alias ChurchAdmin.Dev.SeedSpec

  defp hash(binary), do: :crypto.hash(:sha256, binary)

  for scale <- SeedSpec.scales() do
    test "generating #{scale} twice yields byte-identical SQL and emulator accounts" do
      first = SeedGenerator.generate(unquote(scale))
      second = SeedGenerator.generate(unquote(scale))

      assert hash(first.sql) == hash(second.sql)
      assert hash(first.auth_emulator_json) == hash(second.auth_emulator_json)
    end
  end

  test "the committed small files are what the generator produces now" do
    output = SeedGenerator.generate(:small)
    directory = SeedGenerator.generated_directory()

    assert File.read!(Path.join(directory, "small.sql")) == output.sql

    assert File.read!(Path.join(directory, "small.auth_emulator.json")) ==
             output.auth_emulator_json
  end

  test "the emulator file lists every non-pending user with the claims the token verifier reads" do
    output = SeedGenerator.generate(:small)
    %{"users" => accounts} = Jason.decode!(output.auth_emulator_json)
    imported = output.users |> Enum.reject(& &1.pending?) |> Map.new(&{&1.auth_id, &1})

    assert Enum.sort(Enum.map(accounts, & &1["localId"])) == Enum.sort(Map.keys(imported))

    for account <- accounts do
      user = Map.fetch!(imported, account["localId"])
      assert account["email"] == user.email
      assert account["emailVerified"]
      assert account["rawPassword"] == ChurchAdmin.Dev.SeedGenerator.AuthEmulator.dev_password()

      assert Jason.decode!(account["customAttributes"]) == %{
               "x-hasura-user-id" => user.uid,
               "x-hasura-default-role" => "user",
               "x-hasura-allowed-roles" => ["user"]
             }
    end
  end

  test "the services seed holds the ids the generator links to" do
    seed = File.read!(ChurchAdmin.Seeds.seeds_path("1788885627898_services_seed.sql"))

    for slug <- ChurchAdmin.Dev.SeedGenerator.Ids.seed_services() do
      assert seed =~ ChurchAdmin.Dev.SeedGenerator.Ids.seed_service(slug)
    end

    for position <- 1..SeedSpec.services_seed_counts().classes do
      assert seed =~ ChurchAdmin.Dev.SeedGenerator.Ids.seed_class(position)
    end
  end
end
