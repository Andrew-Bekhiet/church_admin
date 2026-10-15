part of 'person_rule_violation.dart';

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
