import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const serviceMeetingId = 'meeting-1';
  const serviceId = 'service-1';
  const groupMeetingId = 'meeting-2';
  const groupId = 'group-1';
  const standaloneMeetingId = 'meeting-3';
  const person5Id = 'person-5';
  const person6Id = 'person-6';
  const serviceMeeting = Meeting(
    id: serviceMeetingId,
    name: 'اجتماع الخدمة',
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
    serviceId: serviceId,
  );
  const groupMeeting = Meeting(
    id: groupMeetingId,
    name: 'اجتماع المجموعة',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
    groupId: groupId,
  );
  const standaloneMeeting = Meeting(
    id: standaloneMeetingId,
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
              'meeting_id': serviceMeetingId,
              'service_id': serviceId,
              'is_visible': false,
              'is_success': true,
            },
          ),
          (
            KodasPersonMark(
              groupMeeting,
              personId: person5Id,
              isRecorded: true,
              isSuccess: false,
            ),
            'kodas:person_mark',
            {
              'meeting_id': groupMeetingId,
              'group_id': groupId,
              'person_id': person5Id,
              'is_recorded': true,
              'is_success': false,
            },
          ),
          (
            KodasUndo(
              standaloneMeeting,
              personId: person6Id,
              undoneChange: AttendanceUndoableChange.kodasRecorded,
            ),
            'kodas:undo',
            {
              'meeting_id': standaloneMeetingId,
              'person_id': person6Id,
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
