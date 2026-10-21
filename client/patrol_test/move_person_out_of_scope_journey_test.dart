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
    'a class servant moves a person to an area and a service outside their '
    'scope',
    ($) async {
      final tester = $.tester;
      const studyYear = 10;
      const gender = AdminScopeGender.male;
      const otherStreetName = 'شارع منطقة أخرى';

      void step(String description) => debugPrint('E2E STEP: $description');

      final serviceId = await E2eBackend.serviceIdByName('خدمة ثانوي');
      final otherServiceId = await E2eBackend.serviceIdByName('اعداد خدام');
      final classId = await E2eBackend.classIdByName('أولى ثانوي بنين');
      final areaId = await E2eBackend.insertArea('منطقة المخدوم');
      final streetId = await E2eBackend.insertStreet(
        'شارع المخدوم',
        areaId: areaId,
      );
      final otherAreaId = await E2eBackend.insertArea('منطقة أخرى');
      final otherStreetId = await E2eBackend.insertStreet(
        otherStreetName,
        areaId: otherAreaId,
      );
      final movedId = await E2eBackend.insertPersonInFamilyOnStreet(
        'مخدوم سينتقل',
        familyName: 'عائلة المخدوم المنتقل',
        streetId: streetId,
        areaId: areaId,
        serviceId: serviceId,
        studyYear: studyYear,
        isMale: gender.isMale,
      );
      final stayingId = await E2eBackend.insertPersonInFamilyOnStreet(
        'مخدوم باقٍ',
        familyName: 'عائلة المخدوم الباقي',
        streetId: streetId,
        areaId: areaId,
        serviceId: serviceId,
        studyYear: studyYear,
        isMale: gender.isMale,
      );
      final servant = await E2eUsers.createApprovedUser(
        email: 'mover@e2e.test',
        name: 'خادم ينقل المخدومين',
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

      step('a servant who writes the data of one class opens a person in it');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: servant.email);
      await editor.openClassFromHome(serviceId: serviceId, classId: classId);
      await editor.openPersonListedInShownClass(movedId);

      step('(a) moving the family to an area outside the scope keeps it seen');
      await editor.startEditingShownPerson();
      await editor.moveToStreetOfAnotherArea(
        streetId: otherStreetId,
        streetName: otherStreetName,
        areaOfStreetId: otherAreaId,
      );
      await editor.saveEditedPerson();
      expect((await E2eBackend.personById(movedId))['family'], {
        'address': {'areaId': otherAreaId, 'streetId': otherStreetId},
      });
      await editor.waitForShownPersonOnStreetOf(
        streetId: otherStreetId,
        areaId: otherAreaId,
      );

      step('(b) moving the person to a service outside the scope hides them');
      await editor.startEditingShownPerson();
      await editor.replaceService(
        removedServiceId: serviceId,
        addedServiceId: otherServiceId,
      );
      await editor.saveConfirmingMoveOutOfSight();
      expect((await E2eBackend.personById(movedId))['services'], [
        {'serviceId': otherServiceId},
      ]);
      await editor.waitForPersonListedIn<ViewClass>(stayingId);
      await editor.waitForPersonGoneFromShownClass(movedId);

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
