import 'package:church_admin/church_admin.dart';

import 'e2e_admin_scope.dart';
import 'e2e_backend.dart';

/// Seeds meetings, rosters and scoped users, and reads back stored attendance.
abstract final class AttendanceE2eBackend {
  static Future<String> meetingIdByName(String meetingName) async {
    final data = await E2eBackend.hasuraQuery(
      r'''
      query MeetingByName($meetingName: String!) {
        historyMeetings(where: {name: {_eq: $meetingName}}) { id }
      }
      ''',
      variables: {'meetingName': meetingName},
    );

    return (data['historyMeetings'] as List).single['id'] as String;
  }

  static Future<String> insertServiceMeeting(
    String name, {
    required String serviceId,
    required MeetingAudience audience,
    int? serviceStudyYear,
  }) async {
    final inserted = await E2eBackend.hasuraQuery(
      r'''
      mutation InsertServiceMeeting($object: HistoryMeetingsInsertInput!) {
        insertHistoryMeetingsOne(object: $object) { id }
      }
      ''',
      variables: {
        'object': {
          'name': name,
          'serviceId': serviceId,
          'audience': audience.name,
          'serviceStudyYear': serviceStudyYear,
        },
      },
    );

    return (inserted['insertHistoryMeetingsOne'] as Map)['id'] as String;
  }

  static Future<String> insertServedPerson(
    String name, {
    required String serviceId,
    required int studyYear,
    required bool isMale,
  }) async {
    final inserted = await E2eBackend.hasuraQuery(
      r'''
      mutation InsertServedPerson($object: PersonsInsertInput!) {
        insertPersonsOne(object: $object) { id }
      }
      ''',
      variables: {
        'object': {
          'name': name,
          'gender': isMale,
          'studyYearId': studyYear,
          'services': {
            'data': [
              {'serviceId': serviceId},
            ],
          },
        },
      },
    );

    return (inserted['insertPersonsOne'] as Map)['id'] as String;
  }

  /// Inserts a user who never signs in, with a linked person, and returns
  /// that person's id, the identity attendance is recorded against.
  static Future<String> insertServantPerson(
    String name, {
    required List<E2eAdminScope> scopes,
    bool isApproved = true,
  }) async {
    final inserted = await E2eBackend.hasuraQuery(
      r'''
      mutation InsertServantUser($object: AuthUsersDataInsertInput!) {
        insertAuthUsersDataOne(object: $object) { uid }
      }
      ''',
      variables: {
        'object': {
          'name': name,
          'permissions': {
            'data': [
              if (isApproved) {'permission': 'approved'},
            ],
          },
          'adminOn': {
            'data': [for (final scope in scopes) scope.adminOnInsertInput],
          },
        },
      },
    );
    final uid = (inserted['insertAuthUsersDataOne'] as Map)['uid'] as String;
    final person = await E2eBackend.hasuraQuery(
      r'''
      mutation InsertServantPerson($uid: uuid!, $name: String!) {
        insertPersonsOne(object: {uid: $uid, name: $name, isServant: true, gender: true}) { id }
      }
      ''',
      variables: {'uid': uid, 'name': name},
    );

    return (person['insertPersonsOne'] as Map)['id'] as String;
  }

  static Future<List<AttendanceRecord>> attendanceOf(
    String personId, {
    required String meetingId,
  }) async {
    final data = await E2eBackend.hasuraQuery(
      r'''
      query AttendanceOf($personId: uuid!, $meetingId: uuid!) {
        historyAttendanceHistory(
          where: {personId: {_eq: $personId}, meetingId: {_eq: $meetingId}}
        ) { id meetingId personId datetime asServant }
      }
      ''',
      variables: {'personId': personId, 'meetingId': meetingId},
    );

    return [
      for (final row in data['historyAttendanceHistory'] as List)
        AttendanceRecord.fromJson(row as Map<String, dynamic>),
    ];
  }
}
