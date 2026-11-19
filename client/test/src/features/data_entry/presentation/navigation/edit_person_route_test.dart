import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../utils.dart';
import '../screens/edit_person/edit_person_screen_harness.dart';

void main() {
  Future<void> openRoute(WidgetTester tester) async {
    final router = KaiselRouterConfig<AppRoute>(
      initial: const EditPersonRoute(),
      builder: (context, route) => route.build(context),
    );
    addTearDown(router.dispose);

    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: router,
        locale: const Locale('ar', 'EG'),
        theme: ThemingService.getDefault(
          isDarkOverride: false,
          greatFeastThemeOverride: false,
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  setUp(() {
    EditPersonScreenHarness().install();
  });

  tearDown(defaultTearDown);

  testWidgets('opening the route without an intent edits a blank new person', (
    tester,
  ) async {
    await openRoute(tester);

    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
    expect(find.byTooltip('حذف'), findsNothing);
  });
}
