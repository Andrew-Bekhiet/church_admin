defmodule ChurchAdmin.Repo.BaselineMigration do
  @moduledoc """
  An Ecto migration that applies one frozen Hasura-era folder,
  `priv/repo/baseline/<version>_<name>/up.sql`, where `<version>_<name>` is the
  basename of the migration file that `use`s this module. The Ecto version is
  therefore the Hasura version, so a database Hasura already migrated can be
  marked as migrated by copying `hdb_catalog.schema_migrations` versions.

  Baseline migrations are irreversible: they define only `up/0`.
  """

  @spec folder_path(String.t()) :: Path.t()
  def folder_path(folder),
    do: Path.join([:code.priv_dir(:church_admin), "repo", "baseline", folder])

  @spec folders() :: [String.t()]
  def folders do
    [:code.priv_dir(:church_admin), "repo", "baseline", "*", "up.sql"]
    |> Path.join()
    |> Path.wildcard()
    |> Enum.map(&(&1 |> Path.dirname() |> Path.basename()))
    |> Enum.sort()
  end

  @spec version(String.t()) :: pos_integer()
  def version(folder) do
    {version, "_" <> _name} = Integer.parse(folder)
    version
  end

  defmacro __using__(_opts) do
    folder = __CALLER__.file |> Path.basename(".exs")

    quote do
      use Ecto.Migration

      def up do
        ChurchAdmin.Repo.SqlScript.execute_file!(
          repo(),
          Path.join(ChurchAdmin.Repo.BaselineMigration.folder_path(unquote(folder)), "up.sql")
        )
      end
    end
  end
end
