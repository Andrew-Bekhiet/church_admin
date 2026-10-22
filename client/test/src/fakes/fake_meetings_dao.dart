import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeMeetingsDAO extends Fake implements MeetingsDAO {
  final List<Meeting> createdMeetings = [];

  @override
  Future<Meeting> createObject({required Meeting newObject}) async {
    createdMeetings.add(newObject);

    return newObject;
  }
}
