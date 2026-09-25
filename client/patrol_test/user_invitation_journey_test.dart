import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_widget_tester.dart';
import 'support/user_management_robot.dart';

void main() {
  patrolTest(
    'an admin invites users who then join with their invitation codes',
    ($) async {
      final tester = $.tester;
      const password = E2eBackend.password;
      const serviceName = 'خدمة جامعة';
      const earlyInviteeEmail = 'early@e2e.test';
      const lateInviteeEmail = 'late@e2e.test';
      const existingPerson = 'مخدوم موجود';
      const replacementPerson = 'مخدوم بديل';

      void step(String description) => debugPrint('E2E STEP: $description');

      await E2eBackend.insertPerson(existingPerson, serviceName: serviceName);
      await E2eBackend.insertPerson(
        replacementPerson,
        serviceName: serviceName,
      );

      step('admin signs in');
      await E2eApp.launchSignedOut($);
      await E2eApp.signIn(
        tester,
        email: E2eBackend.adminEmail,
        password: password,
      );
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);

      final admin = UserManagementRobot(tester, password: password);

      step('admin invites a user with a new person');
      await admin.openManageUsers();
      await admin.startCreatingUser();
      await admin.fillNewPerson(name: 'خادم مبكر', email: earlyInviteeEmail);
      final earlyCode = await admin.saveAndReadInvitationCode();

      step('admin invites a user linked to an existing person');
      await admin.backToManageUsers();
      await admin.startCreatingUser();
      await admin.fillExistingPerson(
        personName: existingPerson,
        email: lateInviteeEmail,
      );
      final lateCode = await admin.saveAndReadInvitationCode();

      step('admin changes the linked person');
      await admin.changeLinkedPerson(replacementPerson);
      expect(
        ((await E2eBackend.userByEmail(lateInviteeEmail))['person']
            as Map)['name'],
        replacementPerson,
      );

      await E2eApp.signOut(tester);

      step('invitee applies the code before verifying their email');
      await E2eApp.signUp(tester, email: earlyInviteeEmail, password: password);
      await tester.waitFor(find.text('التحقق من البريد الإلكتروني'));
      await E2eApp.applyInvitationCode(tester, earlyCode);
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);
      final earlyUser = await E2eBackend.userByEmail(earlyInviteeEmail);
      expect(earlyUser['authId'], isNotNull);
      expect(
        await E2eBackend.permissionsOf(earlyUser['uid'] as String),
        contains('approved'),
      );
      await E2eApp.signOut(tester);

      step('invitee applies the code after verifying their email');
      await E2eApp.signUp(tester, email: lateInviteeEmail, password: password);
      await tester.waitFor(find.text('التحقق من البريد الإلكتروني'));
      await E2eBackend.verifyEmail(lateInviteeEmail);
      await tester.tapOn(find.text('تمام! ضغطت على الرابط'));
      await tester.waitFor(find.text('في انتظار الموافقة'));
      await E2eApp.applyInvitationCode(tester, lateCode);
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);
      final lateUser = await E2eBackend.userByEmail(lateInviteeEmail);
      expect(lateUser['authId'], isNotNull);
      expect((lateUser['person'] as Map)['name'], replacementPerson);

      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
