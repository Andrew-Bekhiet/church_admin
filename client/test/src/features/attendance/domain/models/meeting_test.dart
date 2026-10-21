import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('a meeting a sorted list selects only by key and name still reads', () {
    const id = '44444444-4444-4444-4444-444444444444';
    const name = 'اجتماع';

    final meeting = Meeting.fromJson(const {'id': id, 'name': name});

    expect((meeting.id, meeting.name), (id, name));
  });
}
