defmodule ChurchAdmin.TestDomain.HasuraSessionProbe do
  @moduledoc """
  Records the `hasura.user` GUC that each write sees, over the temporary table
  `create_table!/0` creates in the test's sandbox connection.
  """

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "hasura_session_probes"
    repo ChurchAdmin.Repo
    migrate? false
  end

  actions do
    defaults [:read]

    create :create do
      primary? true
    end

    update :record_session do
      change atomic_update(:session, expr(fragment("current_setting('hasura.user', true)")))
    end

    action :current_session, :string do
      transaction? true

      run fn _input, _context ->
        %{rows: [[session]]} =
          ChurchAdmin.Repo.query!("select current_setting('hasura.user', true)")

        {:ok, session}
      end
    end
  end

  attributes do
    uuid_primary_key :id
    attribute :session, :string, generated?: true
  end

  def create_table! do
    ChurchAdmin.Repo.query!("""
    create temporary table hasura_session_probes (
      id uuid primary key,
      session text default current_setting('hasura.user', true)
    )
    """)
  end
end
