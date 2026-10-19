defmodule ChurchAdmin.Repo.Migrations.MovePersonSoftDeleteToAsh do
  use Ecto.Migration

  def up do
    execute("drop trigger soft_delete_persons on public.persons")
  end

  def down do
    execute("""
    create trigger soft_delete_persons
    before delete on public.persons
    for each row
    execute function soft_delete_trigger()
    """)
  end
end
