import 'package:church_admin/church_admin.dart';

sealed class PersonSaveOutcome {
  const PersonSaveOutcome();
}

final class InvalidPerson extends PersonSaveOutcome {
  const InvalidPerson();
}

final class MembershipsFailedToLoad extends PersonSaveOutcome {
  const MembershipsFailedToLoad();
}

final class MembershipsNotLoadedYet extends PersonSaveOutcome {
  const MembershipsNotLoadedYet();
}

final class MoveOutOfSightDeclined extends PersonSaveOutcome {
  const MoveOutOfSightDeclined();
}

final class PersonSaved extends PersonSaveOutcome {
  final Person person;
  final bool movedOutOfSight;

  const PersonSaved({required this.person, required this.movedOutOfSight});
}

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

final class SaveAbandonedBecauseFormWasDisposed extends PersonSaveOutcome {
  const SaveAbandonedBecauseFormWasDisposed();
}

final class SaveAlreadyInProgress extends PersonSaveOutcome {
  const SaveAlreadyInProgress();
}
