import 'package:church_admin/church_admin.dart';

import 'e2e_admin_scope.dart';
import 'e2e_ash.dart';
import 'e2e_backend.dart';

/// Seeds meetings, rosters and scoped users, and reads back stored attendance.
abstract final class AttendanceE2eBackend {
  static Future<String> meetingIdByName(String meetingName) =>
      E2eAsh.idByName('meetings', meetingName);

  static Future<String> insertServiceMeeting(
    String name, {
    required String serviceId,
    required MeetingAudience audience,
    int? serviceStudyYear,
  }) => E2eAsh.createRecordId('Meeting', {
    'name': name,
    'serviceId': serviceId,
    'audience': _graphqlAudience(audience),
    'serviceStudyYear': ?serviceStudyYear,
  });

  static Future<String> insertServedPerson(
    String name, {
    required String serviceId,
    required int studyYear,
    required bool isMale,
  }) => E2eAsh.createRecordId('Person', {
    'name': name,
    'gender': isMale,
    'studyYearId': studyYear,
    'services': [serviceId],
  });

  /// Inserts a user who never signs in, with a linked person, and returns
  /// that person's id, the identity attendance is recorded against.
  static Future<String> insertServantPerson(
    String name, {
    required List<E2eAdminScope> scopes,
    bool isApproved = true,
  }) async {
    final servant = await E2eBackend.createUserWithPerson(
      name: name,
      permissions: [if (isApproved) 'approved'],
      adminOn: [for (final scope in scopes) scope.adminOnInput],
    );

    return servant.personId;
  }

  static Future<List<AttendanceRecord>> attendanceOf(
    String personId, {
    required String meetingId,
  }) async {
    final records = await E2eAsh.pageResults(
      r'''
      query AttendanceOf($personId: ID!, $meetingId: ID!) {
        attendanceRecords(
          filter: {personId: {eq: $personId}, meetingId: {eq: $meetingId}}
        ) { results { id meetingId personId datetime asServant } }
      }
      ''',
      'attendanceRecords',
      variables: {'personId': personId, 'meetingId': meetingId},
    );

    return [
      for (final record in records)
        AttendanceRecord.fromJson(record as Map<String, dynamic>),
    ];
  }

  static String _graphqlAudience(MeetingAudience audience) =>
      switch (audience) {
        MeetingAudience.onlyPersons => 'ONLY_PERSONS',
        MeetingAudience.onlyServants => 'ONLY_SERVANTS',
        MeetingAudience.personsAndServants => 'PERSONS_AND_SERVANTS',
      };
}
