defmodule ChurchAdmin.Realtime.Live.Refresh do
  @moduledoc """
  How an affected group gets its next result, the one seam between deciding
  that a group must be looked at and looking. `touched` says what caused the
  run; today every run re-reads the whole window.

  Each run records its statements, so a group's dependencies follow what the
  documents actually read for this viewer. Runs emit
  `[:church_admin, :realtime, :live, :run]`.
  """

  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.GroupDependencies
  alias ChurchAdmin.Realtime.Live.Result
  alias ChurchAdmin.Realtime.Live.StatementCapture
  alias ChurchAdmin.Realtime.Live.Window

  @type input :: %{
          required(:document) => ChurchAdmin.Realtime.Live.Document.t(),
          required(:variables) => map(),
          required(:window) => ChurchAdmin.Realtime.Live.Registration.window() | nil,
          required(:actor) => ChurchAdmin.Authz.Actor.t(),
          required(:known_hashes) => [String.t()] | nil,
          required(:touched) => [Broadcaster.touched_row()]
        }

  @type outcome ::
          {:ok, %{result: Result.t() | :unchanged, dependencies: GroupDependencies.t()}}
          | {:error, term()}

  @spec run(input()) :: outcome()
  def run(input) do
    :telemetry.execute(
      [:church_admin, :realtime, :live, :run],
      %{count: 1},
      %{operation_name: input.document.operation_name}
    )

    {fetched, statements} = StatementCapture.capture(fn -> Window.fetch(input) end)

    with {:ok, result} <- fetched do
      {:ok,
       %{
         result: unless_known(result, input.known_hashes),
         dependencies: GroupDependencies.of_statements(statements)
       }}
    end
  end

  defp unless_known(%Result{chunk_hashes: hashes}, hashes), do: :unchanged
  defp unless_known(result, _known_hashes), do: result
end
