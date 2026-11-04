defmodule ChurchAdmin.Realtime.Live.Group do
  @moduledoc """
  One live query shared by its members: the stored result, what it depends
  on, and who has received what. Pure: transitions return the group with
  the messages to send, as `{pid, message}`, and
  `ChurchAdmin.Realtime.Live.Registry` delivers them. The messages are
  `{:live_ready, id}`, `{:live_refused, id}` and `{:live_result, id, payload}`.

  `generation` changes when a scoped member registers under fresher
  authorization facts. A run started under an older generation is discarded,
  so it cannot reach a member. Batches that arrive while a run is queued or
  running collect in `touched`, because the run may discover dependencies
  that make them matter.
  """

  alias ChurchAdmin.Authz.Actor
  alias ChurchAdmin.Realtime.Broadcaster
  alias ChurchAdmin.Realtime.Live.Delta
  alias ChurchAdmin.Realtime.Live.GroupDependencies
  alias ChurchAdmin.Realtime.Live.Refresh
  alias ChurchAdmin.Realtime.Live.Registration
  alias ChurchAdmin.Realtime.Live.Result
  alias ChurchAdmin.Realtime.Live.ViewerClass

  @enforce_keys [:key, :viewer_class, :document, :variables, :window, :actor, :generation]
  defstruct [
    :key,
    :viewer_class,
    :document,
    :variables,
    :window,
    :actor,
    :generation,
    :result,
    :result_generation,
    :dependencies,
    :run_ref,
    :run_generation,
    status: :idle,
    touched: [],
    run_again?: false,
    members: %{}
  ]

  @type member :: %{
          pid: pid(),
          sent: MapSet.t(String.t()),
          awaiting_baseline?: boolean(),
          known_hashes: [String.t()] | nil
        }
  @type message :: {pid(), tuple()}
  @type t :: %__MODULE__{}

  @spec key(Registration.t()) :: term()
  def key(%Registration{} = registration) do
    {registration.document.hash, registration.document.operation_name, registration.variables,
     registration.window, viewer_class(registration)}
  end

  @spec new(Registration.t()) :: t()
  def new(%Registration{} = registration) do
    %__MODULE__{
      key: key(registration),
      viewer_class: viewer_class(registration),
      document: registration.document,
      variables: registration.variables,
      window: registration.window,
      actor: registration.actor,
      generation: make_ref()
    }
  end

  @spec join(t(), Registration.t()) :: {t(), [message()]}
  def join(%__MODULE__{} = group, %Registration{} = registration) do
    member = %{
      pid: registration.pid,
      sent: MapSet.new(),
      awaiting_baseline?: true,
      known_hashes: registration.known_hashes
    }

    joined =
      group
      |> adopt_fresher_actor(registration.actor)
      |> put_in([Access.key!(:members), registration.id], member)

    if result_current?(joined),
      do: settle_member(joined, registration.id),
      else: {joined, []}
  end

  @spec leave(t(), reference()) :: t()
  def leave(%__MODULE__{} = group, id),
    do: %{group | members: Map.delete(group.members, id)}

  @spec empty?(t()) :: boolean()
  def empty?(%__MODULE__{members: members}), do: map_size(members) == 0

  @spec needs_run?(t()) :: boolean()
  def needs_run?(%__MODULE__{status: :idle} = group), do: not result_current?(group)
  def needs_run?(%__MODULE__{}), do: false

  @spec resync(t(), reference()) :: {t(), [message()]}
  def resync(%__MODULE__{} = group, id) do
    case group.members do
      %{^id => %{awaiting_baseline?: true}} ->
        {put_in(group.members[id].known_hashes, nil), []}

      %{^id => member} ->
        {put_in(group.members[id].sent, sent_ids(group.result)),
         [{member.pid, {:live_result, id, Delta.full(group.result)}}]}

      _left_meanwhile ->
        {group, []}
    end
  end

  @spec queue(t()) :: t()
  def queue(%__MODULE__{} = group), do: %{group | status: :queued}

  @spec start_run(t()) :: {t(), Refresh.input()}
  def start_run(%__MODULE__{} = group) do
    input = %{
      document: group.document,
      variables: group.variables,
      window: group.window,
      actor: group.actor,
      known_hashes: group.result && group.result.chunk_hashes,
      touched: group.touched
    }

    {%{
       group
       | status: :running,
         run_generation: group.generation,
         touched: [],
         run_again?: false
     }, input}
  end

  @spec track_run(t(), reference()) :: t()
  def track_run(%__MODULE__{} = group, run_ref), do: %{group | run_ref: run_ref}

  @spec collect_touched(t(), [Broadcaster.touched_row()]) :: t()
  def collect_touched(%__MODULE__{} = group, rows),
    do: %{group | touched: rows ++ group.touched}

  @spec mark_run_again(t()) :: t()
  def mark_run_again(%__MODULE__{} = group), do: %{group | run_again?: true}

  @doc """
  Ends a run. A run of an older generation is discarded and another follows.
  A failed run keeps the stored result and refuses the members still waiting
  for a baseline; a group failing its first run is left without members.
  """
  @spec finish_run(t(), Refresh.outcome()) :: {t(), [message()]}
  def finish_run(%__MODULE__{generation: generation, run_generation: run_generation} = group, _)
      when generation != run_generation,
      do: {%{idle(group) | run_again?: true}, []}

  def finish_run(%__MODULE__{} = group, {:error, _errors}) do
    refused = for {id, %{awaiting_baseline?: true, pid: pid}} <- group.members, do: {id, pid}

    {%{idle(group) | members: Map.drop(group.members, Enum.map(refused, &elem(&1, 0)))},
     for({id, pid} <- refused, do: {pid, {:live_refused, id}})}
  end

  def finish_run(%__MODULE__{} = group, {:ok, %{result: :unchanged} = run}) do
    settle_awaiting_members(%{
      idle(group)
      | result_generation: group.generation,
        dependencies: run.dependencies
    })
  end

  def finish_run(%__MODULE__{} = group, {:ok, %{result: %Result{} = result} = run}) do
    %{
      idle(group)
      | result: result,
        result_generation: group.generation,
        dependencies: run.dependencies
    }
    |> push_to_settled_members(group.result)
    |> settle_awaiting_members_after()
  end

  @doc """
  Whether what happened during the last run calls for another, judged by
  what the group read before and during it; empties `touched` if not.
  """
  @spec due_again?(t(), GroupDependencies.t() | nil) :: {boolean(), t()}
  def due_again?(%__MODULE__{} = group, dependencies_before_run) do
    dependencies =
      GroupDependencies.merge(dependencies_before_run || %{}, group.dependencies || %{})

    if group.run_again? or GroupDependencies.touched?(dependencies, group.touched),
      do: {true, group},
      else: {false, %{group | touched: []}}
  end

  defp idle(%__MODULE__{} = group), do: %{group | status: :idle, run_ref: nil}

  defp viewer_class(%Registration{actor: actor, document: document}),
    do: ViewerClass.key(actor, document.operation_name)

  defp adopt_fresher_actor(%{viewer_class: {:uid, _uid}} = group, %Actor{} = actor) do
    if ViewerClass.same_scope?(group.actor, actor),
      do: group,
      else: %{group | actor: actor, generation: make_ref()}
  end

  defp adopt_fresher_actor(group, _actor), do: group

  defp result_current?(%__MODULE__{result: nil}), do: false
  defp result_current?(group), do: group.result_generation == group.generation

  defp sent_ids(%Result{} = result), do: result |> Result.ids() |> MapSet.new()

  defp push_to_settled_members(%__MODULE__{} = group, nil), do: {group, []}

  defp push_to_settled_members(%__MODULE__{result: result} = group, previous) do
    comparison = Delta.between(previous, result)
    sent = sent_ids(result)

    {members, messages} =
      Enum.map_reduce(group.members, [], fn
        {_id, %{awaiting_baseline?: true}} = awaiting, messages ->
          {awaiting, messages}

        {id, member}, messages ->
          payload = Delta.payload(comparison, result, member.sent)
          {{id, %{member | sent: sent}}, [{member.pid, {:live_result, id, payload}} | messages]}
      end)

    {%{group | members: Map.new(members)}, messages}
  end

  defp settle_awaiting_members_after({group, pushes}) do
    {group, baselines} = settle_awaiting_members(group)
    {group, pushes ++ baselines}
  end

  defp settle_awaiting_members(%__MODULE__{} = group) do
    awaiting = for {id, %{awaiting_baseline?: true}} <- group.members, do: id

    Enum.reduce(awaiting, {group, []}, fn id, {group, messages} ->
      {group, settled} = settle_member(group, id)
      {group, messages ++ settled}
    end)
  end

  defp settle_member(%__MODULE__{result: result} = group, id) do
    %{pid: pid, known_hashes: known_hashes} = group.members[id]

    settled =
      update_in(
        group.members[id],
        &%{&1 | sent: sent_ids(result), awaiting_baseline?: false, known_hashes: nil}
      )

    ready = {pid, {:live_ready, id}}

    if known_hashes == result.chunk_hashes,
      do: {settled, [ready]},
      else: {settled, [ready, {pid, {:live_result, id, Delta.full(result)}}]}
  end
end
