import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_admin_scope.dart';
import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_users.dart';
import 'support/person_editor_robot.dart';

void main() {
  patrolTest(
    'a class servant who may delete data deletes a person from the editor',
    ($) async {
      final tester = $.tester;
      const studyYear = 10;
      const gender = AdminScopeGender.male;

      void step(String description) => debugPrint('E2E STEP: $description');

      final serviceId = await E2eBackend.serviceIdByName('خدمة ثانوي');
      final classId = await E2eBackend.classIdByName('أولى ثانوي بنين');
      final areaId = await E2eBackend.insertArea('منطقة المخدوم المحذوف');
      final streetId = await E2eBackend.insertStreet(
        'شارع المخدوم المحذوف',
        areaId: areaId,
      );
      final deletedId = await E2eBackend.insertPersonInFamilyOnStreet(
        'مخدوم سيحذف',
        familyName: 'عائلة المخدوم المحذوف',
        streetId: streetId,
        areaId: areaId,
        serviceId: serviceId,
        studyYear: studyYear,
        isMale: gender.isMale,
      );
      final servant = await E2eUsers.createApprovedUser(
        email: 'deleter@e2e.test',
        name: 'خادم يحذف المخدومين',
        permissions: {UserPermission.deleteData},
        adminOn: [
          ServiceAdminScope(
            serviceId,
            studyYear: studyYear,
            gender: gender,
            canWriteData: true,
          ),
        ],
      );
      final editor = PersonEditorRobot(tester);

      step('the servant opens a person of their class in the editor');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: servant.email);
      await editor.openClassFromHome(serviceId: serviceId, classId: classId);
      await editor.openPersonListedInShownClass(deletedId);
      await editor.startEditingShownPerson();

      step('deleting leaves the editor and the person behind');
      await editor.deleteEditedPerson();
      await editor.waitForPersonGoneFromShownClass(deletedId);
      expect(await E2eBackend.personExists(deletedId), isFalse);

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
