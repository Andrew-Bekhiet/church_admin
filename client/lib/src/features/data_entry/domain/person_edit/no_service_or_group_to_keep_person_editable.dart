part of 'person_rule_violation.dart';

final class NoServiceOrGroupToKeepPersonEditable extends PersonRuleViolation {
  @override
  PersonRuleViolationSection get section =>
      PersonRuleViolationSection.memberships;

  @override
  String get message => 'يجب اختيار خدمة أو مجموعة';

  const NoServiceOrGroupToKeepPersonEditable();
}
