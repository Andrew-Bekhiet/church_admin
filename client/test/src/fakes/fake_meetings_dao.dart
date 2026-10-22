import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeMeetingsDAO extends Fake implements MeetingsDAO {
  final List<Meeting> createdMeetings = [];
  final List<Meeting> updatedMeetings = [];
  Object? createError;

  @override
  Future<Meeting> createObject({required Meeting newObject}) async {
    if (createError case final error?) throw error;
    createdMeetings.add(newObject);

    return newObject;
  }

  @override
  Future<Meeting?> updateObject({
    required Meeting newObject,
    required Meeting oldObject,
  }) async {
    if (newObject != oldObject) updatedMeetings.add(newObject);

    return newObject;
  }
}
