import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';
import '../edit_object/edit_object_screen_harness.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const otherValidInput = '01002222222';
  const otherE164 = '+201002222222';
  const storedFamily = Family(
    id: 'family-id',
    name: 'أسرة',
    address: Address(
      id: 'address-id',
      area: Area(id: 'area-id', name: 'منطقة'),
      street: Street(id: 'street-id', name: 'شارع'),
    ),
    contacts: [
      FamilyPhoneContact(
        contact: PhoneContact(id: 'family-saved', phone: '+201001111111'),
        role: father,
      ),
    ],
  );

  late EditObjectScreenHarness harness;
  final savedContactId = storedFamily.contacts.single.contact.id;

  Finder phoneField(String draftKey) =>
      find.byKey(PhoneContactFieldKeys.phoneField(draftKey));

  Future<void> openStoredFamily(
    WidgetTester tester, {
    Family family = storedFamily,
    bool settle = true,
  }) => harness.open(
    tester,
    EditFamilyRoute(intent: UpdateFamily(family: family)),
    settle: settle,
  );

  Future<void> saveAndSettle(WidgetTester tester) async {
    await harness.tapSave(tester);
    await tester.pumpAndSettle();
  }

  setUp(() {
    harness = EditObjectScreenHarness()..install();
  });

  tearDown(defaultTearDown);

  testWidgets('a family added on a street is saved there and opens its '
      'details', (tester) async {
    await harness.open(
      tester,
      EditFamilyRoute(
        intent: CreateFamilyAtAddress(address: storedFamily.address!),
      ),
    );

    await tester.enterText(harness.nameField, 'أسرة جديدة');
    await saveAndSettle(tester);

    final created = harness.familiesDAO.createdObjects.single;
    expect(created.address?.street, storedFamily.address?.street);
    expect(
      harness.routeStack.last,
      ViewFamilyRoute(id: created.id, family: created),
    );
  });

  group("a widowed family's deceased spouse name", () {
    Future<void> saveDeceasedSpouseName(
      WidgetTester tester,
      MartialStatus status,
      String enteredName,
    ) async {
      await openStoredFamily(
        tester,
        family: storedFamily.copyWith(
          status: status,
          deceasedSpouseName: 'مينا',
        ),
      );
      final field = find.byKey(FamilyEditFieldsKeys.deceasedSpouseName);
      await harness.scrollTo(tester, field);
      await tester.enterText(field, enteredName);
      await saveAndSettle(tester);
    }

    testWidgets('is saved trimmed', (tester) async {
      await saveDeceasedSpouseName(tester, MartialStatus.widowed, '  جرجس  ');

      expect(
        harness.familiesDAO.updates.single.editedObject.deceasedSpouseName,
        'جرجس',
      );
    });

    for (final status in [
      MartialStatus.widowed,
      MartialStatus.widowedWithoutChildren,
    ]) {
      testWidgets('of a ${status.name} family can be cleared', (tester) async {
        await saveDeceasedSpouseName(tester, status, '');

        expect(
          harness.familiesDAO.updates.single.editedObject.deceasedSpouseName,
          isNull,
        );
      });
    }
  });

  group('an invalid number', () {
    Future<void> typeIncompleteNumberAndSave(WidgetTester tester) async {
      await openStoredFamily(tester);
      await harness.scrollTo(tester, phoneField(savedContactId));
      await tester.enterText(phoneField(savedContactId), '0100');
      await saveAndSettle(tester);
    }

    testWidgets('is not saved', (tester) async {
      await typeIncompleteNumberAndSave(tester);

      expect(harness.familiesDAO.updates, isEmpty);
    });

    testWidgets('says why', (tester) async {
      await typeIncompleteNumberAndSave(tester);

      expect(
        find.text(PhoneContactError.invalidPhone.message),
        findsOneWidget,
      );
    });
  });

  group('editing before the saved relatives finish loading', () {
    testWidgets('a changed number is saved', (tester) async {
      final gate = harness.familiesDAO.relatedFamiliesGate = Completer<void>();
      await openStoredFamily(tester, settle: false);

      await harness.scrollTo(tester, phoneField(savedContactId));
      await tester.enterText(phoneField(savedContactId), otherValidInput);
      gate.complete();
      await tester.pumpAndSettle();
      await saveAndSettle(tester);

      expect(
        harness.familiesDAO.updates.single.editedObject.contacts.map(
          (contact) => contact.contact.phone,
        ),
        [otherE164],
      );
    });

    testWidgets('a changed name is saved', (tester) async {
      final gate = harness.familiesDAO.relatedFamiliesGate = Completer<void>();
      await openStoredFamily(tester, settle: false);

      await harness.scrollTo(tester, harness.nameField);
      await tester.enterText(harness.nameField, 'اسم جديد');
      gate.complete();
      await tester.pumpAndSettle();
      await saveAndSettle(tester);

      expect(harness.familiesDAO.updates.single.editedObject.name, 'اسم جديد');
    });
  });

  group('leaving', () {
    testWidgets('after typing an incomplete number asks to discard', (
      tester,
    ) async {
      await openStoredFamily(tester);

      await harness.scrollTo(tester, phoneField(savedContactId));
      await tester.enterText(phoneField(savedContactId), '0100');
      await harness.pressBack(tester);

      expect(find.byType(DiscardChangesDialog), findsOneWidget);
    });

    testWidgets('after changing a number to another valid one asks to '
        'discard', (tester) async {
      await openStoredFamily(tester);

      await harness.scrollTo(tester, phoneField(savedContactId));
      await tester.enterText(phoneField(savedContactId), otherValidInput);
      await harness.pressBack(tester);

      expect(find.byType(DiscardChangesDialog), findsOneWidget);
    });

    testWidgets('after adding an empty phone contact asks to discard', (
      tester,
    ) async {
      harness.personTypesDAO.familyRoles = const [father];
      await openStoredFamily(tester);

      final add = find.byKey(FamilyPhoneContactMenuButtonKeys.button);
      await harness.scrollTo(tester, add);
      await tester.tap(add);
      await tester.pumpAndSettle();
      await tester.tap(
        find.byKey(FamilyPhoneContactMenuButtonKeys.roleItem(father.id)),
      );
      await tester.pumpAndSettle();
      await harness.pressBack(tester);

      expect(find.byType(DiscardChangesDialog), findsOneWidget);
    });

    testWidgets('after the saved relatives load without edits does not ask', (
      tester,
    ) async {
      harness.familiesDAO.relatedFamilies = storedFamily.copyWith(
        parents: const [Family(id: 'parent', name: 'عائلة الأب')],
      );
      await openStoredFamily(tester);

      await harness.pressBack(tester);

      expect(find.byType(DiscardChangesDialog), findsNothing);
      expect(harness.routeStack, [const HomeScreenRoute()]);
    });
  });
}
