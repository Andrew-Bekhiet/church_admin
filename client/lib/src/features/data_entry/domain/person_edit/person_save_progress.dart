sealed class PersonSaveProgress {
  const PersonSaveProgress();
}

final class AwaitingMoveConfirmation extends PersonSaveProgress {
  const AwaitingMoveConfirmation();
}

final class NotSaving extends PersonSaveProgress {
  const NotSaving();
}

final class SavingPerson extends PersonSaveProgress {
  const SavingPerson();
}

final class UploadingPhoto extends PersonSaveProgress {
  final double? progress;

  const UploadingPhoto({this.progress});
}
