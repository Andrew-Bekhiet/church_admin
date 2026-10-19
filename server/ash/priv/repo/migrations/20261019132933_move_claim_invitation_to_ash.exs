defmodule ChurchAdmin.Repo.Migrations.MoveClaimInvitationToAsh do
  use Ecto.Migration

  def up do
    execute "drop function auth.claim_invitation(text, text, text)"
  end

  def down do
    ChurchAdmin.Repo.SqlScript.execute_file!(
      repo(),
      Path.join([:code.priv_dir(:church_admin), "repo", "sql", "recreate_claim_invitation.sql"])
    )
  end
end
