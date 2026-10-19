defmodule ChurchAdmin.Changes.StampActorRole do
  @moduledoc """
  Sets `attribute` to the role the write is recorded under: `"user"` for a
  user actor and `"admin"` for the system actor, which is what the Hasura
  session defaults wrote.

      change {StampActorRole, attribute: :user_role}, on: :create
  """

  use Ash.Resource.Change

  alias Ash.Error.Changes.InvalidAttribute
  alias ChurchAdmin.Authz.Actor

  @options_schema [attribute: [type: :atom, required: true]]

  @impl true
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl true
  def change(changeset, opts, context) do
    attribute = opts[:attribute]

    case context.actor do
      %Actor{system?: true} ->
        Ash.Changeset.force_change_attribute(changeset, attribute, "admin")

      %Actor{uid: uid} when is_binary(uid) ->
        Ash.Changeset.force_change_attribute(changeset, attribute, "user")

      _actor ->
        Ash.Changeset.before_action(changeset, &fail_without_actor(&1, attribute))
    end
  end

  defp fail_without_actor(changeset, attribute) do
    Ash.Changeset.add_error(
      changeset,
      InvalidAttribute.exception(
        field: attribute,
        message: "is stamped from the actor, and this write has no user or system actor"
      )
    )
  end

  @impl true
  def atomic(changeset, opts, context), do: {:ok, change(changeset, opts, context)}
end
