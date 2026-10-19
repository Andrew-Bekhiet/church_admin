defmodule ChurchAdmin.Repo.Migrations.MovePreferencesUpdatedAtToAsh do
  use Ecto.Migration

  def up do
    execute "drop trigger set_public_users_preferences_updated_at on public.users_preferences"
  end

  def down do
    execute """
    create or replace trigger "set_public_users_preferences_updated_at"
    before update on "public"."users_preferences"
    for each row
    execute function "public"."set_current_timestamp_updated_at"()
    """
  end
end
