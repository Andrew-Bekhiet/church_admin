import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'support/e2e_app.dart';
import 'support/e2e_backend.dart';
import 'support/e2e_users.dart';
import 'support/service_list_robot.dart';

void main() {
  patrolTest(
    'a service another user renames changes on the open service list',
    ($) async {
      final tester = $.tester;
      const serviceName = 'خدمة ثانوي';
      const renamedService = 'خدمة ثانوي بعد إعادة التسمية';

      void step(String description) => debugPrint('E2E STEP: $description');

      final serviceId = await E2eBackend.serviceIdByName(serviceName);
      final viewer = await E2eUsers.createApprovedUser(
        email: 'service-viewer@e2e.test',
        permissions: {UserPermission.readAllData},
      );
      final services = ServiceListRobot(tester);

      step('the viewer opens the service list');
      await E2eApp.launchSignedOut($);
      await E2eApp.signInToHome(tester, email: viewer.email);
      await services.openFromHome();
      await services.waitForServiceNamed(
        serviceId: serviceId,
        name: serviceName,
      );

      step('the admin renames one service');
      await E2eBackend.renameService(serviceId, renamedService);

      step('the open list shows the new name without a reload');
      await services.waitForServiceNamed(
        serviceId: serviceId,
        name: renamedService,
      );

      await E2eApp.signOut(tester);
      await E2eApp.finish(tester);
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
