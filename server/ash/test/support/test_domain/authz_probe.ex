defmodule ChurchAdmin.TestDomain.AuthzProbe do
  @moduledoc """
  A row over the temporary tables `create_tables!/0` makes, for the authz
  building blocks: a create whose policy reads a link written by its own
  after_action hook, an update rechecked after the change, and a create that
  records the actor.
  """

  use Ash.Resource,
    domain: ChurchAdmin.TestDomain,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Authz.Changes.{RecheckAfterUpdate, RecordActor}
  alias ChurchAdmin.TestDomain.AuthzProbeLink

  postgres do
    table "authz_probes"
    repo ChurchAdmin.Repo
    migrate? false
  end

  actions do
    defaults [:read]

    create :create_with_link do
      accept [:name]
      argument :link_label, :string, allow_nil?: false

      change after_action(fn changeset, probe, _context ->
               Ash.Seed.seed!(AuthzProbeLink, %{
                 probe_id: probe.id,
                 label: Ash.Changeset.get_argument(changeset, :link_label)
               })

               {:ok, probe}
             end)
    end

    create :create_recorded do
      accept [:name]
      change {RecordActor, attribute: :recorded_by}
    end

    update :rename do
      accept [:name]
      require_atomic? false
      change {RecheckAfterUpdate, check: {ChurchAdmin.TestDomain.NotRetiredCheck, []}}
    end
  end

  policies do
    policy action(:create_with_link) do
      authorize_if expr(exists(links, label == "approved link"))
    end

    policy action([:read, :create_recorded, :rename]) do
      authorize_if always()
    end
  end

  attributes do
    uuid_primary_key :id
    attribute :name, :string, allow_nil?: false, public?: true
    attribute :recorded_by, :uuid, public?: true
  end

  relationships do
    has_many :links, AuthzProbeLink, destination_attribute: :probe_id
  end

  def create_tables! do
    ChurchAdmin.Repo.query!(
      "create table authz_probes (id uuid primary key, name text not null, recorded_by uuid)"
    )

    ChurchAdmin.Repo.query!(
      "create table authz_probe_links (id uuid primary key, probe_id uuid not null, label text not null)"
    )
  end
end

defmodule ChurchAdmin.TestDomain.AuthzProbeLink do
  @moduledoc false

  use Ash.Resource, domain: ChurchAdmin.TestDomain, data_layer: AshPostgres.DataLayer

  postgres do
    table "authz_probe_links"
    repo ChurchAdmin.Repo
    migrate? false
  end

  actions do
    defaults [:read]
  end

  attributes do
    uuid_primary_key :id
    attribute :probe_id, :uuid, allow_nil?: false
    attribute :label, :string, allow_nil?: false
  end
end

defmodule ChurchAdmin.TestDomain.NotRetiredCheck do
  @moduledoc false
  use Ash.Policy.FilterCheck

  @impl Ash.Policy.Check
  def describe(_opts), do: "the probe is not retired"

  @impl Ash.Policy.FilterCheck
  def filter(_actor, _context, _opts), do: expr(name != "retired")
end
