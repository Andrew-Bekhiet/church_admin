defmodule ChurchAdmin.PersonWrites do
  @moduledoc """
  The person writes the persons and contacts behaviour tests drive, as an
  actor: create and update with the desired memberships (`services`,
  `groups`, `tags`, `hobbies`: id lists), own `contacts` and the family's
  unclaimed `family_contacts` (maps; `id` optional), archive and hard delete.
  A list left out is not touched. Every call is one transaction whose
  deferred checks run at its end, and answers `{:ok, id}` or `{:error, code}`
  with a `ChurchAdmin.Errors.Codes` code, so a scenario reads the same
  whatever carries it out.
  """

  alias ChurchAdmin.Errors.Codes
  alias ChurchAdmin.Repo
  alias ChurchAdmin.Repo.HasuraSession

  @lists [:services, :groups, :tags, :hobbies, :contacts, :family_contacts]

  @memberships %{
    services: {"persons_services", :service_id},
    groups: {"persons_groups", :group_id},
    tags: {"persons_tags", :tag_id},
    hobbies: {"persons_hobbies", :hobby_id}
  }

  @messages %{
    "Person must have at least one of (family, store, service, group, uid)" =>
      Codes.person_container_required(),
    "Person study_year does not match service study_year_range" =>
      Codes.person_study_year_outside_service(),
    "Person must be in the group parent service to be inserted in the group" =>
      Codes.person_group_outside_service(),
    "person/user-link-not-permitted" => Codes.person_user_link_not_permitted(),
    "Permission denies inserting person" => Codes.forbidden(),
    "users_data_name_key" => Codes.user_name_taken(),
    "contacts_person_id_phone_key" => Codes.contact_phone_taken(),
    "contacts_unclaimed_phone_key" => Codes.contact_phone_taken()
  }

  def create_person(actor, attrs) do
    {lists, columns} = Map.split(attrs, @lists)

    transact(actor, fn ->
      id = insert!("persons", Map.put_new_lazy(columns, :id, &Ash.UUID.generate/0))
      {contacts, lists} = Map.pop(lists, :contacts, [])
      for contact <- contacts, do: insert!("contacts", Map.put(contact, :person_id, id))
      apply_lists!(id, lists)
      id
    end)
  end

  def update_person(actor, id, attrs) do
    {lists, columns} = Map.split(attrs, @lists)

    transact(actor, fn ->
      update!(id, columns)
      apply_lists!(id, lists)
      id
    end)
  end

  def delete_person(actor, id), do: delete(actor, id)
  def hard_delete_person(actor, id), do: delete(actor, id)

  defp delete(actor, id) do
    transact(actor, fn ->
      Repo.query!("delete from persons where id = $1::text::uuid", [id])
      id
    end)
  end

  defp apply_lists!(person_id, lists) do
    for {list, {table, column}} <- @memberships, Map.has_key?(lists, list) do
      replace_memberships!(table, column, person_id, Map.fetch!(lists, list))
    end

    if Map.has_key?(lists, :contacts), do: replace_own_contacts!(person_id, lists.contacts)

    if Map.has_key?(lists, :family_contacts),
      do: replace_family_contacts!(person_id, lists.family_contacts)
  end

  defp replace_memberships!(table, column, person_id, wanted) do
    current =
      "select #{column}::text from #{table} where person_id = $1::text::uuid"
      |> Repo.query!([person_id])
      |> Map.fetch!(:rows)
      |> List.flatten()

    for id <- Enum.uniq(wanted) -- current do
      Repo.query!(
        "insert into #{table} (person_id, #{column}) values ($1::text::uuid, $2::text::uuid)",
        [person_id, id]
      )
    end

    for id <- current -- wanted do
      Repo.query!(
        "delete from #{table} where person_id = $1::text::uuid and #{column} = $2::text::uuid",
        [person_id, id]
      )
    end
  end

  defp replace_own_contacts!(person_id, wanted) do
    current = contacts!("person_id = $1::text::uuid", [person_id])
    replace_contacts!(current, wanted, &{&1["phone"], nil}, %{person_id: person_id})
  end

  defp replace_family_contacts!(person_id, wanted) do
    [[family_id]] =
      Repo.query!("select family_id::text from persons where id = $1::text::uuid", [person_id]).rows

    current = contacts!("family_id = $1::text::uuid and person_id is null", [family_id])
    wanted = Enum.map(wanted, &Map.put(&1, :family_id, family_id))
    replace_contacts!(current, wanted, &{&1["phone"], &1["person_type_id"]}, %{})
  end

  defp replace_contacts!(current, wanted, key_of, owner) do
    by_id = Map.new(current, &{&1["id"], &1})
    by_key = Map.new(current, &{key_of.(&1), &1})

    matched =
      Enum.map(wanted, fn contact ->
        existing =
          by_id[contact[:id]] ||
            by_key[{contact.phone, contact[:person_type_id]}]

        {contact, existing}
      end)

    kept = for {_contact, %{"id" => id}} <- matched, do: id

    for %{"id" => id} <- current, id not in kept do
      Repo.query!("delete from contacts where id = $1::text::uuid", [id])
    end

    for {contact, existing} <- matched do
      fields = Map.take(contact, [:phone, :label, :is_main_phone])

      if existing,
        do: update_where!("contacts", existing["id"], fields),
        else: insert!("contacts", Map.merge(Map.drop(contact, [:id]), owner))
    end
  end

  defp contacts!(where, params) do
    result =
      Repo.query!(
        "select id::text, phone::text, person_type_id::text from contacts where #{where}",
        params
      )

    Enum.map(result.rows, fn row -> Map.new(Enum.zip(result.columns, row)) end)
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
  rescue
    error in Postgrex.Error -> {:error, code_of(error.postgres)}
  end

  defp fire_fixtures_deferred_checks! do
    ChurchAdmin.DataCase.set_system_db_session()
    Repo.query!("set constraints all immediate")
    Repo.query!("set constraints all deferred")
  end

  defp code_of(%{message: message} = postgres) do
    Enum.find_value(@messages, message, fn {text, code} ->
      if String.starts_with?(message, text) or postgres[:constraint] == text, do: code
    end)
  end

  defp insert!(table, attrs) do
    attrs = Map.put_new_lazy(attrs, :id, &Ash.UUID.generate/0)
    columns = Map.keys(attrs)

    placeholders =
      columns |> Enum.with_index(1) |> Enum.map(fn {name, i} -> placeholder(name, i) end)

    Repo.query!(
      "insert into #{table} (#{Enum.join(columns, ", ")}) values (#{Enum.join(placeholders, ", ")})",
      Enum.map(columns, &Map.fetch!(attrs, &1))
    )

    attrs.id
  end

  defp update!(id, columns) when columns == %{},
    do: Repo.query!("update persons set id = id where id = $1::text::uuid", [id])

  defp update!(id, columns), do: update_where!("persons", id, columns)

  defp update_where!(table, id, columns) do
    names = Map.keys(columns)

    assignments =
      names
      |> Enum.with_index(2)
      |> Enum.map_join(", ", fn {name, i} -> "#{name} = #{placeholder(name, i)}" end)

    Repo.query!(
      "update #{table} set #{assignments} where id = $1::text::uuid",
      [id | Enum.map(names, &Map.fetch!(columns, &1))]
    )
  end

  defp placeholder(name, position) do
    if name in [:id, :uid] or
         (String.ends_with?(Atom.to_string(name), "_id") and
            name != :study_year_id),
       do: "$#{position}::text::uuid",
       else: "$#{position}"
  end
end
