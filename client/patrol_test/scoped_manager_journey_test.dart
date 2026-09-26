import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/manage_users_flat_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_widget_tester.dart';
import 'support/user_management_robot.dart';

void main() {
  patrolTest(
    'a service manager invites and edits only the users in their service',
    ($) async {
      final tester = $.tester;
      const password = E2eBackend.password;
      const managerEmail = 'manager@e2e.test';
      const inviteeEmail = 'scoped-invitee@e2e.test';
      const scopedPerson = 'مخدوم في الخدمة';
      const replacementPerson = 'مخدوم بديل في الخدمة';

      void step(String description) => debugPrint('E2E STEP: $description');

      final managedServiceId = await E2eBackend.serviceIdByName('خدمة ثانوي');
      final otherServiceId = await E2eBackend.serviceIdByName('خدمة KG');
      final scopedPersonId = await E2eBackend.insertPerson(
        scopedPerson,
        serviceName: 'خدمة ثانوي',
      );
      final replacementPersonId = await E2eBackend.insertPerson(
        replacementPerson,
        serviceName: 'خدمة ثانوي',
      );
      final inScopeUid = await E2eBackend.insertApprovedUser(
        'خادم داخل الخدمة',
        adminOnServiceId: managedServiceId,
      );
      final outOfScopeUid = await E2eBackend.insertApprovedUser(
        'خادم خارج الخدمة',
        adminOnServiceId: otherServiceId,
      );

      step('admin invites a manager of one service');
      await E2eApp.launchSignedOut($);
      await E2eApp.signIn(
        tester,
        email: E2eBackend.adminEmail,
        password: password,
      );
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);

      final admin = UserManagementRobot(tester, password: password);
      await admin.openManageUsers();
      await admin.startCreatingUser();
      await admin.fillNewPerson(name: 'أمين خدمة ثانوي', email: managerEmail);
      await admin.grantPermission(UserPermission.onboardUsers);
      await admin.addServiceScope(managedServiceId, managesUsers: true);
      final managerCode = await admin.saveAndReadInvitationCode();
      await E2eApp.signOut(tester);

      step('the manager joins with the code');
      final verificationScreen = find.byKey(
        EmailVerificationScreenKeys.confirmEmailButtonKey,
      );
      await E2eApp.signUp(tester, email: managerEmail, password: password);
      await tester.waitFor(verificationScreen);
      await E2eBackend.verifyEmail(managerEmail);
      await tester.tapOn(verificationScreen);
      await tester.waitForAbsent(verificationScreen);
      await E2eApp.applyInvitationCode(tester, managerCode);
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);

      step('the manager sees only the users in their service');
      final manager = UserManagementRobot(tester, password: password);
      await manager.openManageUsers();
      await manager.showUsersAsFlatList();
      final adminUid =
          (await E2eBackend.userByEmail(E2eBackend.adminEmail))['uid']
              as String;
      final loadedList = find.byWidgetPredicate(
        (widget) =>
            widget is ManageUsersFlatList &&
            !widget.isLoading &&
            widget.users.any((user) => user.id == inScopeUid),
      );
      await tester.waitFor(loadedList);
      final listedUserIds = tester
          .widget<ManageUsersFlatList>(loadedList)
          .users
          .map((user) => user.id)
          .toSet();
      expect(listedUserIds, contains(inScopeUid));
      expect(listedUserIds, isNot(contains(outOfScopeUid)));
      expect(listedUserIds, isNot(contains(adminUid)));

      step('the manager invites a user linked to a person in their service');
      await manager.startCreatingUser();
      await manager.fillExistingPerson(
        personId: scopedPersonId,
        personName: scopedPerson,
        email: inviteeEmail,
      );
      await manager.addServiceScope(managedServiceId);
      await manager.saveAndReadInvitationCode();
      final invitee = await E2eBackend.userByEmail(inviteeEmail);
      expect((invitee['person'] as Map)['id'], scopedPersonId);
      expect(await E2eBackend.adminOnServicesOf(invitee['uid'] as String), {
        managedServiceId,
      });

      step('the manager changes the linked person');
      await manager.changeLinkedPerson(
        personId: replacementPersonId,
        personName: replacementPerson,
      );
      expect(
        ((await E2eBackend.userByEmail(inviteeEmail))['person'] as Map)['id'],
        replacementPersonId,
      );

      step('the manager goes from the user to the person and back');
      await manager.roundTripThroughLinkedPerson(invitee['uid'] as String);

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
