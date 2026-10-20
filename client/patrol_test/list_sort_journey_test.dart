import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/list_sort_fixture.dart';
import 'support/list_sort_robot.dart';

void main() {
  patrolTest(
    'the sort picked for a view screen list carries to every screen and '
    'survives restarts',
    ($) async {
      final tester = $.tester;
      const password = E2eBackend.password;
      final fixture = ListSortFixture();
      final lists = ListSortRobot(tester);
      final metadata = AdvancedQueriesMetadata();

      void step(String description) => debugPrint('E2E STEP: $description');
      List<List<String>> reversed(List<List<String>> idsByTab) => [
        for (final ids in idsByTab) ids.reversed.toList(),
      ];

      final areaTabs = [
        fixture.streetIds,
        fixture.areaFamilyIds,
        fixture.personIdsByType,
        fixture.storeIds,
      ];
      final otherAreaTabs = [fixture.otherAreaStreetIds];
      final streetTabs = [
        fixture.areaFamilyIds,
        fixture.personIdsByType,
        fixture.storeIds,
      ];
      final familyTabs = [
        fixture.personIdsByType,
        fixture.childFamilyIds,
        fixture.parentFamilyIds,
        fixture.storeIds,
      ];
      final serviceTabs = [
        fixture.classIdsByStudyYear,
        fixture.groupIds,
        fixture.personIdsByName,
      ];
      final otherServiceTabs = [
        fixture.otherServiceClassIdsByStudyYear,
        fixture.otherServiceGroupIds,
      ];
      final classTabs = [fixture.personIdsByName];
      final sortedLists = [
        for (final type in [
          metadata.street,
          metadata.family,
          metadata.person,
          metadata.store,
          metadata.$class,
          metadata.group,
        ])
          OrderByPreferenceKey(type: type),
        OrderByPreferenceKey(type: metadata.person, inServiceContext: true),
      ];

      Future<void> expectAreaScreensShow({required bool reversedOrder}) async {
        List<List<String>> shown(List<List<String>> tabs) =>
            reversedOrder ? reversed(tabs) : tabs;

        await lists.openStreet(fixture.streetId);
        await lists.expectEachTabOrder(shown(streetTabs));
        await lists.openFamily(fixture.familyId);
        await lists.expectEachTabOrder(shown(familyTabs));
        await E2eApp.returnHome(tester, password: password);
        await lists.openArea(fixture.otherAreaId);
        await lists.expectEachTabOrder(shown(otherAreaTabs));
        await E2eApp.returnHome(tester, password: password);
      }

      Future<void> expectServiceScreensShow({
        required bool reversedOrder,
      }) async {
        List<List<String>> shown(List<List<String>> tabs) =>
            reversedOrder ? reversed(tabs) : tabs;

        await lists.openClass(fixture.classWithEveryPersonId);
        await lists.expectEachTabOrder(shown(classTabs));
        await E2eApp.returnHome(tester, password: password);
        await lists.openService(fixture.otherServiceId);
        await lists.expectEachTabOrder(shown(otherServiceTabs));
        await E2eApp.returnHome(tester, password: password);
      }

      await fixture.seed();

      step('the admin signs in');
      await E2eApp.launchSignedOut($);
      await E2eApp.signIn(
        tester,
        email: E2eBackend.adminEmail,
        password: password,
      );
      await E2eApp.completeSpiritualData(tester);
      await E2eApp.enterHome(tester, password);
      final adminUid =
          (await E2eBackend.userByEmail(E2eBackend.adminEmail))['uid']
              as String;
      final defaultSorts = await lists.storedSorts(adminUid, sortedLists);
      final reversedSorts = ListSortRobot.withFirstKeysReversed(defaultSorts);

      step('every area list starts in its default sort and is reversed');
      await lists.openArea(fixture.areaId);
      await lists.reverseEachTab(areaTabs);

      step('the street, family and other area screens follow the new sorts');
      await expectAreaScreensShow(reversedOrder: true);

      step('every service list starts in its default sort and is reversed');
      await lists.openService(fixture.serviceId);
      await lists.reverseEachTab(serviceTabs);

      step('the class and other service screens follow the new sorts');
      await expectServiceScreensShow(reversedOrder: true);
      await lists.expectStoredSorts(adminUid, reversedSorts);

      step(
        'after a restart the area lists are still reversed and each is '
        'put back on its default sort',
      );
      await E2eApp.relaunch($);
      await lists.openArea(fixture.areaId);
      await lists.reverseEachTab(reversed(areaTabs));
      await expectAreaScreensShow(reversedOrder: false);

      step(
        'the service lists are still reversed and each is put back on '
        'its default sort',
      );
      await lists.openService(fixture.serviceId);
      await lists.reverseEachTab(reversed(serviceTabs));
      await expectServiceScreensShow(reversedOrder: false);
      await lists.expectStoredSorts(adminUid, defaultSorts);

      step('after another restart every list keeps its default sort');
      await E2eApp.relaunch($);
      await lists.openArea(fixture.areaId);
      await lists.expectEachTabOrder(areaTabs);
      await E2eApp.returnHome(tester, password: password);
      await lists.openService(fixture.serviceId);
      await lists.expectEachTabOrder(serviceTabs);

      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 12)),
  );
}
