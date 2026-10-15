part of 'person_rule_violation.dart';

final class AddressChangeBlockedByMove extends PersonRuleViolation {
  @override
  String get message =>
      'لا يمكن تعديل العنوان مع نقل المخدوم خارج نطاقك في نفس الحفظ. '
      'احفظ النقل أولاً أو تراجع عن تعديل العنوان';

  const AddressChangeBlockedByMove();
}
