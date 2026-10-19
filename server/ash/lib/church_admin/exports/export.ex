defmodule ChurchAdmin.Exports.Export do
  @moduledoc "The `exportData` mutation. It holds no data; the workbook is built on download."

  use Ash.Resource,
    domain: ChurchAdmin.Exports,
    extensions: [AshGraphql.Resource],
    authorizers: [Ash.Policy.Authorizer]

  alias ChurchAdmin.Exports.{DownloadLink, IssueDownloadLink}

  graphql do
    mutations do
      action :export_data, :export_data,
        args: [:areas_ids, :services_ids, :classes_ids, :groups_ids]
    end
  end

  actions do
    action :export_data, DownloadLink do
      argument :areas_ids, {:array, :uuid}, default: [], allow_nil?: false
      argument :services_ids, {:array, :uuid}, default: [], allow_nil?: false
      argument :classes_ids, {:array, :uuid}, default: [], allow_nil?: false
      argument :groups_ids, {:array, :uuid}, default: [], allow_nil?: false

      run IssueDownloadLink
    end
  end

  policies do
    policy action(:export_data) do
      authorize_if actor_present()
    end
  end
end
