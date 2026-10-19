import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final serviceWithMeetings = LiveQueryDependencies.ofResult(const {
    '__typename': 'Query',
    'service': {
      '__typename': 'Service',
      'id': 'service-1',
      'meetings': [
        {'__typename': 'Meeting', 'id': 'meeting-1'},
      ],
      'nextService': {'__typename': 'Service', 'id': 'service-2'},
    },
  });

  test('a record follows a new member of a list nested in it', () {
    const newMeeting = EntityChange(
      type: 'Meeting',
      id: 'meeting-2',
      op: 'insert',
    );

    expect(
      serviceWithMeetings.isAffectedBy(newMeeting, LiveQueryKind.entity),
      isTrue,
    );
  });

  test('a record ignores another record of a type it shows only singly', () {
    const otherService = EntityChange(
      type: 'Service',
      id: 'service-3',
      op: 'update',
    );

    expect(
      serviceWithMeetings.isAffectedBy(otherService, LiveQueryKind.entity),
      isFalse,
    );
  });

  test('a query with no result yet may be affected by any change', () {
    const anyChange = EntityChange(type: 'Family', id: 'f1', op: 'update');

    expect(
      LiveQueryDependencies.unknown.isAffectedBy(
        anyChange,
        LiveQueryKind.entity,
      ),
      isTrue,
    );
  });
}
