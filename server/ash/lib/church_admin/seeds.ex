defmodule ChurchAdmin.Seeds do
  @moduledoc """
  The seed scripts under `priv/repo/seeds`, loaded as single simple-protocol
  queries (see `ChurchAdmin.Repo.SqlScript`).

  The enums seed is required reference data; the services seed and the generated
  files are sample data written against the baseline schema.
  """

  alias ChurchAdmin.Repo.SqlScript

  @reference_file "1780874533476_enums_seed.sql"
  @services_file "1788885627898_services_seed.sql"

  @spec seeds_path(String.t()) :: Path.t()
  def seeds_path(file), do: Path.join([:code.priv_dir(:church_admin), "repo", "seeds", file])

  @spec generated_path(atom()) :: Path.t()
  def generated_path(scale), do: seeds_path(Path.join("generated", "#{scale}.sql"))

  @spec load_reference!() :: :ok
  def load_reference!, do: SqlScript.execute_file!(ChurchAdmin.Repo, seeds_path(@reference_file))

  @spec load_sample_services!() :: :ok
  def load_sample_services!,
    do: SqlScript.execute_file!(ChurchAdmin.Repo, seeds_path(@services_file))

  @spec load_generated!(atom()) :: :ok
  def load_generated!(scale), do: SqlScript.execute_file!(ChurchAdmin.Repo, generated_path(scale))
end
