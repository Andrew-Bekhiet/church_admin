defmodule ChurchAdmin.Repo.Migrations.MoveFamilyStoreAddressInsertionGuardsToAsh do
  use Ecto.Migration

  def up do
    execute("drop trigger check_family_insertion on public.families")
    execute("drop trigger check_store_insertion on public.stores")
    execute("drop trigger check_address_insertion on public.addresses")
    execute("drop function public.check_row_insertion_permission()")
    execute("drop function public.check_address_insertion()")
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_insertion_guards.sql"])
    )
  end
end
