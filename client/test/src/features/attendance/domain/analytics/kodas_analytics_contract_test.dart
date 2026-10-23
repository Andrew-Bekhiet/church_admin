import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const serviceMeeting = Meeting(
    id: 'meeting-1',
    name: 'اجتماع الخدمة',
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
    serviceId: 'service-1',
  );
  const groupMeeting = Meeting(
    id: 'meeting-2',
    name: 'اجتماع المجموعة',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
    groupId: 'group-1',
  );
  const standaloneMeeting = Meeting(
    id: 'meeting-3',
    name: 'اجتماع عام',
    audience: MeetingAudience.onlyServants,
    isArchived: false,
  );

  group('Kodas analytics contract =>', () {
    for (final (event, expectedName, expectedProperties)
        in <(AnalyticsEvent, String, Json)>[
          (
            KodasColumnToggle(
              serviceMeeting,
              isVisible: false,
              isSuccess: true,
            ),
            'kodas:column_toggle',
            {
              'meeting_id': 'meeting-1',
              'service_id': 'service-1',
              'is_visible': false,
              'is_success': true,
            },
          ),
          (
            KodasPersonMark(
              groupMeeting,
              personId: 'person-5',
              isRecorded: true,
              isSuccess: false,
            ),
            'kodas:person_mark',
            {
              'meeting_id': 'meeting-2',
              'group_id': 'group-1',
              'person_id': 'person-5',
              'is_recorded': true,
              'is_success': false,
            },
          ),
          (
            KodasUndo(
              standaloneMeeting,
              personId: 'person-6',
              undoneChange: AttendanceUndoableChange.kodasRecorded,
            ),
            'kodas:undo',
            {
              'meeting_id': 'meeting-3',
              'person_id': 'person-6',
              'undone_change': 'kodasRecorded',
            },
          ),
        ]) {
      test('$expectedName sends $expectedProperties', () {
        expect(
          event,
          isA<AnalyticsEvent>()
              .having((event) => event.name, 'name', expectedName)
              .having(
                (event) => event.properties,
                'properties',
                expectedProperties,
              ),
        );
      });
    }
  });
}
