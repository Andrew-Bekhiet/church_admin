defmodule Mix.Tasks.ChurchAdmin.Seed.Gen do
  @shortdoc "Generates the deterministic seed SQL and Auth emulator accounts"

  @moduledoc """
  Writes `priv/repo/seeds/generated/<scale>.sql` and
  `priv/repo/seeds/generated/<scale>.auth_emulator.json`.

      mix church_admin.seed.gen --scale small|medium

  The same scale always produces byte-identical files. The accounts file is the
  body of the Auth emulator's `accounts:batchCreate`; every account signs in with
  the password `ChurchAdmin.Dev.SeedGenerator.AuthEmulator.dev_password/0`.
  """

  use Mix.Task

  alias ChurchAdmin.Dev.SeedGenerator
  alias ChurchAdmin.Dev.SeedSpec

  @impl Mix.Task
  def run(args) do
    {options, _rest} = OptionParser.parse!(args, strict: [scale: :string])
    scale = parse_scale!(options[:scale])
    Mix.Task.run("app.config")

    for path <- SeedGenerator.write!(scale) do
      Mix.shell().info("wrote #{Path.relative_to_cwd(path)}")
    end
  end

  @spec parse_scale!(String.t() | nil) :: SeedSpec.scale()
  def parse_scale!(nil), do: Mix.raise("--scale is required: small or medium")

  def parse_scale!(name) do
    Enum.find(SeedSpec.scales(), &(Atom.to_string(&1) == name)) ||
      Mix.raise("unknown --scale #{name}: expected small or medium")
  end
end
