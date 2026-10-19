defmodule ChurchAdmin.Changes.StampActor do
  @moduledoc """
  Sets `attribute` to the acting user's uid, overriding any value given.
  The system actor has no uid: it keeps the value its caller set explicitly,
  and fails on a required attribute it left unset.

      change {StampActor, attribute: :recorded_by}, on: :create
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
        require_explicit_value_if_required(changeset, attribute)

      %Actor{uid: uid} when is_binary(uid) ->
        Ash.Changeset.force_change_attribute(changeset, attribute, uid)

      _actor ->
        Ash.Changeset.before_action(changeset, &fail_without_actor(&1, attribute))
    end
  end

  # Deferred so the policies refuse an anonymous write first (forbidden, not invalid).
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

  defp require_explicit_value_if_required(changeset, attribute) do
    required? = not Ash.Resource.Info.attribute(changeset.resource, attribute).allow_nil?

    if required? and is_nil(Ash.Changeset.get_attribute(changeset, attribute)) do
      Ash.Changeset.add_error(
        changeset,
        InvalidAttribute.exception(
          field: attribute,
          message: "must be given explicitly when the system actor writes"
        )
      )
    else
      changeset
    end
  end
end
