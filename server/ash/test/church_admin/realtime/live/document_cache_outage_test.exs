defmodule ChurchAdmin.Realtime.Live.DocumentCacheOutageTest do
  use ExUnit.Case, async: false

  alias ChurchAdmin.Realtime.Live.Document
  alias ChurchAdmin.Realtime.Supervisor, as: RealtimeSupervisor

  test "a document still prepares while the cache's owner is down" do
    :ok = Supervisor.terminate_child(RealtimeSupervisor, Document.Cache)
    on_exit(fn -> Supervisor.restart_child(RealtimeSupervisor, Document.Cache) end)

    assert {:ok, %{root_field: "areas"}} = Document.prepare("{ areas { count } }", nil)
  end
end
