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
    'a servant of one class adds persons to it with their families',
    ($) async {
      final tester = $.tester;
      const studyYear = 10;
      const gender = AdminScopeGender.male;
      const streetName = 'شارع الفصل';
      const existingFamilyName = 'عائلة موجودة';
      const newFamilyPhone = '01011112222';
      const existingFamilyPhone = '01033334444';

      void step(String description) => debugPrint('E2E STEP: $description');

      final serviceId = await E2eBackend.serviceIdByName('خدمة ثانوي');
      final classId = await E2eBackend.classIdByName('أولى ثانوي بنين');
      final fatherRoleId = await E2eBackend.personTypeIdByName('أب');
      final areaId = await E2eBackend.insertArea('منطقة الفصل');
      final streetId = await E2eBackend.insertStreet(
        streetName,
        areaId: areaId,
      );
      final existingFamilyId = await E2eBackend.insertFamilyWithMember(
        existingFamilyName,
        memberName: 'مخدوم في العائلة الموجودة',
        serviceId: serviceId,
        studyYear: studyYear,
        isMale: gender.isMale,
      );
      final servant = await E2eUsers.createApprovedUser(
        email: 'class-servant@e2e.test',
        name: 'خادم الفصل',
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

      step('a servant who writes the data of one class signs in');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: servant.email);
      await editor.openClassFromHome(serviceId: serviceId, classId: classId);

      step('(a) adding an address creates a family for the person');
      await editor.startAddingPersonInShownClass();
      await editor.fillName('مخدوم بعنوان');
      await editor.chooseStreet(
        streetId: streetId,
        streetName: streetName,
        areaOfStreetId: areaId,
      );
      final withAddressId = await editor.saveNewPerson();
      final withAddress = await E2eBackend.personById(withAddressId);
      expect(withAddress, isInTheServantsClass);
      expect(withAddress['family'], {
        'address': {'areaId': areaId, 'streetId': streetId},
      });
      final addressFamilyId = withAddress['familyId'] as String;
      await editor.waitForShownPersonInFamily(addressFamilyId);
      await editor.backToShownClass();
      await editor.waitForPersonListedIn<ViewClass>(withAddressId);

      step('(b) adding family numbers creates the family with these numbers');
      await editor.startAddingPersonInShownClass();
      await editor.fillName('مخدوم بأرقام الأسرة');
      await editor.chooseStreet(
        streetId: streetId,
        streetName: streetName,
        areaOfStreetId: areaId,
      );
      await editor.addFamilyNumber(roleId: fatherRoleId, phone: newFamilyPhone);
      final withNumbersId = await editor.saveNewPerson();
      final withNumbers = await E2eBackend.personById(withNumbersId);
      expect(withNumbers, isInTheServantsClass);
      final numberedFamilyId = withNumbers['familyId'] as String;
      expect(numberedFamilyId, isNot(addressFamilyId));
      final numberedFamilyContacts = await E2eBackend.contactsOfFamily(
        numberedFamilyId,
      );
      expect(numberedFamilyContacts, [
        allOf(
          containsPair('phone', PhoneNumberService.I.toE164(newFamilyPhone)),
          containsPair('personTypeId', fatherRoleId),
        ),
      ]);
      await editor.waitForShownFamilyNumber(
        numberedFamilyContacts.single['id'] as String,
      );
      await editor.backToShownClass();

      step('(c) choosing an existing family adds the numbers to that family');
      final familiesBeforeJoining = await E2eBackend.familiesCount();
      await editor.startAddingPersonInShownClass();
      await editor.fillName('مخدوم في عائلة موجودة');
      await editor.chooseFamily(
        familyId: existingFamilyId,
        familyName: existingFamilyName,
      );
      await editor.addFamilyNumber(
        roleId: fatherRoleId,
        phone: existingFamilyPhone,
      );
      final joinedId = await editor.saveNewPerson();
      final joined = await E2eBackend.personById(joinedId);
      expect(joined, isInTheServantsClass);
      expect(joined['familyId'], existingFamilyId);
      expect(await E2eBackend.familiesCount(), familiesBeforeJoining);
      final existingFamilyContacts = await E2eBackend.contactsOfFamily(
        existingFamilyId,
      );
      expect(existingFamilyContacts, [
        allOf(
          containsPair(
            'phone',
            PhoneNumberService.I.toE164(existingFamilyPhone),
          ),
          containsPair('personTypeId', fatherRoleId),
        ),
      ]);
      await editor.waitForShownFamilyNumber(
        existingFamilyContacts.single['id'] as String,
      );

      step('without writing related families, its family offers no adding');
      await editor.openShownPersonsFamily(existingFamilyId);
      await editor.waitForPersonListedIn<ViewFamily>(joinedId);
      editor.expectAddingToShownFamilyHidden();

      step('(d) once allowed to write related families, it adds a sibling');
      await E2eUsers.grantWritingRelatedFamiliesOnServiceScopesOf(servant.uid);
      await editor.waitForAddingToShownFamilyAllowed();
      await editor.startAddingPersonToShownFamily();
      await editor.fillName('أخ المخدوم');
      final siblingId = await editor.saveNewPerson();
      final sibling = await E2eBackend.personById(siblingId);
      expect(sibling['familyId'], existingFamilyId);
      expect(sibling['services'], isEmpty);
      await editor.waitForShownPersonInFamily(existingFamilyId);

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
