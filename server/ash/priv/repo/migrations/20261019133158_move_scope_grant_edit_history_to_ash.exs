defmodule ChurchAdmin.Repo.Migrations.MoveScopeGrantEditHistoryToAsh do
  use Ecto.Migration

  def up do
    execute "drop trigger edit_history on auth.users_admin_on"
  end

  def down do
    execute """
    CREATE TRIGGER "edit_history" BEFORE INSERT OR UPDATE ON "auth"."users_admin_on" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"()
    """
  end
end
