import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  const shubra = Area(id: 'shubra', name: 'شبرا');
  const maadi = Area(id: 'maadi', name: 'المعادي');
  const confirmationTitle = 'لن تتمكن من رؤية البيانات بعد الحفظ';
  const family = Family(
    id: 'family-id',
    name: 'أسرة',
    address: Address(
      id: 'address-id',
      area: shubra,
      street: Street(id: 'nile', name: 'شارع النيل'),
    ),
  );

  late EditObjectScreenHarness harness;

  Finder confirmationButton(String label) => find.descendant(
    of: find.byType(AlertDialog),
    matching: find.text(label),
  );

  Future<void> moveToMaadiAndSave(WidgetTester tester) async {
    await harness.open(
      tester,
      const EditFamilyRoute(intent: UpdateFamily(family: family)),
      withPageBelow: true,
    );
    final areaField = find.byKey(AddressFormPlaceFieldsKeys.area);
    await harness.scrollTo(tester, areaField);
    await tester.tap(areaField);
    await tester.pumpAndSettle();
    await tester.tap(
      find.descendant(
        of: find.byType(AlertDialog),
        matching: find.text(maadi.name),
      ),
    );
    await tester.pumpAndSettle();
    await harness.tapSave(tester);
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditObjectScreenHarness()
      ..currentUser = const User(
        uid: 'me',
        name: 'خادم',
        adminOn: [AdminOnData(permissionId: 'grant', area: shubra)],
      )
      ..install();
    harness.areas.pickableAreas = const [maadi];
  });

  tearDown(defaultTearDown);

  testWidgets('moving the family out of sight asks before saving', (
    tester,
  ) async {
    await moveToMaadiAndSave(tester);

    expect(find.text(confirmationTitle), findsOneWidget);
    expect(harness.families.updates, isEmpty);
  });

  testWidgets('declining the move keeps the editor and saves nothing', (
    tester,
  ) async {
    await moveToMaadiAndSave(tester);

    await tester.tap(confirmationButton('إلغاء'));
    await tester.pumpAndSettle();

    final saveButton = tester.widget<FloatingActionButton>(
      find.byKey(ObjectSaveButtonKeys.saveButton),
    );
    expect(saveButton.onPressed, isNotNull);
    expect(harness.families.updates, isEmpty);
  });

  testWidgets('a confirmed move is saved and leaves the family behind', (
    tester,
  ) async {
    await moveToMaadiAndSave(tester);

    await tester.tap(confirmationButton('حفظ'));
    await tester.pumpAndSettle();

    expect(
      harness.families.updates.single.editedObject.address?.area,
      maadi,
    );
    expect(find.text('open'), findsOneWidget);
  });

  testWidgets('a confirmed move announces that the family was moved', (
    tester,
  ) async {
    await moveToMaadiAndSave(tester);

    await tester.tap(confirmationButton('حفظ'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('تم نقل العائلة'), findsWidgets);
  });
}
