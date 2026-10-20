defmodule ChurchAdmin.Dev.SeedGenerator.Lookups do
  @moduledoc """
  Lookup rows beyond the reference seed (churches, fathers, schools, ...), with
  fixed ids so persons can point at them.
  """

  alias ChurchAdmin.Dev.SeedGenerator.Ids

  @tables %{
    churches: ~w(كنيسة_العذراء كنيسة_مارجرجس كنيسة_الملاك_ميخائيل كنيسة_الأنبا_أنطونيوس),
    universities: ~w(جامعة_القاهرة جامعة_عين_شمس جامعة_حلوان),
    schools: ~w(مدرسة_الراهبات مدرسة_النصر مدرسة_الجمهورية مدرسة_السلام مدرسة_الفرير),
    jobs: ~w(مهندس طبيب محاسب مدرس صيدلي محامي سائق موظف_حكومي تاجر فني),
    qualifications: ~w(ثانوية_عامة دبلوم بكالوريوس ماجستير دكتوراه),
    hobbies: ~w(كرة_القدم الموسيقى الرسم القراءة التصوير الألحان),
    tags: ~w(خدمة_مبكرة متابعة_خاصة ظروف_صحية متفوق مغترب مسافر)
  }

  @person_states [
    {"نشط", 4_283_215_696},
    {"منقطع", 4_294_198_070},
    {"مسافر", 4_278_228_616},
    {"متوفى", 4_286_141_768}
  ]

  @type t :: %{
          churches: [map()],
          fathers: [map()],
          universities: [map()],
          colleges: [map()],
          schools: [map()],
          jobs: [map()],
          qualifications: [map()],
          hobbies: [map()],
          tags: [map()],
          person_states: [map()]
        }

  @spec build() :: t()
  def build do
    churches = named(:churches)
    universities = named(:universities)

    %{
      churches: churches,
      fathers: fathers(churches),
      universities: universities,
      colleges: colleges(universities),
      schools: named(:schools),
      jobs: named(:jobs),
      qualifications: named(:qualifications),
      hobbies: :hobbies |> named() |> Enum.map(&Map.put(&1, :color, 4_280_391_411)),
      tags: :tags |> named() |> Enum.map(&Map.put(&1, :color, 4_288_423_856)),
      person_states:
        @person_states
        |> Enum.with_index()
        |> Enum.map(fn {{name, color}, index} ->
          %{id: Ids.uuid("person_state", index), name: name, color: color}
        end)
    }
  end

  defp named(table) do
    @tables
    |> Map.fetch!(table)
    |> Enum.with_index()
    |> Enum.map(fn {name, index} ->
      %{id: Ids.uuid(table, index), name: String.replace(name, "_", " ")}
    end)
  end

  defp fathers(churches) do
    names = ~w(أبونا_بيشوي أبونا_مينا أبونا_يوحنا أبونا_بولس أبونا_إبراهيم أبونا_داود)

    names
    |> Enum.with_index()
    |> Enum.map(fn {name, index} ->
      %{
        id: Ids.uuid("father", index),
        name: String.replace(name, "_", " "),
        church_id: Enum.at(churches, rem(index, length(churches))).id,
        is_hidden: false
      }
    end)
  end

  defp colleges(universities) do
    ~w(كلية_الهندسة كلية_الطب كلية_التجارة كلية_الآداب كلية_العلوم كلية_الصيدلة)
    |> Enum.with_index()
    |> Enum.map(fn {name, index} ->
      %{
        id: Ids.uuid("college", index),
        name: String.replace(name, "_", " "),
        university_id: Enum.at(universities, rem(index, length(universities))).id
      }
    end)
  end
end
