import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import 'history_rows.dart';

/// The history commands of the Ash server over in-memory logs: each stores
/// the entry it is asked for, as the signed-in [HistoryLog.recorder], and
/// answers it in `result`.
class FakeHistoryServer {
  static const User signedIn = HistoryLog.recorder;

  final FakeAshTable visits = FakeAshTable(
    typename: 'Visit',
    listRoot: 'visits',
  );
  final FakeAshTable calls = FakeAshTable(typename: 'Call', listRoot: 'calls');
  final FakeAshTable confessions = FakeAshTable(
    typename: 'Confession',
    listRoot: 'confessions',
  );
  final FakeAshTable kodases = FakeAshTable(
    typename: 'Kodas',
    listRoot: 'kodases',
  );

  int _recorded = 0;

  List<FakeAshTable> get tables => [visits, calls, confessions, kodases];

  late final Map<String, FakeAshMutation> mutations = {
    'recordVisit': _recordVisit,
    'recordCall': _recordCall,
    'recordConfession': _recordConfession,
    'recordKodas': _recordKodas,
    'deleteKodas': _deleteKodas,
  };

  FakeAshBackend backend() => FakeAshBackend(tables, mutations: mutations);

  Json _input(Json variables) => (variables['input'] as Map).cast();

  Json _stamped(FakeAshTable table, Json fields) {
    final row = {
      'id': '${table.listRoot}-${++_recorded}',
      'recordedBy': signedIn.uid,
      'user': {
        ...signedIn.toJson(),
        'id': signedIn.uid,
        '__typename': 'User',
      },
      ...fields,
      '__typename': table.typename,
    };
    table.rows.add(row);

    return row;
  }

  Json _recordVisit(Json variables) {
    final input = _input(variables);

    return _stamped(visits, {
      'table': (input['subject'] as String).toLowerCase(),
      'recordId': input['recordId'],
      'time': input['time'],
      'isFatherVisit': input['isFatherVisit'] ?? false,
    });
  }

  Json _recordCall(Json variables) {
    final input = _input(variables);

    return _stamped(calls, {
      'personId': input['personId'],
      'time': input['time'],
    });
  }

  Json _recordConfession(Json variables) {
    final input = _input(variables);

    return _recordedOnDay(confessions, input);
  }

  Json _recordKodas(Json variables) =>
      _recordedOnDay(kodases, _input(variables));

  Json _recordedOnDay(FakeAshTable table, Json input) =>
      table.rows.firstWhereOrNull(
        (row) =>
            row['personId'] == input['personId'] &&
            row['dayId'] == input['day'],
      ) ??
      _stamped(table, {
        'personId': input['personId'],
        'dayId': input['day'],
        'time': input['day'],
      });

  Json? _deleteKodas(Json variables) {
    final index = kodases.rows.indexWhere(
      (row) => row['id'] == variables['id'],
    );

    return index < 0 ? null : kodases.rows.removeAt(index);
  }
}
