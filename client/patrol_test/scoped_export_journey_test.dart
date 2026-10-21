import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/data_export_robot.dart';
import 'support/e2e_admin_scope.dart';
import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_users.dart';
import 'support/exported_workbook.dart';

void main() {
  patrolTest(
    'a scoped user exports only the areas and services their scope lets them export',
    ($) async {
      final tester = $.tester;
      const exportableAreaResident = 'ساكن منطقة التصدير';
      const otherAreaResident = 'ساكن منطقة بلا تصدير';
      const exportableServicePerson = 'مخدوم خدمة التصدير';
      const otherServicePerson = 'مخدوم خدمة بلا تصدير';
      const noScopeServiceName = 'خدمة اعدادي';
      const noScopeServicePerson = 'مخدوم خدمة اعدادي';
      const personInNoServiceOrArea = 'شخص بلا خدمة ولا منطقة';
      const familyInNoArea = 'عائلة بلا منطقة';
      final permissionDenied = isA<FirebaseFunctionsException>().having(
        (error) => error.code,
        'code',
        'permission-denied',
      );

      void step(String description) => debugPrint('E2E STEP: $description');

      final (
        areaId: exportableAreaId,
        residentId: _,
        streetName: exportableStreetName,
        familyName: exportableFamilyName,
      ) = await E2eBackend.insertAreaWithResident(
        'منطقة التصدير',
        residentName: exportableAreaResident,
      );
      final (
        areaId: otherAreaId,
        residentId: _,
        streetName: otherStreetName,
        familyName: otherFamilyName,
      ) = await E2eBackend.insertAreaWithResident(
        'منطقة بلا تصدير',
        residentName: otherAreaResident,
      );
      final exportableServiceId = await E2eBackend.serviceIdByName(
        'خدمة ثانوي',
      );
      final otherServiceId = await E2eBackend.serviceIdByName('خدمة KG');
      await E2eBackend.insertPerson(
        exportableServicePerson,
        serviceName: 'خدمة ثانوي',
      );
      await E2eBackend.insertPerson(
        otherServicePerson,
        serviceName: 'خدمة KG',
      );
      await E2eBackend.insertPerson(
        noScopeServicePerson,
        serviceName: noScopeServiceName,
      );
      await E2eBackend.insertPersonInFamilyWithoutAreaOrService(
        personInNoServiceOrArea,
        familyName: familyInNoArea,
      );
      final servant = await E2eUsers.createApprovedUser(
        email: 'scoped-exporter@e2e.test',
        name: 'خادم التصدير',
        adminOn: [
          AreaAdminScope(exportableAreaId, canExportData: true),
          AreaAdminScope(otherAreaId),
          ServiceAdminScope(exportableServiceId, canExportData: true),
          ServiceAdminScope(otherServiceId),
        ],
      );

      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: servant.email);

      step('the export function refuses the scopes without export');
      await expectLater(
        FunctionsService.I.exportData(areasIds: [otherAreaId]),
        throwsA(permissionDenied),
      );
      await expectLater(
        FunctionsService.I.exportData(servicesIds: [otherServiceId]),
        throwsA(permissionDenied),
      );
      await expectLater(
        FunctionsService.I.exportData(
          areasIds: [exportableAreaId, otherAreaId],
        ),
        throwsA(permissionDenied),
      );

      step('the export screen offers only the scopes with export');
      final export = DataExportRobot(tester);
      await export.open();
      final offeredAreas = await export.offeredIdsOnceTheyInclude<Area>(
        ExportEntitiesSelectionScreenKeys.areasTab,
        {exportableAreaId},
      );
      expect(offeredAreas, isNot(contains(otherAreaId)));
      await export.select(exportableAreaId);
      final offeredServices = await export.offeredIdsOnceTheyInclude<Service>(
        ExportEntitiesSelectionScreenKeys.servicesTab,
        {exportableServiceId},
      );
      expect(offeredServices, isNot(contains(otherServiceId)));
      await export.select(exportableServiceId);

      step('the export holds the exportable scopes and nothing else');
      await export.startExport();
      final workbook = await ExportedWorkbook.latestExportOf(servant.uid);
      final expectedInExport = [
        'منطقة التصدير',
        exportableStreetName,
        exportableFamilyName,
        exportableAreaResident,
        'خدمة ثانوي',
        exportableServicePerson,
      ];
      expect(
        workbook.mentionedAmong(expectedInExport),
        expectedInExport,
        reason: 'the export lacks data inside the exportable scopes',
      );
      expect(
        workbook.mentionedAmong([
          'منطقة بلا تصدير',
          otherStreetName,
          otherFamilyName,
          otherAreaResident,
          'خدمة KG',
          otherServicePerson,
          noScopeServiceName,
          noScopeServicePerson,
          'خدمة ابتدائي',
          'اعداد خدام',
          personInNoServiceOrArea,
          familyInNoArea,
        ]),
        isEmpty,
        reason: 'the export holds data outside the exportable scopes',
      );
      await export.closeTheUnsignedDownloadLinkError();

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
