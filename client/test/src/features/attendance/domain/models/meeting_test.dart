import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'a meeting read from only its key and name gets the default audience '
    'and is not archived',
    () {
      const id = '44444444-4444-4444-4444-444444444444';
      const name = 'اجتماع';

      final meeting = Meeting.fromJson(const {'id': id, 'name': name});

      expect(
        (meeting.id, meeting.name, meeting.audience, meeting.isArchived),
        (id, name, MeetingAudience.personsAndServants, false),
      );
    },
  );
}
