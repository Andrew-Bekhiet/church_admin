defmodule ChurchAdmin.Repo.Migrations.MovePlacesSoftDeleteToAsh do
  use Ecto.Migration

  @tables ~w(areas streets stores)

  def up do
    for table <- @tables, do: execute("drop trigger soft_delete_#{table} on public.#{table}")
  end

  def down do
    for table <- @tables do
      execute("""
      create trigger soft_delete_#{table}
      before delete on public.#{table}
      for each row
      execute function soft_delete_trigger()
      """)
    end
  end
end
