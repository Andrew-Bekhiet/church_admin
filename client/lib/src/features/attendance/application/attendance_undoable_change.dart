enum AttendanceUndoableChange {
  markedPresent,
  markedAbsent,
  kodasRecorded,
  kodasRemoved;

  String messageFor(String personName) => switch (this) {
    markedPresent => 'تم تسجيل حضور $personName',
    markedAbsent => 'تم إلغاء حضور $personName',
    kodasRecorded => 'تم تسجيل تناول $personName',
    kodasRemoved => 'تم إلغاء تناول $personName',
  };
}
