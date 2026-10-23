import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/home_birthdays_robot.dart';

void main() {
  patrolTest(
    'the home birthdays card and its full list show only persons born today',
    ($) async {
      final tester = $.tester;
      const password = E2eBackend.password;
      const serviceName = 'خدمة ثانوي';

      void step(String description) => debugPrint('E2E STEP: $description');

      final now = DateTime.now();
      final isLeapDay = now.month == DateTime.february && now.day == 29;
      final otherMonthWithTodaysDay = now.month == DateTime.january
          ? DateTime.march
          : DateTime.january;
      final todaysBirthdates = [
        for (final year in [1990, 2005, 2016])
          DateTime(isLeapDay ? year - year % 4 : year, now.month, now.day),
      ];
      final yesterday = DateTime(now.year, now.month, now.day - 1);
      final tomorrow = DateTime(now.year, now.month, now.day + 1);
      final otherBirthdates = [
        for (final day in [yesterday, tomorrow])
          for (final leapYear in [2000, 2016])
            DateTime(leapYear, day.month, day.day),
        DateTime(2016, otherMonthWithTodaysDay, now.day),
      ];

      step('seed persons born today, on nearby days and with no birthdate');
      final bornToday = <String, String>{
        for (final (index, birthdate) in todaysBirthdates.indexed)
          'مولود اليوم $index': await E2eBackend.insertPersonBornOn(
            'مولود اليوم $index',
            birthdate: birthdate,
            serviceName: serviceName,
          ),
      };
      final notBornToday = <String>{
        for (final (index, birthdate) in otherBirthdates.indexed)
          await E2eBackend.insertPersonBornOn(
            'مولود في يوم آخر $index',
            birthdate: birthdate,
            serviceName: serviceName,
          ),
        await E2eBackend.createPerson(
          'بدون تاريخ ميلاد',
          serviceName: serviceName,
        ),
      };

      step('the admin signs in and reaches home');
      await E2eApp.launchSignedOut($);
      await E2eApp.signIn(
        tester,
        email: E2eBackend.adminEmail,
        password: password,
      );
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);

      step('the home birthdays card lists only persons born today');
      final birthdays = HomeBirthdaysRobot(tester);
      expect(
        await birthdays.namesListedOnHome(),
        unorderedEquals(bornToday.keys),
      );

      step('tapping the card shows every person born today and no one else');
      await birthdays.openFullList();
      final listedIds = await birthdays.personIdsInFullListOnceItShows(
        bornToday.values.toSet(),
      );
      expect(listedIds, unorderedEquals(bornToday.values));
      expect(listedIds.where(notBornToday.contains), isEmpty);

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
