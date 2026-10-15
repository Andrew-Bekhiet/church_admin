import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';

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

  setUp(() {
    harness = EditPersonScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('tapping the photo offers the camera and the gallery', (
    tester,
  ) async {
    await harness.open(
      tester,
      UpdatePerson(person: person),
      scrollPastPhoto: false,
    );

    await tester.tap(find.byIcon(Symbols.camera_alt));
    await tester.pumpAndSettle();

    expect(find.text('الكاميرا'), findsOneWidget);
    expect(find.text('من المعرض'), findsOneWidget);
  });

  testWidgets('an existing person can have the photo deleted', (tester) async {
    await harness.open(
      tester,
      UpdatePerson(person: person),
      scrollPastPhoto: false,
    );

    await tester.tap(find.byIcon(Symbols.camera_alt));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('حذف الصورة'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('نعم'));
    await tester.pumpAndSettle();
    await harness.tapSave(tester);

    expect(harness.functions.deletedPhotos, [
      (table: 'persons', id: person.id),
    ]);
  });

  testWidgets('a person that is not saved yet has no photo to delete', (
    tester,
  ) async {
    await harness.open(
      tester,
      const CreatePersonInFamily(family: family),
      scrollPastPhoto: false,
    );

    await tester.tap(find.byIcon(Symbols.camera_alt));
    await tester.pumpAndSettle();

    expect(find.byTooltip('حذف الصورة'), findsNothing);
    expect(find.text('الكاميرا'), findsOneWidget);
  });
}
