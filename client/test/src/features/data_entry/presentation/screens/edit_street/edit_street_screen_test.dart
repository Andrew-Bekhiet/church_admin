import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  const shubra = Area(id: 'shubra', name: 'شبرا');

  late EditObjectScreenHarness harness;

  setUp(() {
    harness = EditObjectScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('a street added from an area is saved in that area', (
    tester,
  ) async {
    await harness.open(
      tester,
      const EditStreetRoute(intent: CreateStreetInArea(area: shubra)),
    );

    await tester.enterText(harness.nameField, 'شارع النيل');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(harness.streets.createdObjects.single.areas, [shubra]);
  });

  testWidgets('saving a street without an area shows why and saves nothing', (
    tester,
  ) async {
    await harness.open(tester, const EditStreetRoute());

    await tester.enterText(harness.nameField, 'شارع النيل');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(find.text(ObjectEditError.areaRequired.message), findsOneWidget);
    expect(harness.streets.createdObjects, isEmpty);
  });
}
