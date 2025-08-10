defmodule ChurchAdmin.Geography.Area do
  @moduledoc false
  import AshGeo.Postgis
  import Ash.Expr

  require Ash.Query

  alias Ash.Changeset
  alias ChurchAdmin.Person
  alias ChurchAdmin.Geography

  use Ash.Resource,
    authorizers: [Ash.Policy.Authorizer],
    domain: ChurchAdmin.Geography,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshGraphql.Resource]

  graphql do
    type :areas

    queries do
      list :areas, :read
      get :area, :read
    end

    mutations do
      create :create_area, :create
      update :update_area, :update
      destroy :destroy_area, :destroy
    end
  end

  postgres do
    repo ChurchAdmin.Repo
    table "areas"
    schema "public"

    custom_indexes do
      index [:bounds], using: "gist"
      index [:deleted_at]
    end
  end

  actions do
    defaults [:read, :destroy]

    create :create do
      accept :*
      touches_resources [ChurchAdmin.Geography.Street]

      change after_action(&sync_related_areas/2), always_atomic?: true
    end

    update :update do
      accept :*
      touches_resources [ChurchAdmin.Geography.Street]

      change after_action(&sync_related_areas/2), always_atomic?: true
    end
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :name, :string, allow_nil?: false, public?: true
    attribute :bounds, :polygon, public?: true
    attribute :color, :color, public?: true
    attribute :photo_updated_at, :datetime, public?: true
    attribute :blurhash, :string, public?: true

    attribute :deleted_at, :datetime, public?: false
    attribute :deleted_by, :uuid_v7, public?: false
  end

  relationships do
    many_to_many :streets, Geography.Street do
      through Geography.AreasStreets
      public? true
      source_attribute_on_join_resource :area_id
      destination_attribute_on_join_resource :street_id
      read_action :read
    end

    many_to_many :families, Person.Family do
      through Geography.Address
      source_attribute_on_join_resource :area_id
      destination_attribute_on_join_resource :family_id
      read_action :read
      public? true
    end
  end

  defp sync_related_areas(%Changeset{action_type: type} = changeset, area)
       when type in [:create, :update] do
    cond do
      Changeset.changing_attribute?(changeset, :bounds) ->
        bounds = Changeset.get_attribute(changeset, :bounds)

        threshold = geo_search_threshold()

        streets =
          case bounds do
            nil ->
              []

            _ ->
              Geography.Street
              |> Ash.Query.filter(
                expr(
                  not is_nil(line) and
                    ^st_dwithin_in_meters(^bounds, line, ^threshold)
                )
              )
              |> Ash.read!()
          end

        area
        |> Changeset.new()
        |> Changeset.manage_relationship(:streets, streets, type: :append_and_remove)
        |> Ash.update()

      true ->
        {:ok, area}
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
