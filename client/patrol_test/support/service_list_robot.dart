import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'e2e_app.dart';
import 'e2e_widget_tester.dart';

class ServiceListRobot {
  final WidgetTester tester;

  const ServiceListRobot(this.tester);

  Future<void> openFromHome() => E2eApp.openHomeTab(
    tester,
    mode: HomeMode.sundaySchool,
    tab: HomeTab.services,
  );

  Future<void> waitForServiceNamed({
    required String serviceId,
    required String name,
  }) => tester.waitFor(
    find.byWidgetPredicate(
      (widget) => switch (widget) {
        ViewableObjectCard(object: Service(:final id, name: final shown)) =>
          id == serviceId && shown == name,
        _ => false,
      },
    ),
  );
}
