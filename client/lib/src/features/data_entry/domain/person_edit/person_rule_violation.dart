import 'package:church_admin/church_admin.dart';

sealed class PersonRuleViolation {
  String get message;

  PersonRuleViolationSection get section;

  const PersonRuleViolation();
}

final class AddressChangeBlockedByMove extends PersonRuleViolation {
  @override
  PersonRuleViolationSection get section =>
      PersonRuleViolationSection.household;

  @override
  String get message =>
      'لا يمكن تعديل العنوان مع نقل المخدوم خارج نطاقك في نفس الحفظ. '
      'احفظ النقل أولاً أو تراجع عن تعديل العنوان';

  const AddressChangeBlockedByMove();
}

final class NothingPlacesThePerson extends PersonRuleViolation {
  @override
  PersonRuleViolationSection get section =>
      PersonRuleViolationSection.memberships;

  @override
  String get message =>
      'يجب تحديد على الأقل واحد من الآتي:\n'
      '(العنوان - العائلة - خدمة أو أكثر - مجموعة أو أكثر)';

  const NothingPlacesThePerson();
}

final class NoServiceOrGroupToKeepPersonEditable extends PersonRuleViolation {
  @override
  PersonRuleViolationSection get section =>
      PersonRuleViolationSection.memberships;

  @override
  String get message => 'يجب اختيار خدمة أو مجموعة';

  const NoServiceOrGroupToKeepPersonEditable();
}

final class ServicesOutsideStudyYear extends PersonRuleViolation {
  @override
  PersonRuleViolationSection get section =>
      PersonRuleViolationSection.memberships;

  @override
  String get message =>
      'بعض الخدمات لا تناسب السنة الدراسية للمخدوم'
      '\nيرجى تغيير السنة الدراسية او ازالة التحديد من احدى الخدمات';

  const ServicesOutsideStudyYear();
}
