part 'address_change_blocked_by_move.dart';
part 'nothing_places_the_person.dart';
part 'no_service_or_group_to_keep_person_editable.dart';
part 'services_outside_study_year.dart';

sealed class PersonRuleViolation {
  String get message;

  const PersonRuleViolation();
}
