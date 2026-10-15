part of 'person_save_outcome.dart';

final class PersonSaved extends PersonSaveOutcome {
  final Person person;
  final bool movedOutOfSight;

  const PersonSaved({required this.person, required this.movedOutOfSight});
}
