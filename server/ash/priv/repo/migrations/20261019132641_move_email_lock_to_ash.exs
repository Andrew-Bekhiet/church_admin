defmodule ChurchAdmin.Repo.Migrations.MoveEmailLockToAsh do
  use Ecto.Migration

  def up do
    execute "drop trigger prevent_email_change_after_claim on auth.users_data"
    execute "drop function auth.prevent_email_change_after_claim()"
  end

  def down do
    execute """
    create or replace function auth.prevent_email_change_after_claim()
    returns trigger
    language plpgsql
    as $function$
    begin
        if new.email is distinct from old.email and old.auth_id is not null then
            raise exception 'Cannot change email of a claimed account';
        end if;

        return new;
    end;
    $function$
    """

    execute """
    create trigger prevent_email_change_after_claim
    before update on auth.users_data
    for each row
    execute function auth.prevent_email_change_after_claim()
    """
  end
end
