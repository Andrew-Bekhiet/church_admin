sealed class AttendanceSaveTracking {
  const AttendanceSaveTracking();

  void trackOutcome({required bool isSaved}) {
    if (this case TrackedAttendanceSave(:final track)) {
      track(isSaved: isSaved);
    }
  }
}

final class TrackedAttendanceSave extends AttendanceSaveTracking {
  final void Function({required bool isSaved}) track;

  const TrackedAttendanceSave(this.track);
}

final class UntrackedAttendanceSave extends AttendanceSaveTracking {
  const UntrackedAttendanceSave();
}
