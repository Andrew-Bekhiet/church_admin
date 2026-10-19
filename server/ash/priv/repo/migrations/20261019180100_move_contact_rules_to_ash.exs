defmodule ChurchAdmin.Repo.Migrations.MoveContactRulesToAsh do
  use Ecto.Migration

  @triggers [
    {"contacts", "claim_contact_for_sole_family_member"},
    {"contacts", "keep_one_main_contact_per_owner"},
    {"contacts", "merge_contact_into_same_owner_phone"},
    {"contacts", "set_public_contacts_updated_at"},
    {"persons", "claim_family_contacts_on_insert"},
    {"persons", "claim_family_contacts_on_update"}
  ]

  @functions ~w(
    claim_contact_for_sole_family_member
    keep_one_main_contact_per_owner
    merge_contact_into_same_owner_phone
    claim_family_contacts_for_sole_member
  )

  def up do
    for {table, name} <- @triggers, do: execute("drop trigger #{name} on public.#{table}")
    for name <- @functions, do: execute("drop function public.#{name}()")
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_contact_rules.sql"])
    )
  end
end
