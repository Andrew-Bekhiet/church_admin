import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_admin_scope.dart';
import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_users.dart';
import 'support/e2e_widget_tester.dart';

void main() {
  patrolTest(
    'a ready service servant signs in straight to the people of their service',
    ($) async {
      final tester = $.tester;

      void step(String description) => debugPrint('E2E STEP: $description');

      final servedPersonId = await E2eBackend.createPerson(
        'مخدوم في خدمة الخادم',
        serviceName: 'خدمة ثانوي',
      );
      final otherServicePersonId = await E2eBackend.createPerson(
        'مخدوم في خدمة أخرى',
        serviceName: 'خدمة KG',
      );
      final servant = await E2eUsers.createApprovedUser(
        email: 'ready-servant@e2e.test',
        name: 'خادم جاهز',
        adminOn: [
          ServiceAdminScope(
            await E2eBackend.serviceIdByName('خدمة ثانوي'),
            canWriteData: true,
            canRecordAttendance: true,
          ),
        ],
      );
      expect(
        (await E2eBackend.userByEmail(servant.email))['authId'],
        servant.authId,
      );

      step('the servant signs in without signing up or claiming');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: servant.email);

      step('the servant sees the people of their service only');
      await E2eApp.openHomeTab(
        tester,
        mode: HomeMode.sundaySchool,
        tab: HomeTab.sundaySchoolPersons,
      );
      await tester.waitFor(tester.viewableObject(servedPersonId));
      expect(tester.viewableObject(otherServicePersonId), findsNothing);

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 5)),
  );
}
