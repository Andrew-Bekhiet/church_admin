import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_admin_scope.dart';
import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_device_cache.dart';
import 'support/e2e_users.dart';
import 'support/e2e_widget_tester.dart';

void main() {
  patrolTest(
    'a servant who loses global read access keeps only the people of their '
    'own service on the device',
    ($) async {
      final tester = $.tester;
      const ownServiceName = 'خدمة ثانوي';
      const globalAccess = {
        UserPermission.readAllData,
        UserPermission.writeAllData,
      };

      void step(String description) => debugPrint('E2E STEP: $description');

      final ownServiceId = await E2eBackend.serviceIdByName(ownServiceName);
      final insiderId = await E2eBackend.insertPerson(
        'مخدوم في خدمته',
        serviceName: ownServiceName,
      );
      final outsiderId = await E2eBackend.insertPerson(
        'مخدوم خارج خدمته',
        serviceName: 'اعداد خدام',
      );
      final servant = await E2eUsers.createApprovedUser(
        email: 'organizer@e2e.test',
        name: 'خادم يساعد في التنظيم',
        permissions: globalAccess,
        adminOn: [ServiceAdminScope(ownServiceId)],
      );

      step('a servant with global read access browses people of every service');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: servant.email);
      await E2eApp.openHomeTab(
        tester,
        mode: HomeMode.sundaySchool,
        tab: HomeTab.sundaySchoolPersons,
      );
      await tester.waitFor(tester.viewableObject(outsiderId));
      await tester.waitUntil(
        () => E2eDeviceCache.holdsPerson(outsiderId),
        waitingFor: 'the person outside their service to be cached',
      );

      step(
        '(a) losing global access drops the outsider from screen and device',
      );
      await E2eUsers.revokePermissions(servant.uid, globalAccess);
      await tester.waitForAbsent(tester.viewableObject(outsiderId));
      await tester.waitUntil(
        () => !E2eDeviceCache.holdsPerson(outsiderId),
        waitingFor: 'the person outside their service to leave the device',
      );
      await tester.waitUntil(
        () => E2eDeviceCache.holdsPerson(insiderId),
        waitingFor: 'the person in their service to be cached again',
      );

      step('(b) the relaunched app still holds only their own service');
      await E2eApp.relaunch($);
      expect(E2eDeviceCache.holdsPerson(outsiderId), isFalse);
      await E2eApp.openHomeTab(
        tester,
        mode: HomeMode.sundaySchool,
        tab: HomeTab.sundaySchoolPersons,
      );
      await tester.waitFor(tester.viewableObject(insiderId));
      expect(tester.viewableObject(outsiderId), findsNothing);

      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
