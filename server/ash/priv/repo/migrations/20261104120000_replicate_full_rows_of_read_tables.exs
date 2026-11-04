defmodule ChurchAdmin.Repo.Migrations.ReplicateFullRowsOfReadTables do
  use Ecto.Migration

  # Without the old row an update counts as touching every column, so every
  # list reading one of these tables re-ran on any edit. It also names the
  # viewer whose person was unlinked, which the new row no longer can.
  @tables ~w(auth.users_data public.families public.persons public.stores)

  def change do
    for table <- @tables do
      execute(
        "alter table #{table} replica identity full",
        "alter table #{table} replica identity default"
      )
    end
  end
end
