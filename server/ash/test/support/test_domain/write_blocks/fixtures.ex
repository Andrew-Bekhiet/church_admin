defmodule ChurchAdmin.TestDomain.WriteBlockFixtures do
  @moduledoc """
  Temporary tables behind the write-block probe resources, and users that can
  act on them. The tables live in the test's sandbox connection only.
  """

  alias ChurchAdmin.Auth.Principal
  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Repo

  @tables [
    """
    create temporary table edited_things (
      id uuid primary key,
      name text not null,
      deleted_at timestamptz
    )
    """,
    """
    create temporary table thing_memberships (
      id uuid primary key,
      group_id uuid not null,
      person_id uuid not null
    )
    """,
    """
    create temporary table stamped_notes (
      id uuid primary key,
      person_id uuid not null,
      recorded_by uuid not null
    )
    """,
    """
    create temporary table guarded_things (
      id uuid primary key,
      name text not null
    )
    """
  ]

  @spec create_tables!() :: :ok
  def create_tables! do
    Enum.each(@tables, &Repo.query!/1)
  end

  @spec user_actor!() :: Actor.t()
  def user_actor! do
    ChurchAdmin.DataCase.set_system_db_session()

    %{rows: [[uid]]} =
      Repo.query!(
        "insert into auth.users_data (name) values ($1) returning uid::text",
        ["write-block user #{System.unique_integer([:positive])}"]
      )

    Actor.for_principal(%Principal{auth_id: "auth-#{uid}", uid: uid, claims: %{}})
  end
end
