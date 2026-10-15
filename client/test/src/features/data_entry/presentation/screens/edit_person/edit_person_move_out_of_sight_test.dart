import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import 'edit_person_screen_harness.dart';

void main() {
  const primary = Service(id: 'primary', name: 'ابتدائي');
  const family = Family(id: 'family-id', name: 'أسرة');
  const confirmationTitle = 'لن تتمكن من رؤية البيانات بعد الحفظ';
  final boy = Person(
    id: 'person-id',
    name: 'مينا',
    family: family,
    familyId: family.id,
    services: const [primary],
  );

  late EditPersonScreenHarness harness;

  Finder confirmationButton(String label) => find.descendant(
    of: find.byType(AlertDialog),
    matching: find.text(label),
  );

  Future<void> makeGirlAndSave(WidgetTester tester) async {
    await harness.open(tester, UpdatePerson(person: boy), withPageBelow: true);
    await harness.scrollTo(tester, find.text('أنثى'));
    await tester.tap(find.text('أنثى'));
    await tester.pumpAndSettle();
    await harness.tapSave(tester);
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditPersonScreenHarness()
      ..currentUser = const User(
        uid: 'me',
        name: 'خادم',
        adminOn: [
          AdminOnData(
            permissionId: 'grant',
            service: primary,
            serviceGender: true,
          ),
        ],
      )
      ..install();
  });

  tearDown(defaultTearDown);

  testWidgets('saving a change that hides the person asks for confirmation', (
    tester,
  ) async {
    await makeGirlAndSave(tester);

    expect(find.text(confirmationTitle), findsOneWidget);
    expect(harness.persons.updatedPeople, isEmpty);
  });

  testWidgets('the save button stays disabled while the confirmation shows', (
    tester,
  ) async {
    await makeGirlAndSave(tester);

    final saveButton = tester.widget<FloatingActionButton>(
      find.byKey(EditPersonSaveButtonKeys.saveButton),
    );

    expect(saveButton.onPressed, isNull);
  });

  testWidgets(
    'cancelling the confirmation keeps the screen and saves nothing',
    (
      tester,
    ) async {
      await makeGirlAndSave(tester);

      await tester.tap(confirmationButton('إلغاء'));
      await tester.pumpAndSettle();

      expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsOneWidget);
      expect(harness.persons.updatedPeople, isEmpty);
    },
  );

  testWidgets('confirming saves the change and leaves the person behind', (
    tester,
  ) async {
    await makeGirlAndSave(tester);

    await tester.tap(confirmationButton('حفظ'));
    await tester.pumpAndSettle();

    expect(harness.persons.updatedPeople.single.gender, isFalse);
    expect(find.byKey(EditPersonSaveButtonKeys.saveButton), findsNothing);
    expect(find.text('open'), findsOneWidget);
  });

  testWidgets('confirming announces that the person was moved', (tester) async {
    await makeGirlAndSave(tester);

    await tester.tap(confirmationButton('حفظ'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.text('تم نقل المخدوم'), findsWidgets);
  });
}
