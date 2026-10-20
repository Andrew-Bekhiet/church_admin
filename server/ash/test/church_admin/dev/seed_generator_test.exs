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

    assert directory |> Path.join("small.sql") |> File.read!() == output.sql

    assert directory |> Path.join("small.auth_emulator.json") |> File.read!() ==
             output.auth_emulator_json
  end

  test "the emulator file lists every non-pending user with the claims the token verifier reads" do
    output = SeedGenerator.generate(:small)
    %{"users" => accounts} = Jason.decode!(output.auth_emulator_json)
    imported = output.users |> Enum.reject(& &1.pending?) |> Map.new(&{&1.auth_id, &1})

    assert accounts |> Enum.map(& &1["localId"]) |> Enum.sort() ==
             imported |> Map.keys() |> Enum.sort()

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
    seed = "1788885627898_services_seed.sql" |> ChurchAdmin.Seeds.seeds_path() |> File.read!()

    for slug <- ChurchAdmin.Dev.SeedGenerator.Ids.seed_services() do
      assert seed =~ ChurchAdmin.Dev.SeedGenerator.Ids.seed_service(slug)
    end

    for position <- 1..SeedSpec.services_seed_counts().classes do
      assert seed =~ ChurchAdmin.Dev.SeedGenerator.Ids.seed_class(position)
    end
  end
end
