defmodule ChurchAdmin.Repo.Migrations.MoveFamilyEditHistoryToAsh do
  use Ecto.Migration

  @tables ~w(families families_families)

  def up do
    for table <- @tables, do: execute("drop trigger edit_history on public.#{table}")
  end

  def down do
    for table <- @tables do
      execute("""
      create trigger "edit_history"
      after insert or update on "public"."#{table}"
      for each row
      execute function "history"."edit_history_trigger"()
      """)
    end
  end
end
