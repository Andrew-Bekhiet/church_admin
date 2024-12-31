defmodule ChurchAdminWeb.AshJsonApiRouter do
  use AshJsonApi.Router,
    domains: [Module.concat(["ChurchAdmin.Person"]), Module.concat(["ChurchAdmin.GeoEntities"])],
    open_api: "/open_api"
end
