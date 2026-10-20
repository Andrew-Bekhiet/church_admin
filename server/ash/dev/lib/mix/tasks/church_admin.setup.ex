defmodule Mix.Tasks.ChurchAdmin.Setup do
  @shortdoc "Migrates the database and loads the seed data"

  @moduledoc """
  Prepares an existing database.

      mix church_admin.setup [--services | --scale small|medium]

  1. migrates to the last baseline version,
  2. loads the reference seed, and with `--services` also the services seed, or
     with `--scale` the services seed and the generated seed file (generated
     first when it does not exist),
  3. migrates the rest.

  Seed data goes in between because it is written against the baseline schema;
  later migrations then see it like production rows. Without options only the
  reference data is loaded.

  A database that already applied the last baseline version only gets step 3,
  so restarting a stack never reloads or duplicates seed data.
  """

  use Mix.Task

  alias ChurchAdmin.Dev.SeedGenerator
  alias ChurchAdmin.Repo.BaselineMigration
  alias ChurchAdmin.Seeds
  alias Mix.Tasks.ChurchAdmin.Seed.Gen

  @impl Mix.Task
  def run(args) do
    {options, _rest} = OptionParser.parse!(args, strict: [scale: :string, services: :boolean])
    sample_data = sample_data(options)
    Mix.Task.run("app.config")

    if baseline_applied?() do
      migrate([])
    else
      migrate(["--to", Integer.to_string(last_baseline_version())])
      Seeds.load_reference!()
      load_sample_data(sample_data)
      migrate([])
    end
  end

  defp sample_data(options) do
    case {options[:scale], options[:services]} do
      {nil, true} -> :services
      {nil, _} -> :none
      {scale, true} -> Mix.raise("--services and --scale #{scale} are exclusive")
      {scale, _} -> Gen.parse_scale!(scale)
    end
  end

  defp load_sample_data(:none), do: :ok
  defp load_sample_data(:services), do: Seeds.load_sample_services!()

  defp load_sample_data(scale) do
    generated_file_exists? = scale |> Seeds.generated_path() |> File.exists?()
    unless generated_file_exists?, do: SeedGenerator.write!(scale)

    Seeds.load_sample_services!()
    Seeds.load_generated!(scale)
  end

  defp baseline_applied? do
    {:ok, versions, _apps} =
      Ecto.Migrator.with_repo(ChurchAdmin.Repo, &Ecto.Migrator.migrated_versions/1)

    last_baseline_version() in versions
  end

  defp last_baseline_version do
    BaselineMigration.folders() |> List.last() |> BaselineMigration.version()
  end

  defp migrate(args) do
    Mix.Task.reenable("ecto.migrate")
    Mix.Task.run("ecto.migrate", args)
  end
end
