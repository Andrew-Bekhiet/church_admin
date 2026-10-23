import 'package:church_admin/church_admin.dart';

enum ObjectSaveResult {
  saved,
  savedButPhotoFailed,
  failed,
  invalid,
  moveOutOfSightDeclined,
  membershipsNotLoadedYet,
  membershipsFailedToLoad,
  abandoned;

  static ObjectSaveResult? ofPersonOutcome(PersonSaveOutcome outcome) =>
      switch (outcome) {
        PersonSaved() => saved,
        PersonSavedButPhotoFailed() => savedButPhotoFailed,
        PersonSaveFailed() => failed,
        InvalidPerson() => invalid,
        MoveOutOfSightDeclined() => moveOutOfSightDeclined,
        MembershipsNotLoadedYet() => membershipsNotLoadedYet,
        MembershipsFailedToLoad() => membershipsFailedToLoad,
        SaveAbandonedBecauseFormWasDisposed() => abandoned,
        SaveAlreadyInProgress() => null,
      };

  static ObjectSaveResult? ofObjectOutcome<T>(ObjectSaveOutcome<T> outcome) =>
      switch (outcome) {
        ObjectSaved() => saved,
        ObjectSavedButPhotoFailed() => savedButPhotoFailed,
        ObjectSaveFailed() => failed,
        InvalidObject() => invalid,
        ObjectMoveOutOfSightDeclined() => moveOutOfSightDeclined,
        ObjectSaveAbandonedBecauseEditorClosed() => abandoned,
        ObjectSaveAlreadyInProgress() => null,
      };
}
