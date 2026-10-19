defmodule ChurchAdmin.FamilyWrites do
  @moduledoc """
  The family and store writes the families behaviour tests drive, as an
  actor: create and update a family with its `address` (a map) and its
  desired `parents` and `children` (id lists), archive and hard delete it,
  and create a store with its address. A list or address left out is not
  touched. Every call is one transaction whose deferred checks run at its
  end, and answers `{:ok, id}` or `{:error, code}` with a
  `ChurchAdmin.Errors.Codes` code, so a scenario reads the same whatever
  carries it out.
  """

  alias ChurchAdmin.Errors.{Codes, DomainError}
  alias ChurchAdmin.Places.Store
  alias ChurchAdmin.Repo
  alias ChurchAdmin.Repo.HasuraSession

  @nested [:address, :parents, :children]

  @messages %{
    "Permission denies inserting" => Codes.forbidden(),
    "You do not have permission to insert this address" => Codes.forbidden()
  }

  def create_family(actor, attrs) do
    {nested, columns} = Map.split(attrs, @nested)

    transact(actor, fn ->
      id = insert!("families", columns)
      if nested[:address], do: insert!("addresses", Map.put(nested.address, :family_id, id))
      apply_relations!(id, nested)
      id
    end)
  end

  def update_family(actor, id, attrs) do
    {nested, columns} = Map.split(attrs, @nested)

    transact(actor, fn ->
      update!("families", "id", id, columns)
      apply_relations!(id, nested)
      if nested[:address], do: write_address!(id, nested.address)
      id
    end)
  end

  def delete_family(actor, id), do: delete(actor, id)
  def hard_delete_family(actor, id), do: delete(actor, id)

  def create_store(actor, attrs) do
    transact(actor, fn ->
      Store
      |> Ash.Changeset.for_create(:create_store, attrs, actor: actor)
      |> Ash.create()
      |> case do
        {:ok, store} -> store.id
        {:error, error} -> Repo.rollback(error)
      end
    end)
  end

  defp delete(actor, id) do
    transact(actor, fn ->
      Repo.query!("delete from families where id = $1::text::uuid", [id])
      id
    end)
  end

  defp apply_relations!(family_id, nested) do
    if Map.has_key?(nested, :parents),
      do: replace_relations!(:child_family_id, :parent_family_id, family_id, nested.parents)

    if Map.has_key?(nested, :children),
      do: replace_relations!(:parent_family_id, :child_family_id, family_id, nested.children)
  end

  defp replace_relations!(own_column, other_column, family_id, wanted) do
    current =
      "select #{other_column}::text from families_families where #{own_column} = $1::text::uuid"
      |> Repo.query!([family_id])
      |> Map.fetch!(:rows)
      |> List.flatten()

    for other_id <- Enum.uniq(wanted) -- current do
      insert!("families_families", %{own_column => family_id, other_column => other_id}, :rel_id)
    end

    for other_id <- current -- wanted do
      Repo.query!(
        "delete from families_families where #{own_column} = $1::text::uuid and #{other_column} = $2::text::uuid",
        [family_id, other_id]
      )
    end
  end

  defp write_address!(family_id, address) do
    case Repo.query!("select 1 from addresses where family_id = $1::text::uuid", [family_id]) do
      %{rows: []} -> insert!("addresses", Map.put(address, :family_id, family_id))
      _existing -> update!("addresses", "family_id", family_id, address)
    end
  end

  defp transact(actor, fun) do
    fire_fixtures_deferred_checks!()

    Repo.transaction(fn ->
      HasuraSession.set_for_transaction(Repo, actor)
      result = fun.()
      Repo.query!("set constraints all immediate")
      Repo.query!("set constraints all deferred")
      result
    end)
    |> case do
      {:ok, id} -> {:ok, id}
      {:error, error} -> {:error, code_of(error)}
    end
  rescue
    error in Postgrex.Error -> {:error, message_code(error.postgres)}
  end

  defp fire_fixtures_deferred_checks! do
    ChurchAdmin.DataCase.set_system_db_session()
    Repo.query!("set constraints all immediate")
    Repo.query!("set constraints all deferred")
    forget_fixture_rows_as_inserted_in_this_transaction!()
  end

  defp forget_fixture_rows_as_inserted_in_this_transaction! do
    Repo.query!(
      "select set_config('church_admin.inserted_families', '', true), set_config('church_admin.inserted_persons', '', true)"
    )
  end

  defp code_of(error) do
    error
    |> Ash.Error.to_error_class()
    |> leaf_errors()
    |> Enum.find_value(fn
      %DomainError{code: code} -> code
      %Ash.Error.Forbidden.Policy{} -> Codes.forbidden()
      %Ash.Error.Forbidden{} -> Codes.forbidden()
      _error -> nil
    end) || Exception.message(Ash.Error.to_error_class(error))
  end

  defp leaf_errors(%{errors: [_ | _] = errors}), do: Enum.flat_map(errors, &leaf_errors/1)
  defp leaf_errors(error), do: [error]

  defp message_code(%{message: message}) do
    Enum.find_value(@messages, message, fn {text, code} ->
      if String.starts_with?(message, text), do: code
    end)
  end

  defp insert!(table, attrs, key \\ :id) do
    attrs = Map.put_new_lazy(attrs, key, &Ash.UUID.generate/0)
    columns = Map.keys(attrs)

    placeholders =
      columns |> Enum.with_index(1) |> Enum.map(fn {name, i} -> placeholder(name, i) end)

    Repo.query!(
      "insert into #{table} (#{Enum.join(columns, ", ")}) values (#{Enum.join(placeholders, ", ")})",
      Enum.map(columns, &Map.fetch!(attrs, &1))
    )

    Map.fetch!(attrs, key)
  end

  defp update!(table, key, id, columns) when columns == %{},
    do: Repo.query!("update #{table} set #{key} = #{key} where #{key} = $1::text::uuid", [id])

  defp update!(table, key, id, columns) do
    names = Map.keys(columns)

    assignments =
      names
      |> Enum.with_index(2)
      |> Enum.map_join(", ", fn {name, i} -> "#{name} = #{placeholder(name, i)}" end)

    Repo.query!(
      "update #{table} set #{assignments} where #{key} = $1::text::uuid",
      [id | Enum.map(names, &Map.fetch!(columns, &1))]
    )
  end

  defp placeholder(name, position) do
    if name in [:id, :rel_id] or String.ends_with?(Atom.to_string(name), "_id"),
      do: "$#{position}::text::uuid",
      else: "$#{position}"
  end
end
