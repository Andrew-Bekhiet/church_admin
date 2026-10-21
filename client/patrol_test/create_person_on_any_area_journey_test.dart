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
    'a servant scoped to a class only adds persons on any area and street',
    ($) async {
      final tester = $.tester;
      const studyYear = 10;
      const gender = AdminScopeGender.male;
      const firstAreaName = 'منطقة أولى بلا صلاحية';
      const secondAreaName = 'منطقة ثانية بلا صلاحية';
      const firstAreaStreetName = 'شارع المنطقة الأولى';
      const sharedStreetName = 'شارع المنطقتين';

      void step(String description) => debugPrint('E2E STEP: $description');

      final serviceId = await E2eBackend.serviceIdByName('خدمة ثانوي');
      final classId = await E2eBackend.classIdByName('أولى ثانوي بنين');
      final firstAreaId = await E2eBackend.insertArea(firstAreaName);
      final secondAreaId = await E2eBackend.insertArea(secondAreaName);
      final firstAreaStreetId = await E2eBackend.insertStreet(
        firstAreaStreetName,
        areaId: firstAreaId,
      );
      final sharedStreetId = await E2eBackend.insertStreetSharedByAreas(
        sharedStreetName,
        areaIds: [firstAreaId, secondAreaId],
      );
      final servant = await E2eUsers.createApprovedUser(
        email: 'service-only-servant@e2e.test',
        name: 'خادم بلا مناطق',
        adminOn: [
          ServiceAdminScope(
            serviceId,
            studyYear: studyYear,
            gender: gender,
            canWriteData: true,
          ),
        ],
      );
      final isInTheServantsClass = allOf(
        containsPair('gender', gender.isMale),
        containsPair('studyYearId', studyYear),
        containsPair('services', [
          {'serviceId': serviceId},
        ]),
        containsPair('classes', contains(equals({'classId': classId}))),
      );
      final editor = PersonEditorRobot(tester);

      step('a servant with no area scope signs in and opens their class');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: servant.email);
      await editor.openClassFromHome(serviceId: serviceId, classId: classId);

      step('(a) a person on a street of an area outside the servants scope');
      await editor.startAddingPersonInShownClass();
      await editor.fillName('مخدوم في المنطقة الأولى');
      await editor.chooseStreet(
        streetId: firstAreaStreetId,
        streetName: firstAreaStreetName,
        areaOfStreetId: firstAreaId,
      );
      final inFirstAreaId = await editor.saveNewPerson();
      final inFirstArea = await E2eBackend.personById(inFirstAreaId);
      expect(inFirstArea, isInTheServantsClass);
      expect(inFirstArea['family'], {
        'address': {'areaId': firstAreaId, 'streetId': firstAreaStreetId},
      });
      await editor.backToShownClass();
      await editor.waitForPersonListedIn<ViewClass>(inFirstAreaId);

      step('(b) a person on a shared street within another chosen area');
      await editor.startAddingPersonInShownClass();
      await editor.fillName('مخدوم في المنطقة الثانية');
      await editor.chooseArea(areaId: secondAreaId, areaName: secondAreaName);
      await editor.chooseStreet(
        streetId: sharedStreetId,
        streetName: sharedStreetName,
        areaOfStreetId: secondAreaId,
      );
      final inSecondAreaId = await editor.saveNewPerson();
      final inSecondArea = await E2eBackend.personById(inSecondAreaId);
      expect(inSecondArea, isInTheServantsClass);
      expect(inSecondArea['familyId'], isNot(inFirstArea['familyId']));
      expect(inSecondArea['family'], {
        'address': {'areaId': secondAreaId, 'streetId': sharedStreetId},
      });
      await editor.backToShownClass();
      await editor.waitForPersonListedIn<ViewClass>(inSecondAreaId);

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
