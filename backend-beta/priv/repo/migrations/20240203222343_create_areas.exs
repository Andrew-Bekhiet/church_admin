defmodule ChurchAdmin.Repo.Migrations.CreateAreas do
  use Ecto.Migration

  def change do
    execute("CREATE EXTENSION IF NOT EXISTS postgis", "DROP EXTENSION IF EXISTS postgis")

    create_if_not_exists table(:areas) do
      add(:name, :text, null: false)
      add(:bounds, :geometry)
      add(:color, :bigint)

      add(:photo_updated_at, :timestamptz)
      add(:blurhash, :text)
    end

    execute("ALTER TABLE areas ALTER COLUMN bounds TYPE geography(polygon ,4326);")

    create_if_not_exists(index(:areas, [:id, :bounds]))
    create_if_not_exists(index(:areas, [:bounds], using: :gist))
  end
end
