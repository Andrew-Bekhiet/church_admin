defmodule ChurchAdmin.Repo.Migrations.MovePlacesGeographyRulesToAsh do
  use Ecto.Migration

  @triggers [
    {"areas", "sync_area_streets"},
    {"streets", "sync_street_areas"},
    {"streets", "check_street_has_area"},
    {"addresses", "check_address_street_same_area"},
    {"stores", "check_store_admin_family_or_address"},
    {"addresses", "sync_house_code_with_legacy_house_number"}
  ]

  def up do
    for {table, name} <- @triggers, do: execute("drop trigger #{name} on public.#{table}")
    for {_table, name} <- @triggers, do: execute("drop function public.#{name}()")
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([
        :code.priv_dir(:church_admin),
        "repo",
        "sql",
        "recreate_places_geography_rules.sql"
      ])
    )
  end
end
