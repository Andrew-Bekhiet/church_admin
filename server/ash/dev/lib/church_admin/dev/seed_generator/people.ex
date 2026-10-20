defmodule ChurchAdmin.Dev.SeedGenerator.People do
  @moduledoc """
  Turns family member plans, store members and the servants linked to user
  accounts into exactly `spec.persons` persons.
  """

  alias ChurchAdmin.Dev.SeedGenerator.{Clock, Ids, Names, Rng, Sql}
  alias ChurchAdmin.Dev.SeedGenerator.People.{Linking, Plan}

  @type person :: %{
          id: String.t(),
          row: map(),
          family_index: non_neg_integer() | nil,
          store_index: non_neg_integer() | nil,
          type: atom() | nil,
          male?: boolean(),
          study_year: integer() | nil,
          user_key: String.t() | nil
        }

  @type_names %{
    father: "أب",
    mother: "أم",
    son: "ابن",
    daughter: "ابنة",
    grandfather: "جد",
    grandmother: "جدة"
  }
  @member_types [:father, :mother, :son, :daughter, :grandfather, :grandmother]
  @male_types [:father, :son, :grandfather]
  @study_year_weights [
    {-4, 2},
    {-3, 2},
    {-2, 3},
    {-1, 4},
    {0, 4},
    {1, 8},
    {2, 8},
    {3, 8},
    {4, 8},
    {5, 8},
    {6, 8},
    {7, 6},
    {8, 6},
    {9, 6},
    {10, 5},
    {11, 5},
    {12, 5},
    {13, 3},
    {14, 3},
    {15, 2},
    {16, 2},
    {17, 1}
  ]
  @shammas_levels ["ابصالتس", "اغأناغنوستيس", "أيبودياكون", "دياكون", "أرشيدياكون"]
  @service_types ["خدمة مدارس الأحد", "خدمة الشباب", "خدمة الألحان"]
  @members_per_store 2

  @spec build(map(), [map()], [map()], [map()], map(), String.t()) :: %{
          persons: [person()],
          person_tags: [map()],
          person_hobbies: [map()]
        }
  def build(spec, families, stores, users, lookups, deleted_by) do
    standalone_users = Enum.filter(users, &(&1.kind.person == :standalone))

    family_member_target =
      spec.persons - length(standalone_users) - @members_per_store * length(stores)

    planned =
      families
      |> Plan.fit(family_member_target)
      |> Linking.link(users)

    family_persons =
      for {family, members} <- planned, member <- members, do: {family, member}

    persons =
      family_persons
      |> Enum.map(fn {family, member} -> family_person(family, member, lookups, deleted_by) end)
      |> Kernel.++(Enum.flat_map(stores, &store_persons(&1, lookups)))
      |> Kernel.++(Enum.map(standalone_users, &standalone_person(&1, lookups)))
      |> Enum.with_index()
      |> Enum.map(fn {person, number} -> finish(person, number) end)

    %{
      persons: persons,
      person_tags: links(persons, lookups.tags, "person_tag", 5, :tag_id),
      person_hobbies: links(persons, lookups.hobbies, "person_hobby", 4, :hobby_id)
    }
  end

  defp family_person(family, member, lookups, deleted_by) do
    type = member.type
    male? = type in @male_types
    adult? = type in [:father, :mother, :grandfather, :grandmother]
    study_year = if adult?, do: nil, else: member.force_study_year || child_study_year()
    user = member.user

    attributes =
      %{
        name: if(user, do: user.name, else: family_member_name(type, male?, family)),
        birthdate: birthdate(type, study_year),
        gender: male?,
        person_type_id: @type_names |> Map.fetch!(type) |> Sql.person_type(),
        martial_status: martial_status(type, family.status),
        family_id: family.id,
        study_year_id: study_year,
        uid: user && user.uid,
        deleted_at: if(member.deleted?, do: Clock.days_ago(30)),
        deleted_by: if(member.deleted?, do: deleted_by)
      }

    attributes
    |> person(adult?, study_year, lookups)
    |> Map.merge(%{
      family_index: family.index,
      type: type,
      male?: male?,
      user_key: user && user.key
    })
  end

  defp store_persons(store, lookups) do
    for slot <- 1..@members_per_store do
      male? = rem(store.index + slot, 2) == 0

      attributes = %{
        name:
          "#{Names.first(male?, store.index * 4 + slot)} #{Names.male(store.index + slot)} #{Names.last(store.index)}",
        birthdate: birthdate(:father, nil),
        gender: male?,
        martial_status: Rng.pick(["married", "single"]),
        store_id: store.id
      }

      attributes
      |> person(true, nil, lookups)
      |> Map.merge(%{store_index: store.index, type: nil, male?: male?})
    end
  end

  defp standalone_person(user, lookups) do
    attributes = %{
      name: user.name,
      birthdate: birthdate(:father, nil),
      gender: user.male?,
      martial_status: Rng.pick(["married", "single"]),
      uid: user.uid
    }

    attributes
    |> person(true, nil, lookups)
    |> Map.merge(%{type: nil, male?: user.male?, user_key: user.key})
  end

  defp person(attributes, adult?, study_year, lookups) do
    linked? = Map.get(attributes, :uid) != nil
    servant? = linked? or (adult? and Rng.chance?(0.08))

    shammas_level =
      if attributes.gender and (adult? or (study_year || 0) >= 8) and Rng.chance?(0.06),
        do: Rng.pick(@shammas_levels)

    row =
      Map.merge(
        %{
          is_shammas: shammas_level != nil,
          shammas_level_id:
            shammas_level &&
              Sql.raw(
                "(SELECT id FROM public.shammas_levels WHERE name = #{Sql.literal(shammas_level)})"
              ),
          is_servant: servant?,
          serving_church_id: if(servant?, do: Rng.pick(lookups.churches).id),
          service_type: if(servant?, do: Rng.pick(@service_types)),
          church_id: Rng.pick(lookups.churches).id,
          father_id: Rng.pick(lookups.fathers).id,
          state_id: if(Rng.chance?(0.03), do: Rng.pick(lookups.person_states).id),
          notes: if(Rng.chance?(0.04), do: "ملاحظات خاصة بالافتقاد")
        },
        study_or_work(adult?, study_year, lookups)
      )

    %{row: Map.merge(row, attributes), study_year: study_year}
  end

  defp study_or_work(true, _study_year, lookups) do
    %{
      work_status: Rng.weighted([{"employed", 60}, {"unemployed", 15}, {"retired", 25}]),
      job_id: Rng.pick(lookups.jobs).id,
      qualification_id: Rng.pick(lookups.qualifications).id,
      is_student: false
    }
  end

  defp study_or_work(false, study_year, lookups) when is_integer(study_year) do
    %{
      is_student: study_year >= 1,
      work_status: if(study_year >= 6, do: "student"),
      school_id: if(study_year in 1..12, do: Rng.pick(lookups.schools).id),
      college_id: if(study_year >= 13, do: Rng.pick(lookups.colleges).id)
    }
  end

  defp study_or_work(false, _study_year, _lookups), do: %{is_student: false}

  defp finish(%{row: row} = person, number) do
    id = Ids.uuid("person", number)

    person
    |> Map.merge(%{id: id, row: Map.put(row, :id, id)})
    |> Map.put_new(:family_index, nil)
    |> Map.put_new(:store_index, nil)
    |> Map.put_new(:user_key, nil)
  end

  defp child_study_year do
    if Rng.chance?(0.02), do: nil, else: Rng.weighted(@study_year_weights)
  end

  defp birthdate(type, study_year) do
    {low, high} =
      cond do
        type in [:grandfather, :grandmother] -> {1946, 1958}
        type in [:father, :mother] -> {1968, 1996}
        true -> child_birth_years(study_year)
      end

    year = Rng.int(low, high)
    Date.new!(year, Rng.int(1, 12), Rng.int(1, 28))
  end

  defp child_birth_years(nil), do: {2006, 2023}

  defp child_birth_years(study_year) do
    year = Clock.today().year - max(study_year + 5, 2)
    {year, year}
  end

  defp martial_status(type, _status) when type in [:son, :daughter], do: "single"

  defp martial_status(type, _status) when type in [:grandfather, :grandmother],
    do: Rng.pick(["widowed", "married"])

  defp martial_status(_parent, status), do: status

  defp family_member_name(type, male?, family) do
    first = Names.first(male?, family.index * 3 + Enum.find_index(@member_types, &(&1 == type)))

    second =
      if type in [:father, :grandfather],
        do: Names.male(family.index + 4),
        else: family.father_first_name

    "#{first} #{second} #{family.last_name}"
  end

  defp links(persons, targets, kind, every, column) do
    persons
    |> Enum.with_index()
    |> Enum.filter(fn {_person, index} -> rem(index, every) == 0 end)
    |> Enum.map(fn {person, index} ->
      %{
        :rel_id => Ids.uuid(kind, person.id),
        :person_id => person.id,
        column => Enum.at(targets, rem(index, length(targets))).id
      }
    end)
  end
end
