defmodule ChurchAdmin.Dev.SeedGenerator.Names do
  @moduledoc false

  @male ~w(مينا بيشوي كيرلس مرقس بولا يوسف أنطونيوس مايكل جورج أندرو مارك فادي رامي عماد سامح نبيل وليم ماجد هاني إيهاب شنودة بافلي يوأنس داود لوقا تادرس صموئيل مكسيموس أثناسيوس إسحق)
  @female ~w(مريم مارتينا ماريا إيرين فيرونيا يوستينا مونيكا ماري نورا سارة هدى ليديا دميانة كريستينا إيفون نيفين مرفت منى سوزان رحاب هبة كاترين أنجيلا تريزا أميرة دينا هايدي رانيا لولا جاكلين)
  @last ~w(جرجس عبد_المسيح فهمي شنودة بشاي ميخائيل لبيب سمعان رزق حنا عطا_الله إبراهيم موسى ويصا جابر فرج مسعد سلامة غبريال نصيف يعقوب زكريا مكرم عازر نجيب توفيق وهبة صادق إسكندر بطرس)

  @spec male(non_neg_integer()) :: String.t()
  def male(index), do: pick(@male, index)

  @spec female(non_neg_integer()) :: String.t()
  def female(index), do: pick(@female, index)

  @spec last(non_neg_integer()) :: String.t()
  def last(index), do: pick(@last, index)

  @spec first(boolean(), non_neg_integer()) :: String.t()
  def first(true, index), do: male(index)
  def first(false, index), do: female(index)

  @spec user_person_name(boolean(), non_neg_integer()) :: String.t()
  def user_person_name(male?, index) do
    "#{first(male?, index)} #{male(index * 3 + 1)} #{last(index + div(index, length(@male)))}"
  end

  defp pick(names, index),
    do: names |> Enum.at(rem(index, length(names))) |> String.replace("_", " ")
end
