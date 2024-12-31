defmodule ChurchAdmin.GeoEntities do
  alias ChurchAdmin.GeoEntities.{Area, Street, Family, Store}
  use Ash.Domain, extensions: [AshJsonApi.Domain]

  json_api do
    routes do
      base_route "/areas", Area do
        get(:read)
        index(:read)
        post(:create)
        patch(:update)
        delete(:destroy)
      end

      base_route "/streets", Street do
        get(:read)
        index(:read)
        post(:create)
        patch(:update)
        delete(:destroy)
      end

      base_route "/families", Family do
        get(:read)
        index(:read)
        post(:create)
        patch(:update)
        delete(:destroy)
      end

      base_route "/stores", Store do
        get(:read)
        index(:read)
        post(:create, relationship_arguments: [:admin_family])
        patch(:update)
        delete(:destroy)
      end
    end
  end

  resources do
    resource(Area)
    resource(Street)
    resource(Family)
    resource(Store)
  end
end
