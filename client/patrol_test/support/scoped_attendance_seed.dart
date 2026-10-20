import 'package:church_admin/church_admin.dart';

import 'attendance_e2e_backend.dart';
import 'e2e_backend.dart';
import 'seeded_service_scope.dart';

/// A user scoped to first-year boys of the secondary service (recording
/// persons and servants), the preparatory service (recording nothing), the
/// primary service (recording persons) and KG (recording servants), with
/// people inside and outside each roster those scopes allow.
class ScopedAttendanceSeed {
  static const String userEmail = 'attendance-recorder@e2e.test';
  static const int _scopedStudyYear = 10;
  static const int _otherSecondaryStudyYear = 11;

  static Future<ScopedAttendanceSeed> insert() async {
    final secondaryId = await E2eBackend.serviceIdByName('خدمة ثانوي');
    final preparatoryId = await E2eBackend.serviceIdByName('خدمة اعدادي');
    final primaryId = await E2eBackend.serviceIdByName('خدمة ابتدائي');
    final kgId = await E2eBackend.serviceIdByName('خدمة KG');

    await AttendanceE2eBackend.insertServedPerson(
      'مخدوم تانية ثانوي',
      serviceId: secondaryId,
      studyYear: _otherSecondaryStudyYear,
      isMale: true,
    );
    await AttendanceE2eBackend.insertServedPerson(
      'مخدومة أولى ثانوي',
      serviceId: secondaryId,
      studyYear: _scopedStudyYear,
      isMale: false,
    );
    await AttendanceE2eBackend.insertServedPerson(
      'مخدوم KG',
      serviceId: kgId,
      studyYear: 0,
      isMale: true,
    );
    await AttendanceE2eBackend.insertServantPerson(
      'خادم ثانوي غير معتمد',
      scopes: [SeededServiceScope(secondaryId)],
      isApproved: false,
    );
    await AttendanceE2eBackend.insertServantPerson(
      'خادم اعدادي',
      scopes: [SeededServiceScope(preparatoryId)],
    );

    return ScopedAttendanceSeed(
      bothAudiencesMeetingId: await AttendanceE2eBackend.meetingIdByName(
        'اجتماع ثانوي',
      ),
      personsOnlyMeetingId: await AttendanceE2eBackend.insertServiceMeeting(
        'اجتماع مخدومين ثانوي',
        serviceId: secondaryId,
        audience: MeetingAudience.onlyPersons,
      ),
      servantsOnlyMeetingId: await AttendanceE2eBackend.insertServiceMeeting(
        'اجتماع خدام ثانوي',
        serviceId: secondaryId,
        audience: MeetingAudience.onlyServants,
      ),
      otherStudyYearMeetingId: await AttendanceE2eBackend.insertServiceMeeting(
        'اجتماع تانية ثانوي',
        serviceId: secondaryId,
        audience: MeetingAudience.personsAndServants,
        serviceStudyYear: _otherSecondaryStudyYear,
      ),
      notRecordableMeetingId: await AttendanceE2eBackend.meetingIdByName(
        'اجتماع اعدادي',
      ),
      personsRightsMeetingId: await AttendanceE2eBackend.meetingIdByName(
        'مدارس الأحد',
      ),
      servantsRightsMeetingId: await AttendanceE2eBackend.meetingIdByName(
        'اجتماع KG',
      ),
      secondaryServiceId: secondaryId,
      scopedPersonId: await AttendanceE2eBackend.insertServedPerson(
        'مخدوم أولى ثانوي',
        serviceId: secondaryId,
        studyYear: _scopedStudyYear,
        isMale: true,
      ),
      secondaryServantId: await AttendanceE2eBackend.insertServantPerson(
        'خادم ثانوي',
        scopes: [SeededServiceScope(secondaryId)],
      ),
      notRecordablePersonId: await AttendanceE2eBackend.insertServedPerson(
        'مخدوم اعدادي',
        serviceId: preparatoryId,
        studyYear: 8,
        isMale: true,
      ),
      personsRightsPersonId: await AttendanceE2eBackend.insertServedPerson(
        'مخدوم ابتدائي',
        serviceId: primaryId,
        studyYear: 3,
        isMale: true,
      ),
      userPersonId: await AttendanceE2eBackend.insertServantPerson(
        'خادم يسجل الحضور',
        email: userEmail,
        scopes: [
          SeededServiceScope(
            secondaryId,
            studyYear: _scopedStudyYear,
            gender: true,
            recordsPersons: true,
            recordsServants: true,
          ),
          SeededServiceScope(preparatoryId),
          SeededServiceScope(primaryId, recordsPersons: true),
          SeededServiceScope(kgId, recordsServants: true),
        ],
      ),
    );
  }

  final String bothAudiencesMeetingId;
  final String personsOnlyMeetingId;
  final String servantsOnlyMeetingId;
  final String otherStudyYearMeetingId;
  final String notRecordableMeetingId;
  final String personsRightsMeetingId;
  final String servantsRightsMeetingId;

  final String secondaryServiceId;
  final String scopedPersonId;
  final String secondaryServantId;
  final String notRecordablePersonId;
  final String personsRightsPersonId;
  final String userPersonId;

  const ScopedAttendanceSeed({
    required this.bothAudiencesMeetingId,
    required this.personsOnlyMeetingId,
    required this.servantsOnlyMeetingId,
    required this.otherStudyYearMeetingId,
    required this.notRecordableMeetingId,
    required this.personsRightsMeetingId,
    required this.servantsRightsMeetingId,
    required this.secondaryServiceId,
    required this.scopedPersonId,
    required this.secondaryServantId,
    required this.notRecordablePersonId,
    required this.personsRightsPersonId,
    required this.userPersonId,
  });
}
