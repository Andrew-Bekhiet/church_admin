defmodule ChurchAdmin.People.Contact do
  use Ash.Resource,
    domain: ChurchAdmin.People,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer],
    extensions: [AshGraphql.Resource]

  alias ChurchAdmin.Authz.Checks.{InScope, System}
  alias ChurchAdmin.Catalog.PersonType
  alias ChurchAdmin.People.{Family, Person}

  alias ChurchAdmin.People.Contact.Changes.{
    ClaimForSoleFamilyMember,
    KeepOneMainPerOwner,
    MergeIntoSameOwnerPhone
  }

  alias ChurchAdmin.Types.Text

  graphql do
    type :contact

    relationships [:person, :person_type, :family]

    queries do
      list :contacts, :read
    end
  end

  postgres do
    table "contacts"
    repo ChurchAdmin.Repo
    migration_types phone: :e164_phone
    migration_defaults created_at: ~S[fragment("now()")], updated_at: ~S[fragment("now()")]

    identity_index_names unique_person_id_phone: "contacts_person_id_phone_key",
                         one_main_phone_per_person: "contacts_person_main_phone_key",
                         one_unclaimed_main_phone_per_family_and_person_type:
                           "contacts_unclaimed_main_phone_key",
                         unique_unclaimed_phone_per_family_and_person_type:
                           "contacts_unclaimed_phone_key"

    identity_wheres_to_sql one_main_phone_per_person: "is_main_phone",
                           one_unclaimed_main_phone_per_family_and_person_type:
                             "(is_main_phone AND (person_id IS NULL))",
                           unique_unclaimed_phone_per_family_and_person_type:
                             "(person_id IS NULL)"

    references do
      reference :family, on_delete: :delete, on_update: :update
      reference :person, on_delete: :delete, on_update: :update
      reference :person_type, on_delete: :restrict, on_update: :update
    end
  end

  actions do
    read :read do
      primary? true

      pagination keyset?: true,
                 countable: true,
                 required?: false,
                 default_limit: 100,
                 max_page_size: 1000
    end

    create :create do
      description "Written only by the person and family commands, which authorize the whole write."
      accept [:person_id, :family_id, :person_type_id, :label, :phone, :is_main_phone]
      change ClaimForSoleFamilyMember
      change KeepOneMainPerOwner
      change MergeIntoSameOwnerPhone
    end

    update :update do
      description "Written only by the person and family commands, which authorize the whole write."
      accept [:label, :phone, :is_main_phone]
      require_atomic? false
      change KeepOneMainPerOwner
      change set_attribute(:updated_at, &DateTime.utc_now/0)
    end

    update :claim do
      description "Hands an unclaimed family contact to the family's sole member of its type."
      accept [:person_id, :family_id, :person_type_id, :is_main_phone]
      require_atomic? false
      change set_attribute(:updated_at, &DateTime.utc_now/0)
    end

    destroy :destroy do
      description "Written only by the person and family commands, which authorize the whole write."
    end
  end

  policies do
    bypass System do
      authorize_if always()
    end

    policy action_type(:read) do
      authorize_if {InScope, entity: :contact, access: :read}
    end

    policy action_type([:create, :update, :destroy]) do
      forbid_if always()
    end
  end

  attributes do
    attribute :id, :uuid,
      primary_key?: true,
      allow_nil?: false,
      default: &Ash.UUID.generate/0,
      public?: true

    attribute :person_id, :uuid, public?: true
    attribute :family_id, :uuid, public?: true
    attribute :person_type_id, :uuid, public?: true
    attribute :label, Text, public?: true
    attribute :phone, Text, allow_nil?: false, public?: true
    attribute :is_main_phone, :boolean, allow_nil?: false, default: false, public?: true

    attribute :created_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true

    attribute :updated_at, AshPostgres.TimestamptzUsec,
      allow_nil?: false,
      default: &DateTime.utc_now/0,
      public?: true
  end

  relationships do
    belongs_to :family, Family, define_attribute?: false, public?: true
    belongs_to :person, Person, define_attribute?: false, public?: true
    belongs_to :person_type, PersonType, define_attribute?: false, public?: true

    has_many :family_members, Person,
      source_attribute: :family_id,
      destination_attribute: :family_id
  end

  identities do
    identity :unique_person_id_phone, [:person_id, :phone]
    identity :one_main_phone_per_person, [:person_id], where: expr(is_main_phone)

    identity :one_unclaimed_main_phone_per_family_and_person_type, [:family_id, :person_type_id],
      where: expr(is_main_phone and is_nil(person_id))

    identity :unique_unclaimed_phone_per_family_and_person_type,
             [:family_id, :person_type_id, :phone], where: expr(is_nil(person_id))
  end
end
