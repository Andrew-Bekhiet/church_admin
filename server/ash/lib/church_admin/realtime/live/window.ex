defmodule ChurchAdmin.Realtime.Live.Window do
  @moduledoc """
  Runs a registered document the way the client fetched it, so that chunk
  hashes compare with the ones it sent. An entity is one run. A list follows
  `KeysetPageQuery.fetchChained` on the client: `first` is the smaller of
  what remains and the chunk size, `after` the previous chunk's end keyset,
  and a short chunk ends the window.
  """

  alias ChurchAdmin.Realtime.Live.Result
  alias ChurchAdminWeb.Graphql.Pipeline

  @spec fetch(map()) :: {:ok, Result.t()} | {:error, term()}
  def fetch(%{window: nil} = input) do
    with {:ok, chunk} <- run_document(input, input.variables) do
      Result.from_entity(chunk)
    end
  end

  def fetch(%{window: %{rows: rows}} = input) do
    with {:ok, chunks} <- fetch_chunks(input, rows, %{}, []) do
      Result.from_chunks(chunks)
    end
  end

  defp fetch_chunks(input, remaining, cursor, chunks) do
    first = min(remaining, input.window.chunk)

    with {:ok, chunk} <-
           run_document(input, input.variables |> Map.merge(cursor) |> Map.put("first", first)) do
      chunks = [chunk | chunks]

      case Result.page_of(chunk) do
        {:ok, %{"results" => results, "endKeyset" => end_keyset}}
        when length(results) == first and remaining > first and is_binary(end_keyset) ->
          fetch_chunks(input, remaining - first, %{"after" => end_keyset}, chunks)

        _short_or_last_or_not_a_page ->
          {:ok, Enum.reverse(chunks)}
      end
    end
  end

  defp run_document(input, variables) do
    %{document: document, actor: actor} = input

    case Pipeline.run_parsed(document.parsed, document.operation_name, variables, actor) do
      %{data: %{} = data, extensions: %{resultHash: hash}} -> {:ok, %{hash: hash, data: data}}
      %{errors: errors} -> {:error, errors}
    end
  end
end
