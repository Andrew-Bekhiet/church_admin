import 'package:church_admin/church_admin.dart';

/// Tracks live attendance records from the server plus pending optimistic marks.
///
/// Optimistic flow: `markPending` → user sees instant feedback → `applyServerRecords`
/// reconciles and removes the pending mark. `rollback` removes it on error.
final class LiveAttendance {
  Map<(String personId, bool asServant), AttendanceRecord>
  _attendanceRecordsByKey = {};
  Map<String, DateTime?> _optimisticPresence = {};
  Set<String> _inFlight = {};

  LiveAttendance();

  bool isInFlight(String personId) => _inFlight.contains(personId);

  void beginInFlight(String personId) => _inFlight.add(personId);

  void endInFlight(String personId) => _inFlight.remove(personId);

  bool isOptimistic(String personId) =>
      _optimisticPresence.containsKey(personId);

  /// Marks [personId] as optimistically present at [time], or absent when [time] is null.
  void markOptimistic(String personId, DateTime? time) {
    _optimisticPresence[personId] = time;
  }

  void rollbackOptimistic(String personId) =>
      _optimisticPresence.remove(personId);

  void refreshWithServerRecords(List<AttendanceRecord> records) {
    _attendanceRecordsByKey = {
      for (final record in records) (record.personId, record.asServant): record,
    };

    // Only drop an optimistic mark once the server confirms it — i.e. when
    // the server record agrees with the optimistic state. A stale subscription
    // snapshot (one that predates the committed INSERT/DELETE) would otherwise
    // clear the mark early and flash the person to the wrong sort position.
    _optimisticPresence.removeWhere((personId, optimisticTime) {
      if (_inFlight.contains(personId)) return false;

      final serverHasRecord = records.any((r) => r.personId == personId);
      return optimisticTime != null ? serverHasRecord : !serverHasRecord;
    });
  }

  /// Returns the effective attendance for [personId]/[asServant], giving
  /// priority to pending optimistic state. Uses [meetingId] as a placeholder
  /// id for optimistic-present records (real id arrives with server echo).
  AttendanceRecord? effectiveAttendanceRecord({
    required String meetingId,
    required String personId,
    required bool asServant,
  }) {
    if (_optimisticPresence.containsKey(personId)) {
      final time = _optimisticPresence[personId];
      if (time == null) return null; // optimistic absence

      return AttendanceRecord(
        id: meetingId,
        meetingId: meetingId,
        personId: personId,
        datetime: time,
        asServant: asServant,
      );
    }

    return _attendanceRecordsByKey[(personId, asServant)];
  }

  void reset() {
    _optimisticPresence = {};
    _inFlight = {};
  }
}
