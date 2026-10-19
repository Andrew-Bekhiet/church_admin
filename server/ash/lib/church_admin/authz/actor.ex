defmodule ChurchAdmin.Authz.Actor do
  @moduledoc """
  The Ash actor for every request, job and internal call. A request actor
  carries the verified `principal` and its `uid` (nil until onboarded); the
  system actor (`system/0`) stands for jobs and internal calls.
  """

  alias ChurchAdmin.Auth.Principal

  defstruct [:uid, :principal, system?: false]

  @type t :: %__MODULE__{
          uid: String.t() | nil,
          principal: Principal.t() | nil,
          system?: boolean()
        }

  @spec system() :: t()
  def system, do: %__MODULE__{system?: true}

  @spec for_principal(Principal.t()) :: t()
  def for_principal(%Principal{} = principal),
    do: %__MODULE__{uid: principal.uid, principal: principal}
end
