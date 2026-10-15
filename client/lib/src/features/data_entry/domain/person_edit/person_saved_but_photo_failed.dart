part of 'person_save_outcome.dart';

final class PersonSavedButPhotoFailed extends PersonSaveOutcome {
  final Person person;
  final bool movedOutOfSight;
  final Object error;
  final StackTrace stackTrace;

  const PersonSavedButPhotoFailed({
    required this.person,
    required this.movedOutOfSight,
    required this.error,
    required this.stackTrace,
  });
}
