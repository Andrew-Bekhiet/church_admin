defmodule Mix.Tasks.ChurchAdmin.Setup do
  @shortdoc "Migrates the database and loads the seed data"

  @moduledoc """
  Prepares an existing database.

      mix church_admin.setup [--scale small|medium]

  1. migrates to the last baseline version,
  2. loads the reference seed, and with `--scale` the services seed and the
     generated seed file (generated first when it does not exist),
  3. migrates the rest.

  Seed data goes in between because it is written against the baseline schema;
  later migrations then see it like production rows. Without `--scale` only the
  reference data is loaded.
  """

  use Mix.Task

  alias ChurchAdmin.Dev.SeedGenerator
  alias ChurchAdmin.Repo.BaselineMigration
  alias ChurchAdmin.Seeds
  alias Mix.Tasks.ChurchAdmin.Seed.Gen

  @impl Mix.Task
  def run(args) do
    {options, _rest} = OptionParser.parse!(args, strict: [scale: :string])
    scale = options[:scale] && Gen.parse_scale!(options[:scale])
    Mix.Task.run("app.config")

    migrate(["--to", Integer.to_string(last_baseline_version())])
    Seeds.load_reference!()
    if scale, do: load_sample_data(scale)
    migrate([])
  end

  defp load_sample_data(scale) do
    unless File.exists?(Seeds.generated_path(scale)), do: SeedGenerator.write!(scale)

    Seeds.load_sample_services!()
    Seeds.load_generated!(scale)
  end

  defp last_baseline_version do
    BaselineMigration.folders() |> List.last() |> BaselineMigration.version()
  end

  defp migrate(args) do
    Mix.Task.reenable("ecto.migrate")
    Mix.Task.run("ecto.migrate", args)
  end
end
