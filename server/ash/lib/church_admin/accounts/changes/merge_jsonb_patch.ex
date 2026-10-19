defmodule ChurchAdmin.Accounts.Changes.MergeJsonbPatch do
  @moduledoc """
  Merges a map argument into a jsonb map attribute key by key, inside the
  database (`||`) so concurrent writers to other keys are kept, as Hasura's
  `_append` did. A key whose patched value is `null` is removed. An argument
  left out leaves the attribute untouched.

      change {MergeJsonbPatch, attribute: :order_by_preferences, argument: :order_by_preferences_patch}
  """

  use Ash.Resource.Change

  import Ash.Expr

  @options_schema [
    attribute: [type: :atom, required: true],
    argument: [type: :atom, required: true]
  ]

  @impl true
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl true
  def change(changeset, opts, _context) do
    case Ash.Changeset.get_argument(changeset, opts[:argument]) do
      nil ->
        changeset

      patch ->
        current = Ash.Changeset.get_attribute(changeset, opts[:attribute])

        Ash.Changeset.force_change_attribute(
          changeset,
          opts[:attribute],
          current |> Map.merge(patch) |> Map.reject(fn {key, _} -> Map.get(patch, key) == nil end)
        )
    end
  end

  @impl true
  def atomic(changeset, opts, _context) do
    attribute = opts[:attribute]

    case Ash.Changeset.get_argument(changeset, opts[:argument]) do
      nil ->
        {:ok, changeset}

      patch ->
        {:atomic,
         %{
           attribute =>
             expr(
               fragment(
                 "(? || ?) - array(select key from jsonb_each(?) where value = 'null'::jsonb)",
                 ^atomic_ref(attribute),
                 type(^patch, :map),
                 type(^patch, :map)
               )
             )
         }}
    end
  end
end
