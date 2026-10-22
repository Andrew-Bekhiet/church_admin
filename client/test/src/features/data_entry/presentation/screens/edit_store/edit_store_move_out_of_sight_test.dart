import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  const shubra = Area(id: 'shubra', name: 'شبرا');
  const maadi = Area(id: 'maadi', name: 'المعادي');
  const store = Store(
    id: 'store-id',
    name: 'متجر',
    family: Family(id: 'family-id', name: 'أسرة'),
    familyId: 'family-id',
    address: Address(
      id: 'address-id',
      area: shubra,
      street: Street(id: 'nile', name: 'شارع النيل'),
    ),
  );

  late EditObjectScreenHarness harness;

  Future<void> moveToMaadiAndSave(WidgetTester tester) async {
    await harness.open(
      tester,
      const EditStoreRoute(intent: UpdateStore(store: store)),
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
    harness.areasDAO.pickableAreas = const [maadi];
  });

  tearDown(defaultTearDown);

  testWidgets('moving the store out of sight asks before saving', (
    tester,
  ) async {
    await moveToMaadiAndSave(tester);

    expect(find.byType(MoveOutOfSightConfirmationDialog), findsOneWidget);
    expect(harness.storesDAO.updates, isEmpty);
  });

  testWidgets('declining the move keeps the editor and saves nothing', (
    tester,
  ) async {
    await moveToMaadiAndSave(tester);

    await tester.tap(find.byKey(ConfirmationDialogKeys.cancelButton));
    await tester.pumpAndSettle();

    expect(find.byKey(ObjectSaveButtonKeys.saveButton), findsOneWidget);
    expect(harness.storesDAO.updates, isEmpty);
  });

  testWidgets('a confirmed move is saved and leaves the store behind', (
    tester,
  ) async {
    await moveToMaadiAndSave(tester);

    await tester.tap(find.byKey(ConfirmationDialogKeys.confirmButton));
    await tester.pumpAndSettle();

    expect(harness.storesDAO.updates.single.editedObject.address?.area, maadi);
    expect(harness.routeStack, [const HomeScreenRoute()]);
  });

  testWidgets('a confirmed move announces that the store was moved', (
    tester,
  ) async {
    await moveToMaadiAndSave(tester);

    await tester.tap(find.byKey(ConfirmationDialogKeys.confirmButton));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text(EditStoreScreen.movedOutOfSightMessage), findsWidgets);
  });
}
