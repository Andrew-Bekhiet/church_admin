defmodule ChurchAdmin.Repo.Migrations.MoveOrganizationArchiveAndEditHistoryToAsh do
  use Ecto.Migration

  @tables ~w(services classes groups)

  def up do
    for table <- @tables do
      execute "drop trigger soft_delete_#{table} on public.#{table}"
      execute "drop trigger edit_history on public.#{table}"
    end
  end

  def down do
    for table <- @tables do
      execute """
      CREATE TRIGGER soft_delete_#{table}
      BEFORE DELETE ON #{table}
      FOR EACH ROW
      EXECUTE FUNCTION soft_delete_trigger()
      """

      execute """
      CREATE TRIGGER "edit_history" AFTER INSERT OR UPDATE ON "public"."#{table}" FOR EACH ROW EXECUTE FUNCTION "history"."edit_history_trigger"()
      """
    end
  end
end
