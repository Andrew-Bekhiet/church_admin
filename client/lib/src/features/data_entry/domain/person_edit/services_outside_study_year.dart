part of 'person_rule_violation.dart';

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
