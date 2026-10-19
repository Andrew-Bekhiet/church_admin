import 'package:church_admin/church_admin.dart';

import '../../../../../fakes/fake_ash_tables_link.dart';

/// One entry of a history log as the Ash server stores it: [info] is what the
/// DAO has to show, [keys] the columns the log is filtered by.
class HistoryRow implements ToJson {
  final LastRecordedByInfo info;
  final Json keys;

  const HistoryRow(this.info, {this.keys = const {}});

  @override
  Json toJson() => {
    ...info.toJson(),
    'user': switch (info.user) {
      final user? => {...user.toJson(), 'id': user.uid, '__typename': 'User'},
      null => null,
    },
    ...keys,
  };
}

/// A history log of one person: the Ash type it holds, the DAO list that
/// shows it, and the server columns that tie an entry to [personId].
class HistoryLog {
  static const personId = 'person-1';
  static const otherPersonId = 'person-2';

  static const User recorder = User(uid: 'servant-1', name: 'خادم');

  static final List<HistoryLog> personLogs = [
    HistoryLog(
      typename: 'Edit',
      listRoot: 'edits',
      listing: (history, {required personId}) =>
          history.paginateEditHistory<Person>(id: personId),
      rowFor: (info, {required personId, required number}) => HistoryRow(
        info,
        keys: {'table': 'persons', 'recordId': personId},
      ),
    ),
    HistoryLog(
      typename: 'Visit',
      listRoot: 'visits',
      listing: (history, {required personId}) =>
          history.paginatePersonVisitHistory(personId: personId),
      rowFor: (info, {required personId, required number}) => HistoryRow(
        info,
        keys: {
          'id': 'visit-$number',
          'table': 'persons',
          'recordId': personId,
        },
      ),
    ),
    HistoryLog(
      typename: 'Call',
      listRoot: 'calls',
      listing: (history, {required personId}) =>
          history.paginatePersonCallHistory(personId: personId),
      rowFor: (info, {required personId, required number}) =>
          HistoryRow(info, keys: {'id': 'call-$number', 'personId': personId}),
    ),
    HistoryLog(
      typename: 'Confession',
      listRoot: 'confessions',
      listing: (history, {required personId}) =>
          history.paginatePersonConfessionHistory(personId: personId),
      rowFor: (info, {required personId, required number}) => HistoryRow(
        info,
        keys: {'id': 'confession-$number', 'personId': personId},
      ),
    ),
    HistoryLog(
      typename: 'Kodas',
      listRoot: 'kodases',
      listing: (history, {required personId}) =>
          history.paginatePersonKodasHistory(personId: personId),
      rowFor: (info, {required personId, required number}) =>
          HistoryRow(info, keys: {'id': 'kodas-$number', 'personId': personId}),
    ),
  ];

  /// Entries recorded on consecutive days from 2026-01-01, as many as asked.
  static List<LastRecordedByInfo> entries(int count) => [
    for (var day = 1; day <= count; day++)
      LastRecordedByInfo(
        time: DateTime(2026, 1, day),
        recordedBy: recorder.uid,
        user: recorder,
      ),
  ];

  final String typename;
  final String listRoot;
  final PaginatableStreamBase<LastRecordedByInfo> Function(
    HistoryDAO history, {
    required String personId,
  })
  listing;
  final HistoryRow Function(
    LastRecordedByInfo info, {
    required String personId,
    required int number,
  })
  rowFor;

  HistoryLog({
    required this.typename,
    required this.listRoot,
    required this.listing,
    required this.rowFor,
  });

  FakeAshTable table({
    required List<LastRecordedByInfo> ofPerson,
    List<LastRecordedByInfo> ofOtherPerson = const [],
  }) => FakeAshTable(
    typename: typename,
    listRoot: listRoot,
    rows: [
      for (final (number, info) in ofPerson.indexed)
        rowFor(info, personId: personId, number: number),
      for (final (number, info) in ofOtherPerson.indexed)
        rowFor(info, personId: otherPersonId, number: 1000 + number),
    ],
  );
}
