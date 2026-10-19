defmodule ChurchAdmin.Repo.Migrations.MoveFamilySoftDeleteToAsh do
  use Ecto.Migration

  def up do
    execute("drop trigger soft_delete_families on public.families")
  end

  def down do
    execute("""
    create trigger soft_delete_families
    before delete on families
    for each row
    execute function soft_delete_trigger()
    """)
  end
end
