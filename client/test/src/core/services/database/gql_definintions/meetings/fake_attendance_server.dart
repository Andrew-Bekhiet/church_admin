import 'package:church_admin/church_admin.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'meeting_fixtures.dart';

/// The attendance commands of the Ash server over an in-memory table: each
/// records, moves or removes a row as the signed-in [MeetingFixtures.servant]
/// and answers it in `result`.
class FakeAttendanceServer {
  final FakeAshTable records;

  int _recorded = 0;

  late final Map<String, FakeAshMutation> mutations = {
    'markAttendance': _markAttendance,
    'updateAttendanceTime': _updateAttendanceTime,
    'unmarkAttendance': _unmarkAttendance,
  };

  FakeAttendanceServer({Iterable<AttendanceRow> rows = const []})
    : records = MeetingFixtures.attendanceTable(rows);

  FakeAshBackend backend({List<FakeAshTable> otherTables = const []}) =>
      FakeAshBackend([records, ...otherTables], mutations: mutations);

  Json _markAttendance(Json variables) {
    final input = (variables['input'] as Map).cast<String, Object?>();
    final row = {
      'id': 'attendance-${++_recorded}',
      ...input,
      'asServant': input['asServant'] ?? false,
      'recordedBy': MeetingFixtures.servant.uid,
      'recordedByUser': MeetingFixtures.userJson(MeetingFixtures.servant),
      '__typename': 'AttendanceRecord',
    };
    records.rows.add(row);

    return row;
  }

  Json? _updateAttendanceTime(Json variables) => records.updateById(
    variables['id'] as String,
    (variables['input'] as Map).cast(),
  );

  Json? _unmarkAttendance(Json variables) =>
      records.deleteById(variables['id'] as String);
}
