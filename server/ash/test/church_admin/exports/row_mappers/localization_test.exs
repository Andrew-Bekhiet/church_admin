defmodule ChurchAdmin.Exports.RowMappers.LocalizationTest do
  use ExUnit.Case, async: true

  alias ChurchAdmin.Exports.RowMappers.Localization

  @cases [
    {"name", "الاسم"},
    {"id", "id"},
    {"uid", "uid"},
    {"unknown", "unknown"},
    {"address.area.name", "العنوان: المنطقة"},
    {"address.houseCode", "العنوان: رقم العمارة"},
    {"address.area.id", "address.area.id"},
    {"lastEdit.name", "أخر تحديث البيانات"},
    {"lastEdit.time", "أخر تحديث البيانات: الوقت"},
    {"lastEdit.uid", "lastEdit.uid"},
    {"studyYearFrom.name", "السنة الدراسية: من"},
    {"studyYearFrom.order", "السنة الدراسية: من: الترتيب"},
    {"personType.order", "نوع الفرد في العائلة: الترتيب"},
    {"otherPhones.رقم الهاتف 1", "أرقام الهواتف الأخرى: رقم الهاتف 1"},
    {"رقم الهاتف (الأب)", "رقم الهاتف (الأب)"},
    {"mainPhone", "رقم الهاتف"}
  ]

  for {key, localized} <- @cases do
    test "#{key} becomes #{localized}" do
      assert Localization.localize_key(unquote(key)) == unquote(localized)
    end
  end

  describe "localize/1" do
    test "localizes every key of a row, keeping order" do
      assert Localization.localize([{"name", "x"}, {"gender", "M"}, {"id", "1"}]) ==
               [{"الاسم", "x"}, {"النوع", "M"}, {"id", "1"}]
    end

    test "keeps the first position and the last value when two keys localize alike" do
      assert Localization.localize([{"state", "a"}, {"notes", "n"}, {"state.name", "b"}]) ==
               [{"الحالة الروحية", "b"}, {"ملاحظات", "n"}]
    end
  end
end
