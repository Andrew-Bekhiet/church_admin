import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final person = Person(id: 'person-1', name: 'مينا');
  const family = Family(id: 'family-1', name: 'عائلة');

  final contracts = <({AnalyticsEvent event, String name, Json properties})>[
    for (final (kind, sent) in [
      (HistoryKind.kodas, 'kodas'),
      (HistoryKind.confession, 'confession'),
      (HistoryKind.visit, 'visit'),
      (HistoryKind.fatherVisit, 'fatherVisit'),
      (HistoryKind.call, 'call'),
    ])
      (
        event: HistoryRecordNowTap(TrackedHistory(kind, person)),
        name: 'history:record_now_tap',
        properties: {
          'history_kind': sent,
          'entity_type': 'person',
          'person_id': person.id,
        },
      ),
    (
      event: HistoryRecordNowTap(
        const TrackedHistory(HistoryKind.visit, family),
      ),
      name: 'history:record_now_tap',
      properties: {
        'history_kind': 'visit',
        'entity_type': 'family',
        'family_id': family.id,
      },
    ),
    (
      event: HistoryDialogOpen(TrackedHistory(HistoryKind.edit, person)),
      name: 'history:dialog_open',
      properties: {
        'history_kind': 'edit',
        'entity_type': 'person',
        'person_id': person.id,
      },
    ),
  ];

  for (final (:event, :name, :properties) in contracts) {
    test('$name sends $properties', () {
      expect(event.name, name);
      expect(event.properties, properties);
    });
  }
}
