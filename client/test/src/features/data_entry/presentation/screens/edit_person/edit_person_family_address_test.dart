import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const family = Family(id: 'family-id', name: 'أسرة');
  const otherFamily = Family(
    id: 'other-family-id',
    name: 'أسرة أخرى',
    address: Address(id: 'other-address-id', houseCode: '56'),
  );
  final person = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
    address: const Address(
      id: 'address-id',
      houseCode: '12',
      street: Street(id: 'street-id', name: 'شارع'),
      area: Area(id: 'area-id', name: 'منطقة'),
    ),
  );

  late EditPersonScreenHarness harness;

  Finder houseCodeField() => find.descendant(
    of: find.byKey(AddressFormPlaceFieldsKeys.houseCode),
    matching: find.byType(TextField),
  );

  Finder familyItem(String id) => find.byWidgetPredicate(
    (widget) => switch (widget) {
      ViewableObjectWidget(object: ViewableWithID(id: final objectId)) =>
        objectId == id,
      _ => false,
    },
  );

  setUp(() {
    harness = EditPersonScreenHarness();
    harness.families.families = const [family, otherFamily];
    harness.install();
  });

  tearDown(defaultTearDown);

  testWidgets("saving an existing person saves the family's edited address", (
    tester,
  ) async {
    await harness.open(tester, UpdatePerson(person: person));

    await harness.scrollTo(tester, houseCodeField());
    await tester.enterText(houseCodeField(), '34');
    await harness.tapSave(tester);

    expect(harness.persons.updatedPeople.single.address?.houseCode, '34');
  });

  testWidgets("moving a person to another family leaves that family's "
      'address read-only', (tester) async {
    await harness.open(tester, UpdatePerson(person: person));

    await harness.scrollTo(tester, find.text('العائلة'));
    await tester.tap(find.text('العائلة'));
    await tester.pumpAndSettle();
    await tester.tap(familyItem(otherFamily.id));
    await tester.pumpAndSettle();

    await harness.scrollTo(tester, houseCodeField());

    expect(tester.widget<TextField>(houseCodeField()).enabled, isFalse);
  });
}
