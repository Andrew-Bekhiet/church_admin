defmodule ChurchAdmin.Exports.IssueDownloadLink do
  @moduledoc """
  Runs `Export.export_data`: rejects an empty selection (`invalid`) and a
  selection the actor may not export in full (`export/forbidden`), then
  answers with a 10 minute download URL for the selection.
  """

  use Ash.Resource.Actions.Implementation

  alias ChurchAdmin.Exports.{Authorization, Selection, Workbook}
  alias ChurchAdminWeb.FileToken

  @impl true
  def run(input, _opts, context) do
    actor = context.actor
    selection = Selection.new(input.arguments)

    with :ok <- Workbook.validate_selected(selection),
         :ok <- Authorization.authorize(actor, selection) do
      {token, expires_at} = FileToken.issue(:export, actor.uid, Selection.to_params(selection))

      {:ok,
       %{
         download_url: FileToken.download_url(token, Workbook.file_name()),
         expires_at: expires_at
       }}
    end
  end
end
