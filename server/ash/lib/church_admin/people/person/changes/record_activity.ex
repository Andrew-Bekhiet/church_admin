defmodule ChurchAdmin.People.Person.Changes.RecordActivity do
  @moduledoc """
  Records the written person's confession, kodas and call that the command
  names, through the Activity actions, when the value differs from the
  person's latest one, so a client sending the unchanged value back records
  nothing. The options name the arguments holding each value; an argument
  left `nil` records nothing. Written without authorization: the command's
  policy already decided the actor may edit the person.

      change {RecordActivity, confession: :last_confession, kodas: :last_kodas, call: :last_call}
  """

  use Ash.Resource.Change

  alias ChurchAdmin.Activity
  alias ChurchAdmin.Changes.AfterActionFailure

  @kinds [
    confession: {:last_confession_day, &Activity.record_confession/2, :day},
    kodas: {:last_kodas_day, &Activity.record_kodas/2, :day},
    call: {:last_call, &Activity.record_call/2, :time}
  ]

  @options_schema [confession: [type: :atom], kodas: [type: :atom], call: [type: :atom]]

  @impl Ash.Resource.Change
  def init(opts) do
    case Spark.Options.validate(opts, @options_schema) do
      {:ok, opts} -> {:ok, opts}
      {:error, error} -> {:error, Exception.message(error)}
    end
  end

  @impl Ash.Resource.Change
  def change(changeset, opts, context) do
    Ash.Changeset.after_action(changeset, fn changeset, person ->
      values =
        for {kind, argument} <- opts,
            value = Ash.Changeset.get_argument(changeset, argument),
            not is_nil(value),
            do: {kind, value}

      case record(values, person, context.actor) do
        :ok -> {:ok, person}
        {:error, error} -> AfterActionFailure.roll_back(changeset.resource, error)
      end
    end)
  end

  defp record([], _person, _actor), do: :ok

  defp record(values, person, actor) do
    latest =
      Ash.load!(person, Enum.map(@kinds, fn {_, {field, _, _}} -> field end), authorize?: false)

    Enum.reduce_while(values, :ok, fn {kind, value}, :ok ->
      {latest_field, record_fun, input} = Keyword.fetch!(@kinds, kind)

      if same?(Map.fetch!(latest, latest_field), value) do
        {:cont, :ok}
      else
        case record_fun.(%{:person_id => person.id, input => value},
               actor: actor,
               authorize?: false,
               return_notifications?: true
             ) do
          {:ok, _record, _notifications} -> {:cont, :ok}
          {:error, error} -> {:halt, {:error, error}}
        end
      end
    end)
  end

  defp same?(%DateTime{} = latest, %DateTime{} = value),
    do: DateTime.compare(latest, value) == :eq

  defp same?(latest, value), do: latest == value
end
