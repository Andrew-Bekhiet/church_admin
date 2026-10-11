import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'key')
enum DataCheckRule {
  hasFamilyAdmin('has_family_admin', 'يوجد ولي أمر (أب أو أم)'),
  hasNonAdminMember(
    'has_non_admin_member',
    'يوجد فرد آخر غير ولي الأمر (ابن، ابنة…)',
  ),
  hasAddress('has_address', 'للعائلة عنوان'),
  hasArea('has_area', 'المنطقة محددة'),
  hasStreet('has_street', 'الشارع محدد'),
  hasSpecialLandmark('has_special_landmark', 'العلامة المميزة مكتوبة'),
  specialLandmarkIsShort(
    'special_landmark_is_short',
    'العلامة المميزة أقل من 50 حرف',
  ),
  specialLandmarkIsNotAFullAddress(
    'special_landmark_is_not_a_full_address',
    'العلامة المميزة ليست عنوانًا كاملًا منقولًا من النظام القديم',
  ),
  unknown('unknown', 'فحص غير معروف');

  final String key;
  final String label;

  const DataCheckRule(this.key, this.label);
}
