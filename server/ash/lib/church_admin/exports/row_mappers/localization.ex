defmodule ChurchAdmin.Exports.RowMappers.Localization do
  @moduledoc """
  The Arabic column headers. A dotted key is localized part by part and
  joined with `": "`, a trailing `.name` is dropped, and id keys (`….id`,
  `….uid`) stay as they are. Keys that localize alike collapse into one
  column that keeps the first position and the last value.
  """

  @headers %{
    "id" => "id",
    "name" => "الاسم",
    "bounds" => "الموقع",
    "color" => "اللون",
    "photoUpdatedAt" => "أخر تحديث للصورة",
    "users" => "الخدام المسؤلين",
    "families" => "العائلات",
    "stores" => "المتاجر",
    "streets" => "الشوارع",
    "persons" => "المخدومين",
    "line" => "الموقع",
    "areas" => "المناطق",
    "address" => "العنوان",
    "geolocation" => "الموقع",
    "notes" => "ملاحظات",
    "adminFamily" => "العائلة المسؤولة",
    "studyYearFrom" => "السنة الدراسية: من",
    "studyYearTo" => "السنة الدراسية: إلى",
    "nextService" => "الخدمة التالية",
    "class" => "الفصل",
    "classes" => "الفصول",
    "group" => "المجموعة",
    "groups" => "المجموعات",
    "service" => "الخدمة",
    "services" => "الخدمات",
    "studyYear" => "السنة الدراسية",
    "serviceGender" => "نوع المخدومين المسؤول عنهم",
    "person" => "بيانات المخدوم",
    "mainPhone" => "رقم الهاتف",
    "otherPhones" => "أرقام الهواتف الأخرى",
    "birthdate" => "تاريخ الميلاد",
    "birthday" => "يوم وشهر الميلاد",
    "isStudent" => "طالب؟",
    "college" => "الكلية",
    "school" => "المدرسة",
    "qualification" => "المؤهل",
    "workStatus" => "حالة العمل",
    "martialStatus" => "الحالة الاجتماعية",
    "marriageDate" => "تاريخ الزواج",
    "deceasedSpouseName" => "اسم الزوج المتوفي",
    "status" => "الحالة الروحية",
    "lastFatherVisit" => "أخر افتقاد للأب",
    "job" => "الوظيفة",
    "jobDescription" => "تفاصيل الوظيفة",
    "gender" => "النوع",
    "personType" => "نوع الفرد في العائلة",
    "isShammas" => "شماس؟",
    "shammasLevel" => "رتبة الشموسية",
    "church" => "الكنيسة",
    "confessionFather" => "اب الاعتراف",
    "servingChurch" => "الكنيسة التي يخدم بها",
    "servingType" => "نوع الخدمة",
    "isServant" => "خادم؟",
    "state" => "الحالة الروحية",
    "hobby" => "الهواية",
    "hobbies" => "الهوايات",
    "tag" => "الشارة",
    "tags" => "الشارات",
    "district" => "الحي",
    "districts" => "الأحياء السكنية",
    "substreetName" => "الشارع الفرعي",
    "storeyNumber" => "رقم الدور",
    "apartmentNumber" => "رقم الشقة",
    "houseCode" => "رقم العمارة",
    "specialLandmark" => "علامة مميزة",
    "area" => "المنطقة",
    "street" => "الشارع",
    "family" => "العائلة",
    "store" => "المتجر",
    "recordedByUser" => "الخادم الذي سجل",
    "user" => "بيانات الخادم",
    "order" => "الترتيب",
    "time" => "الوقت",
    "lastAttendance" => "أخر حضور",
    "lastEdit" => "أخر تحديث البيانات",
    "lastKodas" => "أخر تناول",
    "lastConfession" => "أخر اعتراف",
    "lastVisit" => "أخر افتقاد",
    "lastCall" => "أخر مكالمات",
    "serviceStudyYear" => "السنة الدراسية"
  }

  @id_key ~r/\.u?id$/

  @spec localize([{String.t(), term()}]) :: [{String.t(), term()}]
  def localize(row) do
    Enum.reduce(row, [], fn {key, value}, localized ->
      put_keeping_position(localized, localize_key(key), value)
    end)
  end

  @spec localize_key(String.t()) :: String.t()
  def localize_key(key) do
    if String.contains?(key, ".") and not Regex.match?(@id_key, key) do
      parts = key |> String.split(".") |> Enum.map(&localize_key/1)
      parts = if String.ends_with?(key, ".name"), do: Enum.drop(parts, -1), else: parts

      Enum.join(parts, ": ")
    else
      Map.get(@headers, key, key)
    end
  end

  defp put_keeping_position(row, key, value) do
    if List.keymember?(row, key, 0),
      do: List.keyreplace(row, key, 0, {key, value}),
      else: row ++ [{key, value}]
  end
end
