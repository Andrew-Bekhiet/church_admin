defmodule ChurchAdmin.Geography.Street do
  @moduledoc false
  alias Ash.Changeset
  alias ChurchAdmin.Geography
  alias Geography.Changes.SyncAreasStreetsWithGeoraphy

  use Ash.Resource,
    domain: ChurchAdmin.Geography,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  graphql do
    type :streets

    queries do
      list :streets, :read
      get :street, :read
    end

    mutations do
      create :create_street, :create
      update :update_street, :update
      destroy :destroy_street, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "streets"
    schema "public"

    custom_indexes do
      index [:line], using: "gist"
      index [:deleted_at]
    end
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      accept :*
      touches_resources [Geography.Area]

      argument :line, :geo_json
      argument :areas, {:array, :uuid_v7}, allow_nil?: false, default: []

      change fn changeset, _context ->
        if Map.has_key?(changeset.arguments, :line) do
          line = Changeset.get_argument(changeset, :line)
          changeset |> Changeset.change_attribute(:line, line)
        else
          changeset
        end
      end

      change {SyncAreasStreetsWithGeoraphy, mode: :street_to_areas}
      change manage_relationship(:areas, type: :append, value_is_key: :id)
      change fn changeset, _ctx -> validate_street_has_at_least_one_area(changeset) end
    end

    update :update do
      accept :*
      primary? true
      require_atomic? false
      touches_resources [Geography.Area]

      argument :line, :geo_json
      argument :unlink_areas, {:array, :uuid_v7}, allow_nil?: false, default: []
      argument :link_areas, {:array, :uuid_v7}, allow_nil?: false, default: []

      change fn changeset, _context ->
        if Map.has_key?(changeset.arguments, :line) do
          line = Changeset.get_argument(changeset, :line)
          changeset |> Changeset.change_attribute(:line, line)
        else
          changeset
        end
      end

      change set_attribute(:line, arg(:line))

      change {SyncAreasStreetsWithGeoraphy, mode: :street_to_areas}

      change manage_relationship(:unlink_areas, :areas, type: :remove, value_is_key: :id)
      change manage_relationship(:link_areas, :areas, type: :append, value_is_key: :id)
      change fn changeset, _ctx -> validate_street_has_at_least_one_area(changeset) end
    end
  end

  @spec validate_street_has_at_least_one_area(Changeset.t()) :: Changeset.t()
  defp validate_street_has_at_least_one_area(changeset) do
    changeset
    |> Changeset.after_action(fn _changeset, result ->
      %{areas: areas} = Ash.load!(result, [:areas])

      if Enum.empty?(areas) do
        {:error,
         Ash.Error.Changes.InvalidChanges.exception(
           fields: [:areas],
           message: "must have at least one area"
         )}
      else
        {:ok, result}
      end
    end)
  end

  attributes do
    uuid_v7_primary_key :id
    attribute :name, :string, allow_nil?: false, public?: true
    attribute :line, :line_string, public?: true
    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true, writable?: false
    attribute :blurhash, :string, public?: true, writable?: false

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  relationships do
    many_to_many :areas, Geography.Area do
      through Geography.AreasStreets
      public? true
      source_attribute_on_join_resource :street_id
      destination_attribute_on_join_resource :area_id
      read_action :read
    end
  end
end
