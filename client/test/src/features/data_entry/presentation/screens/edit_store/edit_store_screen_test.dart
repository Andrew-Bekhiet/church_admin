import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  const family = Family(
    id: 'family-id',
    name: 'أسرة',
    address: Address(
      area: Area(id: 'area-id', name: 'منطقة'),
      street: Street(id: 'street-id', name: 'شارع'),
    ),
  );
  const storedStore = Store(
    id: 'store-id',
    name: 'محل',
    address: Address(
      id: 'address-id',
      area: Area(id: 'area-id', name: 'منطقة'),
      street: Street(id: 'street-id', name: 'شارع'),
    ),
    family: family,
    familyId: 'family-id',
  );

  late EditObjectScreenHarness harness;

  setUp(() {
    harness = EditObjectScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets("a store added from a family is saved as that family's", (
    tester,
  ) async {
    await harness.open(
      tester,
      EditStoreRoute(
        intent: UpdateStore(store: storedStore.copyWith(name: '')),
      ),
    );

    await tester.enterText(harness.nameField, 'صيدلية');
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(harness.stores.updates.single.editedObject.familyId, family.id);
  });

  testWidgets('a store with neither a family nor a location shows why and '
      'is not saved', (tester) async {
    await harness.open(
      tester,
      const EditStoreRoute(intent: UpdateStore(store: storedStore)),
    );

    final clearFamily = find.descendant(
      of: find.byKey(EditStoreScreenKeys.familyField),
      matching: find.byKey(AdvancedSingleObjectSelectionFieldKeys.clearButton),
    );
    await harness.scrollTo(tester, clearFamily);
    await tester.tap(clearFamily);
    await harness.tapSave(tester);
    await tester.pumpAndSettle();

    expect(
      find.text(ObjectEditError.familyOrLocationRequired.message),
      findsOneWidget,
    );
    expect(harness.stores.updates, isEmpty);
  });
}
