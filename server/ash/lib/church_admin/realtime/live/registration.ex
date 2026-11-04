defmodule ChurchAdmin.Realtime.Live.Registration do
  @moduledoc """
  One `live:register` of a socket. `from_payload/1` validates what the client
  sent; `ChurchAdminWeb.LiveQueriesChannel` fills in who registers and which
  registration this one replaces. `id` is unique per registration, unlike
  the client's `ref`, so a result of a replaced registration can be told
  from one of its replacement.

  A window needs a document that declares `$first` and `$after`, or the
  chunks could not chain. The window's cap stands in for the per-document
  limits: `ChurchAdminWeb.Graphql.Pipeline` measures one chunk, not the sum.
  """

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Realtime.Live.Document

  @enforce_keys [:ref, :document, :variables]
  defstruct [:id, :ref, :pid, :actor, :document, :variables, :window, :known_hashes, :replaces]

  @max_chunk_rows 1_000
  @max_window_rows 20_000

  @type window :: %{rows: pos_integer(), chunk: pos_integer()}
  @type t :: %__MODULE__{
          id: reference() | nil,
          ref: String.t(),
          pid: pid() | nil,
          actor: Actor.t() | nil,
          document: Document.t(),
          variables: map(),
          window: window() | nil,
          known_hashes: [String.t()] | nil,
          replaces: reference() | nil
        }

  @spec from_payload(map()) :: {:ok, t()} | {:error, :invalid | :too_large | :not_a_query}
  def from_payload(%{"ref" => ref, "document" => text} = payload)
      when is_binary(ref) and ref != "" and is_binary(text) do
    with {:ok, operation_name} <- optional_string(payload["operationName"]),
         {:ok, document} <- Document.prepare(text, operation_name),
         {:ok, variables} <- variables(payload["variables"]),
         {:ok, window} <- window(payload["window"], document),
         {:ok, known_hashes} <- known_hashes(payload["resultHashes"]) do
      {:ok,
       %__MODULE__{
         ref: ref,
         document: document,
         variables: without_paging(variables, window),
         window: window,
         known_hashes: known_hashes
       }}
    end
  end

  def from_payload(_payload), do: {:error, :invalid}

  defp optional_string(value) when is_binary(value) or is_nil(value), do: {:ok, value}
  defp optional_string(_value), do: {:error, :invalid}

  defp variables(nil), do: {:ok, %{}}
  defp variables(%{} = variables), do: {:ok, variables}
  defp variables(_value), do: {:error, :invalid}

  defp window(nil, _document), do: {:ok, nil}

  defp window(%{"rows" => rows, "chunk" => chunk}, document)
       when rows in 1..@max_window_rows//1 and chunk in 1..@max_chunk_rows//1 do
    if ~w(first after) |> MapSet.new() |> MapSet.subset?(document.declared_variables),
      do: {:ok, %{rows: rows, chunk: chunk}},
      else: {:error, :invalid}
  end

  defp window(_value, _document), do: {:error, :invalid}

  defp known_hashes(nil), do: {:ok, nil}

  defp known_hashes(hashes) when is_list(hashes) do
    if Enum.all?(hashes, &is_binary/1), do: {:ok, hashes}, else: {:error, :invalid}
  end

  defp known_hashes(_value), do: {:error, :invalid}

  defp without_paging(variables, nil), do: variables
  defp without_paging(variables, _window), do: Map.drop(variables, ~w(first after))
end
