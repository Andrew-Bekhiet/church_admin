import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  final person = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
  );

  late EditPersonScreenHarness harness;

  Color primaryOfScreen(WidgetTester tester) =>
      Theme.of(tester.element(find.byType(Scaffold).first)).colorScheme.primary;

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets("the screen is themed with the person's color", (tester) async {
    await harness.open(
      tester,
      UpdatePerson(person: person.copyWith(color: Colors.teal)),
    );

    expect(
      primaryOfScreen(tester),
      ThemingService.getDefault(seedOverride: Colors.teal).colorScheme.primary,
    );
  });

  testWidgets("a person without a color keeps the app's theme", (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    expect(
      primaryOfScreen(tester),
      ThemingService.getDefault().colorScheme.primary,
    );
  });

  testWidgets('clearing the color returns the screen to the default theme', (
    tester,
  ) async {
    await harness.open(
      tester,
      UpdatePerson(person: person.copyWith(color: Colors.teal)),
    );

    await harness.scrollTo(tester, find.byTooltip('حذف اللون'));
    await tester.tap(find.byTooltip('حذف اللون'));
    await tester.pumpAndSettle();

    expect(
      primaryOfScreen(tester),
      ThemingService.getDefault().colorScheme.primary,
    );
  });
}
