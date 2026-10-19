defmodule ChurchAdmin.Exports do
  @moduledoc """
  Excel exports of the data a user may export. `exportData` checks the
  request and answers with a short-lived download URL; the workbook is built
  when that URL is fetched (`ChurchAdminWeb.FileController`), nothing is
  stored.
  """

  use ChurchAdmin.Domain

  resources do
    resource ChurchAdmin.Exports.Export
  end
end
