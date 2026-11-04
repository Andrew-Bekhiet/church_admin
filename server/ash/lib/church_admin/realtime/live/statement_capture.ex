defmodule ChurchAdmin.Realtime.Live.StatementCapture do
  @moduledoc """
  Collects the SQL of the Repo queries a function runs, including those run
  by tasks it started (processes whose `$callers` include the capturing one).

  `Collectors` attaches a single telemetry handler at boot; `capture/1` only
  registers and unregisters the calling process in the collectors' table.
  """

  alias ChurchAdmin.Realtime.Live.StatementCapture.Collectors

  @spec capture((-> result)) :: {result, [String.t()]} when result: term()
  def capture(fun) do
    ref = Collectors.register()

    try do
      fun.()
    catch
      kind, reason ->
        stacktrace = __STACKTRACE__
        stop(ref)
        :erlang.raise(kind, reason, stacktrace)
    else
      result -> {result, stop(ref)}
    end
  end

  defp stop(ref) do
    Collectors.unregister(ref)
    drain(ref, [])
  end

  defp drain(ref, statements) do
    receive do
      {Collectors, ^ref, sql} -> drain(ref, [sql | statements])
    after
      0 -> Enum.reverse(statements)
    end
  end
end
