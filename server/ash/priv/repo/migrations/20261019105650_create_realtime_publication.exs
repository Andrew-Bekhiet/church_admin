defmodule ChurchAdmin.Repo.Migrations.CreateRealtimePublication do
  use Ecto.Migration

  # Deletes and key-preserving updates replicate only the replica identity.
  # These tables must ship their whole old row: ChurchAdmin.Realtime.TypeMap
  # reads non-key columns from them (parent ids, the visited record), and the
  # permission cache has no primary key, so without FULL a publication that
  # covers it rejects its deletes.
  @tables_replicating_full_rows ~w(
    auth.users_admin_on
    auth.users_permissions_by_entity_id_cache
    history.attendance_history
    history.call_history
    history.confession_history
    history.kodas_history
    history.visit_history
    public.addresses
    public.contacts
    public.families_families
    public.persons_groups
    public.persons_hobbies
    public.persons_services
    public.persons_tags
  )

  def change do
    execute(
      "create publication church_admin_changes for tables in schema public, auth, history, operations",
      "drop publication church_admin_changes"
    )

    for table <- @tables_replicating_full_rows do
      execute(
        "alter table #{table} replica identity full",
        "alter table #{table} replica identity default"
      )
    end
  end
end
