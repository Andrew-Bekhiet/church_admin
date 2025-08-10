defmodule ChurchAdmin.Person.Family do
  alias Ash.Changeset
  alias ChurchAdmin.{Person, Geography}

  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Person,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  graphql do
    type :families

    queries do
      list :families, :read
      get :family, :read
    end

    mutations do
      create :create_family, :create
      update :update_family, :update
      destroy :destroy_family, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "families"
    schema "public"

    custom_indexes do
      index [:deleted_at]
    end

    references do
      reference :church, on_update: :update, on_delete: :nilify
      reference :status_record, on_update: :update, on_delete: :nilify
    end

    check_constraints do
      check_constraint [:status, :deceased_spouse_name], "deceased_spouse_name_check",
        check:
          "((((status = 'widowed'::text) AND (deceased_spouse_name IS NOT NULL))" <>
            " OR " <> "((status <> 'widowed'::text) AND (deceased_spouse_name IS NULL))))",
        message: "deceased_spouse_name must be null when status is not widowed"
    end
  end

  actions do
    defaults [:read, :create, :destroy]

    update :update do
      accept :*
      require_atomic? false
    end
  end

  validations do
    validate &validate_deceased_spouse_name/2, always_atomic?: true
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :name, :string, allow_nil?: false, public?: true
    attribute :notes, :string, public?: true
    attribute :color, :color, public?: true
    attribute :photo_updated_at, :utc_datetime, public?: true
    attribute :blurhash, :string, public?: true
    attribute :status, :string, allow_nil?: false, public?: true
    attribute :deceased_spouse_name, :string, public?: true
    attribute :marriage_date, :date, public?: true
    attribute :church_id, :uuid, public?: true
    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  relationships do
    belongs_to :church, Person.Church, public?: true
    # TODO: add User resource
    # belongs_to :deleted_by, Person.User, public?: true

    belongs_to :status_record, Person.FamilyStatus do
      define_attribute? false
      source_attribute :status
      destination_attribute :name
      attribute_type :string
      public? true
    end

    has_one :address, destination: Geography.Address, public?: true

    many_to_many :parents, Person.Family do
      through Person.FamiliesFamilies
      source_attribute_on_join_resource :child_family_id
      destination_attribute_on_join_resource :parent_family_id
      public? true
    end

    many_to_many :children, Person.Family do
      through Person.FamiliesFamilies
      source_attribute_on_join_resource :parent_family_id
      destination_attribute_on_join_resource :child_family_id
      public? true
    end
  end

  defp validate_deceased_spouse_name(changeset, _opts) do
    status = Changeset.get_attribute(changeset, :status)
    deceased_spouse_name = Changeset.get_attribute(changeset, :deceased_spouse_name)

    cond do
      status != "widowed" && not is_nil(deceased_spouse_name) ->
        {:error, [:deceased_spouse_name, "must be nil when status is not widowed"]}

      true ->
        :ok
    end
  end
end
