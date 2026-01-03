defmodule ChurchAdmin.Geography.Street do
  @moduledoc false
  import AshGeo.Postgis
  import Ash.Expr

  require Ash.Query

  alias Ash.Changeset
  alias ChurchAdmin.Geography

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
      touches_resources [ChurchAdmin.Geography.Area]

      argument :line, :geo_json
      change set_attribute(:line, arg(:line))
      change &sync_related_areas/2
    end

    update :update do
      accept :*
      primary? true
      require_atomic? false
      touches_resources [ChurchAdmin.Geography.Area]

      argument :line, :geo_json
      change set_attribute(:line, arg(:line))
      change &sync_related_areas/2
    end
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

  defp sync_related_areas(%Changeset{action_type: type} = changeset, _street)
       when type in [:create, :update] do
    cond do
      Changeset.changing_attribute?(changeset, :line) ->
        line = Changeset.get_attribute(changeset, :line)

        threshold = geo_search_threshold()

        areas =
          case line do
            nil ->
              []

            _ ->
              Geography.Area
              |> Ash.Query.filter(
                expr(
                  not is_nil(bounds) and
                    ^st_dwithin_in_meters(bounds, ^line, ^threshold)
                )
              )
              |> Ash.read!()
          end

        changeset
        |> Changeset.manage_relationship(:areas, areas, type: :append_and_remove)

      true ->
        changeset
    end
  end

  defp geo_search_threshold() do
    case Application.get_env(:church_admin, :geo_search_threshold, 0) do
      v when is_integer(v) ->
        v

      _ ->
        0
    end
  end
end
