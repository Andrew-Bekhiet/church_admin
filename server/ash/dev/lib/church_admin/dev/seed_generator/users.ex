defmodule ChurchAdmin.Dev.SeedGenerator.Users do
  @moduledoc """
  The seeded accounts: the matrix kinds, the pending invitees, and servants
  filling the scale's user target.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Ids, Names, UserMatrix}
  alias ChurchAdmin.Dev.SeedSpec

  @email_domain "seed.church-admin.test"

  @type t :: %{
          index: non_neg_integer(),
          key: String.t(),
          uid: String.t(),
          name: String.t(),
          email: String.t(),
          auth_id: String.t() | nil,
          male?: boolean(),
          pending?: boolean(),
          kind: UserMatrix.kind()
        }

  @spec email_domain() :: String.t()
  def email_domain, do: @email_domain

  @spec build(SeedSpec.scale()) :: [t()]
  def build(scale) do
    pending = UserMatrix.pending_kinds()
    fillers = fillers(SeedSpec.user_count(scale) - length(UserMatrix.kinds()) - length(pending))

    users =
      (UserMatrix.kinds() ++ pending ++ fillers)
      |> Enum.with_index()
      |> Enum.map(fn {kind, index} ->
        pending? = kind in pending
        male? = rem(index, 2) == 0

        %{
          index: index,
          key: kind.key,
          uid: Ids.uuid("user", kind.key),
          name: Names.user_person_name(male?, index),
          email: "#{String.replace(kind.key, "_", "-")}@#{@email_domain}",
          auth_id: if(pending?, do: nil, else: Ids.auth_id(kind.key)),
          male?: male?,
          pending?: pending?,
          kind: kind
        }
      end)

    names = Enum.map(users, & &1.name)
    if names != Enum.uniq(names), do: raise("seeded user names must be unique")
    users
  end

  defp fillers(count) when count <= 0, do: []

  defp fillers(count) do
    for number <- 1..count do
      %{
        key: "member_#{number}",
        permissions: ~w(approved),
        person: :standalone,
        grants: [],
        filler?: true
      }
    end
  end
end
