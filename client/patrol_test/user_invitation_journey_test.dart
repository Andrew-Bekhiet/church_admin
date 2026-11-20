import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_journey.dart';
import 'support/e2e_widget_tester.dart';
import 'support/user_management_robot.dart';

void main() {
  E2eJourney.test(
    'an admin invites users who then join with their invitation codes or '
    'their invited email',
    ($) async {
      final tester = $.tester;
      const password = E2eBackend.password;
      const serviceName = 'خدمة جامعة';
      const earlyInviteeEmail = 'early@e2e.test';
      const lateInviteeEmail = 'late@e2e.test';
      const lateInviteeName = 'خادم متأخر';
      const emailClaimInviteeEmail = 'emailed@e2e.test';
      const existingPerson = 'مخدوم موجود';
      const replacementPerson = 'مخدوم بديل';

      void step(String description) => debugPrint('E2E STEP: $description');

      final verificationScreen = find.byKey(
        EmailVerificationScreenKeys.confirmEmailButtonKey,
      );
      final existingPersonId = await E2eBackend.insertPerson(
        existingPerson,
        serviceName: serviceName,
      );
      final replacementPersonId = await E2eBackend.insertPerson(
        replacementPerson,
        serviceName: serviceName,
      );

      step('admin signs in');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: E2eBackend.adminEmail);

      final admin = UserManagementRobot(tester, password: password);

      step('admin invites a user with a new person');
      await admin.openManageUsers();
      await admin.startCreatingUser();
      await admin.fillNewPerson(name: 'خادم مبكر', email: earlyInviteeEmail);
      final earlyCode = await admin.saveAndReadInvitationCode();

      step('admin invites a user without an email');
      await admin.backToManageUsers();
      await admin.startCreatingUser();
      await admin.fillNewPerson(name: lateInviteeName);
      final lateCode = await admin.saveAndReadInvitationCode();

      step('admin invites a user linked to an existing person');
      await admin.backToManageUsers();
      await admin.startCreatingUser();
      await admin.fillExistingPerson(
        personId: existingPersonId,
        personName: existingPerson,
        email: emailClaimInviteeEmail,
      );
      await admin.saveAndReadInvitationCode();

      step('admin changes the linked person');
      await admin.changeLinkedPerson(
        personId: replacementPersonId,
        personName: replacementPerson,
      );
      expect(
        ((await E2eBackend.userByEmail(emailClaimInviteeEmail))['person']
            as Map)['name'],
        replacementPerson,
      );

      step('admin goes from the user to the person and back');
      await admin.roundTripThroughLinkedPerson(
        (await E2eBackend.userByEmail(emailClaimInviteeEmail))['uid'] as String,
      );

      await E2eApp.signOut(tester);

      step('invitee applies the code before verifying their email');
      await E2eApp.signUp(tester, email: earlyInviteeEmail, password: password);
      await tester.waitFor(verificationScreen);
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
      await tester.waitFor(verificationScreen);
      await E2eBackend.verifyEmail(lateInviteeEmail);
      await tester.tapOn(verificationScreen);
      await tester.waitForAbsent(verificationScreen);
      await E2eApp.applyInvitationCode(tester, lateCode);
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);
      final lateUser = await E2eBackend.userByEmail(lateInviteeEmail);
      expect(lateUser['authId'], isNotNull);
      expect((lateUser['person'] as Map)['name'], lateInviteeName);
      await E2eApp.signOut(tester);

      step('an invitee who verifies the invited email joins without the code');
      await E2eApp.signUp(
        tester,
        email: emailClaimInviteeEmail,
        password: password,
      );
      await tester.waitFor(verificationScreen);
      await E2eBackend.verifyEmail(emailClaimInviteeEmail);
      await tester.tapOn(verificationScreen);
      await tester.waitForAbsent(verificationScreen);
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);
      final emailClaimInvitee = await E2eBackend.userByEmail(
        emailClaimInviteeEmail,
      );
      expect(emailClaimInvitee['authId'], isNotNull);
      expect((emailClaimInvitee['person'] as Map)['name'], replacementPerson);

      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
