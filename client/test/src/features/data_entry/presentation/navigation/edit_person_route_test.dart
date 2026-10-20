import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../utils.dart';
import '../screens/edit_person/edit_person_screen_harness.dart';

void main() {
  final person = Person(id: 'person-id', name: 'مينا');

  late EditPersonScreenHarness harness;

  Future<void> openRoute(
    WidgetTester tester, {
    PersonEditIntent? intent,
  }) async {
    final router = KaiselRouterConfig<AppRoute>(
      initial: EditPersonRoute($extra: intent),
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
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('opening the route without an intent edits a blank new person', (
    tester,
  ) async {
    await openRoute(tester);

    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
    expect(find.byTooltip('حذف'), findsNothing);
  });

  testWidgets('opening the route with an intent edits that person', (
    tester,
  ) async {
    harness.persons.respondWithSavedMemberships(null);

    await openRoute(tester, intent: UpdatePerson(person: person));

    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
    expect(find.byTooltip('حذف'), findsOneWidget);
  });
}
