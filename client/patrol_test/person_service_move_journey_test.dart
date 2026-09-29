import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_widget_tester.dart';

void main() {
  patrolTest(
    'a servant scoped to two study years moves a child between their services',
    ($) async {
      final tester = $.tester;
      const password = E2eBackend.password;
      const servantEmail = 'kg-and-primary-servant@e2e.test';
      const firstPrimary = 1;
      const kg2 = 0;

      void step(String description) => debugPrint('E2E STEP: $description');

      final primaryServiceId = await E2eBackend.serviceIdByName('خدمة ابتدائي');
      final kgServiceId = await E2eBackend.serviceIdByName('خدمة KG');
      final childId = await E2eBackend.insertStudent(
        'مخدوم ينتقل إلى KG',
        serviceId: primaryServiceId,
        studyYear: firstPrimary,
      );
      await E2eBackend.createServantAccount(
        'خادم KG وأولى ابتدائي',
        email: servantEmail,
        studyYearByServiceId: {
          primaryServiceId: firstPrimary,
          kgServiceId: kg2,
        },
      );

      step('the servant signs in');
      await E2eApp.launchSignedOut($);
      await E2eApp.signIn(tester, email: servantEmail, password: password);
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);

      step('the servant opens the child from first primary');
      await tester.tapOn(find.byKey(HomeBottomNavBarKeys.page(Person)));
      await tester.tapOn(tester.viewableObject(childId));
      await tester.tapOn(find.byKey(ViewPersonKeys.editButton));
      final saveButton = find.byKey(EditObjectDataKeys.saveButton);
      await tester.waitFor(
        find.byWidgetPredicate(
          (widget) =>
              widget is PersonServicesAndGroupsField &&
              widget.classesAndGroupsLoaded,
        ),
      );

      step('the servant moves the child to KG 2 in the KG service');
      final selectionDialog = find.byType(AlertDialog);
      await tester.tapOn(
        find.byKey(PersonWorkAndEducationFieldsKeys.studyYearField),
      );
      await tester.tapOn(
        find.descendant(
          of: selectionDialog,
          matching: tester.viewableObject('$kg2'),
        ),
      );
      await tester.waitForAbsent(selectionDialog);

      await tester.tapOn(find.byType(PersonServicesAndGroupsField));
      await tester.tapOn(
        find.byKey(PersonServiceSelectionPageKeys.serviceCheckbox(kgServiceId)),
      );
      await tester.tapOn(
        find.byKey(
          PersonServiceSelectionPageKeys.serviceCheckbox(primaryServiceId),
        ),
      );
      await tester.tapOn(
        find.byKey(PersonServiceSelectionPageKeys.confirmButton),
      );

      await tester.tapOn(saveButton);
      await tester.waitForAbsent(saveButton);
      final (:studyYear, :serviceIds) = await E2eBackend.placementOf(childId);
      expect(studyYear, kg2);
      expect(serviceIds, {kgServiceId});

      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
