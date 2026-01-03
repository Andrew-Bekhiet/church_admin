defmodule ChurchAdmin.Attendance.Group do
  use Ash.Resource,
    domain: ChurchAdmin.Attendance,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  @moduledoc """
  Group resource maps to public.groups.
  """

  graphql do
    type :groups

    queries do
      list :groups, :read
      get :group, :read
    end

    mutations do
      create :create_group, :create
      update :update_group, :update
      destroy :destroy_group, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "groups"
    schema "public"

    custom_indexes do
      index [:deleted_at]
    end

    references do
      reference :service, on_update: :update, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    uuid_v7_primary_key :id
    attribute :name, :string, allow_nil?: false, public?: true

    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true, writable?: false
    attribute :blurhash, :string, public?: true, writable?: false

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  relationships do
    belongs_to :service, ChurchAdmin.Attendance.Service, public?: true

    many_to_many :persons, ChurchAdmin.Person.Person do
      through ChurchAdmin.Attendance.PersonGroup
      source_attribute_on_join_resource :group_id
      destination_attribute_on_join_resource :person_id
      read_action :read
      public? true
    end
  end
end
