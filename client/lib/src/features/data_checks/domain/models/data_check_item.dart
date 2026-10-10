import 'package:church_admin/church_admin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_check_item.g.dart';

@JsonSerializable()
class DataCheckItem {
  @JsonKey(unknownEnumValue: DataCheckGroup.other)
  final DataCheckGroup group;

  final String check;

  final bool passed;

  String get label => switch (check) {
    'has_family_admin' => 'يوجد ولي أمر (أب أو أم)',
    'has_non_admin_member' => 'يوجد فرد آخر غير ولي الأمر (ابن، ابنة…)',
    'has_address' => 'للعائلة عنوان',
    'has_area' => 'المنطقة محددة',
    'has_street' => 'الشارع محدد',
    'has_special_landmark' => 'العلامة المميزة مكتوبة',
    'special_landmark_is_short' => 'العلامة المميزة أقل من 50 حرف',
    'special_landmark_is_not_a_full_address' =>
      'العلامة المميزة ليست عنوانًا كاملًا منقولًا من النظام القديم',
    _ => check,
  };

  const DataCheckItem({
    required this.group,
    required this.check,
    required this.passed,
  });

  factory DataCheckItem.fromJson(Map<String, Object?> json) =>
      _$DataCheckItemFromJson(json);

  Map<String, dynamic> toJson() => _$DataCheckItemToJson(this);
}
