import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:patrol/patrol.dart';

import 'support/attendance_e2e_backend.dart';
import 'support/e2e_app.dart';
import 'support/record_attendance_robot.dart';
import 'support/scoped_attendance_seed.dart';

void main() {
  patrolTest(
    'a service-scoped user records attendance only where, for whom and when '
    'their scopes allow',
    ($) async {
      final tester = $.tester;
      const persons = AttendanceRosterAudienceView.persons;
      const servants = AttendanceRosterAudienceView.servants;

      void step(String description) => debugPrint('E2E STEP: $description');

      Future<AttendanceRecord> singleStoredAttendance(
        String personId, {
        required String meetingId,
      }) async {
        final records = await AttendanceE2eBackend.attendanceOf(
          personId,
          meetingId: meetingId,
        );
        expect(records, hasLength(1));

        return records.single;
      }

      final seed = await ScopedAttendanceSeed.insert();

      step('the scoped user signs in');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: seed.user.email);

      final robot = RecordAttendanceRobot(tester);

      step('only meetings in a scope that covers them are offered');
      await robot.openServiceDefaultMeeting(seed.secondaryServiceId);
      final offeredMeetings = await robot.offeredMeetingIds();
      expect(
        offeredMeetings,
        containsAll([
          seed.bothAudiencesMeetingId,
          seed.personsOnlyMeetingId,
          seed.servantsOnlyMeetingId,
          seed.notRecordableMeetingId,
          seed.personsRightsMeetingId,
          seed.servantsRightsMeetingId,
        ]),
      );
      expect(offeredMeetings, isNot(contains(seed.otherStudyYearMeetingId)));

      step('persons and servants meeting: persons in the scope pair only');
      expect(
        await robot.offeredPersonIds(
          meetingId: seed.bothAudiencesMeetingId,
          view: persons,
        ),
        {seed.scopedPersonId},
      );
      final today = robot.selectedDate;
      await robot.markPresent(seed.scopedPersonId, asServant: false);
      final todaysRecord = await singleStoredAttendance(
        seed.scopedPersonId,
        meetingId: seed.bothAudiencesMeetingId,
      );
      expect(todaysRecord.asServant, isFalse);
      expect(DateUtils.dateOnly(todaysRecord.datetime), today);
      expect(todaysRecord.datetime.isAfter(DateTime.now()), isFalse);

      step('persons and servants meeting: approved servants of the service');
      expect(robot.canSwitchAudience, isTrue);
      await robot.showServants();
      expect(
        await robot.offeredPersonIds(
          meetingId: seed.bothAudiencesMeetingId,
          view: servants,
        ),
        {seed.secondaryServantId, seed.user.personId},
      );
      await robot.markPresent(seed.secondaryServantId, asServant: true);
      expect(
        (await singleStoredAttendance(
          seed.secondaryServantId,
          meetingId: seed.bothAudiencesMeetingId,
        )).asServant,
        isTrue,
      );

      step('persons-only meeting offers only persons');
      await robot.switchToMeeting(seed.personsOnlyMeetingId);
      expect(
        await robot.offeredPersonIds(
          meetingId: seed.personsOnlyMeetingId,
          view: persons,
        ),
        {seed.scopedPersonId},
      );
      expect(robot.canSwitchAudience, isFalse);
      await robot.markPresent(seed.scopedPersonId, asServant: false);
      await singleStoredAttendance(
        seed.scopedPersonId,
        meetingId: seed.personsOnlyMeetingId,
      );

      step('servants-only meeting offers only servants');
      await robot.switchToMeeting(seed.servantsOnlyMeetingId);
      expect(
        await robot.offeredPersonIds(
          meetingId: seed.servantsOnlyMeetingId,
          view: servants,
        ),
        {seed.secondaryServantId, seed.user.personId},
      );
      expect(robot.canSwitchAudience, isFalse);
      await robot.markPresent(seed.user.personId, asServant: true);
      expect(
        (await singleStoredAttendance(
          seed.user.personId,
          meetingId: seed.servantsOnlyMeetingId,
        )).asServant,
        isTrue,
      );

      step('a scope recording only persons offers only persons');
      await robot.switchToMeeting(seed.personsRightsMeetingId);
      expect(
        await robot.offeredPersonIds(
          meetingId: seed.personsRightsMeetingId,
          view: persons,
        ),
        {seed.personsRightsPersonId},
      );
      expect(robot.canSwitchAudience, isFalse);
      await robot.markPresent(seed.personsRightsPersonId, asServant: false);
      await singleStoredAttendance(
        seed.personsRightsPersonId,
        meetingId: seed.personsRightsMeetingId,
      );

      step('a scope recording only servants offers only servants');
      await robot.switchToMeeting(seed.servantsRightsMeetingId);
      expect(
        await robot.offeredPersonIds(
          meetingId: seed.servantsRightsMeetingId,
          view: servants,
        ),
        {seed.user.personId},
      );
      expect(robot.canSwitchAudience, isFalse);
      await robot.markPresent(seed.user.personId, asServant: true);
      await singleStoredAttendance(
        seed.user.personId,
        meetingId: seed.servantsRightsMeetingId,
      );

      step('a scope without the record attendance flag is refused');
      await robot.switchToMeeting(seed.notRecordableMeetingId);
      expect(
        await robot.offeredPersonIds(
          meetingId: seed.notRecordableMeetingId,
          view: persons,
        ),
        {seed.notRecordablePersonId},
      );
      await robot.tryMarkingPresentAndWaitForRefusal(
        seed.notRecordablePersonId,
        asServant: false,
      );
      expect(
        await AttendanceE2eBackend.attendanceOf(
          seed.notRecordablePersonId,
          meetingId: seed.notRecordableMeetingId,
        ),
        isEmpty,
      );

      step('a future day cannot be picked');
      await robot.switchToMeeting(seed.personsOnlyMeetingId);
      await robot.waitForRoster(
        meetingId: seed.personsOnlyMeetingId,
        view: persons,
      );
      await robot.openDatePicker();
      expect(robot.isDaySelectable(today), isTrue);
      expect(robot.canShowNextMonth, isFalse);
      final tomorrow = DateUtils.addDaysToDate(today, 1);
      if (tomorrow.month == today.month) {
        expect(robot.isDaySelectable(tomorrow), isFalse);
      }

      step('a past day is recorded with that date');
      final yesterday = DateUtils.addDaysToDate(today, -1);
      await robot.pickDay(yesterday);
      await robot.waitForRoster(
        meetingId: seed.personsOnlyMeetingId,
        view: persons,
      );
      await robot.markPresent(seed.scopedPersonId, asServant: false);
      final storedDays = {
        for (final record in await AttendanceE2eBackend.attendanceOf(
          seed.scopedPersonId,
          meetingId: seed.personsOnlyMeetingId,
        ))
          DateUtils.dateOnly(record.datetime),
      };
      expect(storedDays, {today, yesterday});

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
