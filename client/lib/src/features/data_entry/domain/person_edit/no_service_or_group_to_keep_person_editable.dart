part of 'person_rule_violation.dart';

final class NoServiceOrGroupToKeepPersonEditable extends PersonRuleViolation {
  @override
  String get message => 'يجب اختيار خدمة أو مجموعة';

  const NoServiceOrGroupToKeepPersonEditable();
}
