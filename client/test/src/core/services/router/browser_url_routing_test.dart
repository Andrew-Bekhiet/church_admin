import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'support/app_routing_harness.dart';

void main() {
  late AppRoutingHarness harness;

  setUp(
    () => harness = AppRoutingHarness()
      ..withUrls = true
      ..signIn(AppRoutingHarness.approvedUser()),
  );

  testWidgets('opening a screen shows its address in the browser', (
    tester,
  ) async {
    await harness.pump(tester);

    await harness.open(tester, const SettingsRoute());

    expect(harness.reportedAddresses.last, SettingsRoute.routePath);
  });

  testWidgets('a link opens its screen', (tester) async {
    await harness.pump(tester);

    await harness.openPlatformLink(tester, SettingsRoute.routePath);

    expect(find.byType(SettingsScreen), findsOneWidget);
  });

  testWidgets('going back from a linked screen returns home', (tester) async {
    await harness.pump(tester);
    await harness.openPlatformLink(tester, SettingsRoute.routePath);

    await harness.pressSystemBack(tester);

    expect(find.byType(SettingsScreen), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);
  });

  testWidgets('a link to an unknown page shows the error page', (
    tester,
  ) async {
    await harness.pump(tester);

    await harness.openPlatformLink(tester, '/no_such_page');

    expect(find.byType(ErrorWidget), findsOneWidget);
  });
}
