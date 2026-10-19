Postgrex.Types.define(
  ChurchAdmin.PostgrexTypes,
  [Geo.PostGIS.Extension] ++ Ecto.Adapters.Postgres.extensions(),
  json: Jason
)
