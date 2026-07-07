import 'package:church_admin/church_admin.dart';

final class LiveAttendance {
  Map<(String personId, bool asServant), AttendanceRecord>
  _attendanceRecordsByKey = {};
  Map<(String personId, bool asServant), DateTime?> _optimisticPresence = {};
  Set<String> _inFlight = {};

  LiveAttendance();

  bool isInFlight(String personId) => _inFlight.contains(personId);

  void beginInFlight(String personId) => _inFlight.add(personId);

  void endInFlight(String personId) => _inFlight.remove(personId);

  bool isOptimistic(String personId, bool asServant) =>
      _optimisticPresence.containsKey((personId, asServant));

  void markOptimistic(String personId, bool asServant, DateTime? time) {
    _optimisticPresence[(personId, asServant)] = time;
  }

  void rollbackOptimistic(String personId, bool asServant) =>
      _optimisticPresence.remove((personId, asServant));

  void refreshWithServerRecords(List<AttendanceRecord> records) {
    _attendanceRecordsByKey = {
      for (final record in records) (record.personId, record.asServant): record,
    };

    // Only drop an optimistic mark once the server confirms it — i.e. when
    // the server record agrees with the optimistic state. A stale subscription
    // snapshot (one that predates the committed INSERT/DELETE) would otherwise
    // clear the mark early and flash the person to the wrong sort position.
    _optimisticPresence.removeWhere((key, optimisticTime) {
      final (personId, asServant) = key;
      if (_inFlight.contains(personId)) return false;

      final serverHasRecord = _attendanceRecordsByKey.containsKey(
        (personId, asServant),
      );
      return optimisticTime != null ? serverHasRecord : !serverHasRecord;
    });
  }

  AttendanceRecord? effectiveAttendanceRecord({
    required String meetingId,
    required String personId,
    required bool asServant,
  }) {
    final key = (personId, asServant);
    if (_optimisticPresence.containsKey(key)) {
      final time = _optimisticPresence[key];
      if (time == null) return null;

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
    _attendanceRecordsByKey = {};
    _optimisticPresence = {};
    _inFlight = {};
  }
}
