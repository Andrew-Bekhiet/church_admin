sealed class ObjectSaveOutcome<T> {
  const ObjectSaveOutcome();
}

final class InvalidObject<T> extends ObjectSaveOutcome<T> {
  const InvalidObject();
}

final class ObjectNeedsMoveConfirmation<T> extends ObjectSaveOutcome<T> {
  const ObjectNeedsMoveConfirmation();
}

final class ObjectSaved<T> extends ObjectSaveOutcome<T> {
  final T object;
  final bool movedOutOfSight;

  const ObjectSaved({required this.object, required this.movedOutOfSight});
}

final class ObjectSavedButPhotoFailed<T> extends ObjectSaveOutcome<T> {
  final T object;
  final bool movedOutOfSight;
  final Object error;
  final StackTrace stackTrace;

  const ObjectSavedButPhotoFailed({
    required this.object,
    required this.movedOutOfSight,
    required this.error,
    required this.stackTrace,
  });
}

final class ObjectSaveFailed<T> extends ObjectSaveOutcome<T> {
  final Object error;
  final StackTrace stackTrace;
  final T attemptedObject;

  const ObjectSaveFailed({
    required this.error,
    required this.stackTrace,
    required this.attemptedObject,
  });
}

final class ObjectSaveAbandonedBecauseEditorClosed<T>
    extends ObjectSaveOutcome<T> {
  const ObjectSaveAbandonedBecauseEditorClosed();
}

final class ObjectSaveAlreadyInProgress<T> extends ObjectSaveOutcome<T> {
  const ObjectSaveAlreadyInProgress();
}
