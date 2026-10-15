part of 'person_save_outcome.dart';

final class PersonSaveFailed extends PersonSaveOutcome {
  final Object error;
  final StackTrace stackTrace;
  final Person attemptedPerson;

  const PersonSaveFailed({
    required this.error,
    required this.stackTrace,
    required this.attemptedPerson,
  });
}
