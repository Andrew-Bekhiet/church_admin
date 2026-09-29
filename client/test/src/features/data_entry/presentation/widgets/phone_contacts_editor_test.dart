import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const father = PersonType(id: 'father', name: 'أب', isFamilyAdmin: true);
  const mother = PersonType(id: 'mother', name: 'أم', isFamilyAdmin: true);
  const invalidMessage = 'برجاء ادخال رقم هاتف صالح';

  PhoneContact own(String id, String phone, {bool isMain = false}) =>
      PhoneContact(
        id: id,
        phone: phone,
        personId: 'p1',
        isMainPhone: isMain,
      );

  PhoneContact fatherNumber(String id, String phone, {bool isMain = false}) =>
      PhoneContact(
        id: id,
        phone: phone,
        familyId: 'f1',
        personTypeId: 'father',
        personType: father,
        isMainPhone: isMain,
      );

  final formKey = GlobalKey<FormState>();
  late List<PhoneContact> contacts;

  Map<String, bool> mainFlags() => {
    for (final c in contacts) c.id: c.isMainPhone,
  };

  Future<void> pumpEditor(
    WidgetTester tester, {
    required List<PhoneContact> initial,
    bool hasFamilyOrAddress = true,
    double width = 800,
  }) async {
    contacts = initial;
    tester.view.physicalSize = Size(width, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            body: StatefulBuilder(
              builder: (context, setState) => SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: PhoneContactsEditor(
                    contacts: contacts,
                    ownerPersonId: 'p1',
                    familyId: 'f1',
                    hasFamilyOrAddress: hasFamilyOrAddress,
                    familyAdminTypes: const [father, mother],
                    onChanged: (value) => setState(() => contacts = value),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  testWidgets('picking a role chip turns a row into a family number', (
    tester,
  ) async {
    await pumpEditor(tester, initial: [own('a', '+201001234567')]);

    await tester.tap(find.byKey(PhoneContactRowKeys.roleChip('a', 'father')));
    await tester.pump();

    final row = contacts.single;
    expect(row.isFamilyRole, isTrue);
    expect(row.personTypeId, 'father');
    expect(row.familyId, 'f1');
  });

  testWidgets('choosing a main number clears the previous one', (tester) async {
    await pumpEditor(
      tester,
      initial: [
        own('a', '+201001234567', isMain: true),
        own('b', '+201112223334'),
      ],
    );

    await tester.tap(find.byKey(PhoneContactRowKeys.mainChip('b')));
    await tester.pump();

    expect(
      {for (final c in contacts) c.id: c.isMainPhone},
      {'a': false, 'b': true},
    );
  });

  testWidgets('the first number added becomes the main one', (tester) async {
    await pumpEditor(tester, initial: const []);

    await tester.tap(find.byKey(PhoneContactsEditorKeys.addButton));
    await tester.pump();

    expect(contacts.single.isMainPhone, isTrue);
  });

  testWidgets('a number added next to a main one is not main', (tester) async {
    await pumpEditor(
      tester,
      initial: [own('a', '+201001234567', isMain: true)],
    );

    await tester.tap(find.byKey(PhoneContactsEditorKeys.addButton));
    await tester.pump();

    expect(contacts.last.isMainPhone, isFalse);
  });

  testWidgets('the first number given a role becomes the main of that role', (
    tester,
  ) async {
    await pumpEditor(
      tester,
      initial: [own('a', '+201001234567', isMain: true)],
    );

    await tester.tap(find.byKey(PhoneContactRowKeys.roleChip('a', 'father')));
    await tester.pump();

    expect(contacts.single.isMainPhone, isTrue);
  });

  testWidgets('a second number under the same role stays secondary', (
    tester,
  ) async {
    await pumpEditor(
      tester,
      initial: [
        fatherNumber('f', '+201009998887', isMain: true),
        own('a', '+201001234567', isMain: true),
      ],
    );

    await tester.tap(find.byKey(PhoneContactRowKeys.roleChip('a', 'father')));
    await tester.pump();

    expect(mainFlags(), {'f': true, 'a': false});
  });

  testWidgets('choosing a role main leaves the own main number alone', (
    tester,
  ) async {
    await pumpEditor(
      tester,
      initial: [
        own('a', '+201001234567', isMain: true),
        fatherNumber('f', '+201009998887'),
      ],
    );

    await tester.tap(find.byKey(PhoneContactRowKeys.mainChip('f')));
    await tester.pump();

    expect(mainFlags(), {'a': true, 'f': true});
  });

  testWidgets(
    'choosing a role main clears the previous main of that role only',
    (
      tester,
    ) async {
      await pumpEditor(
        tester,
        initial: [
          own('a', '+201001234567', isMain: true),
          fatherNumber('f1', '+201009998887', isMain: true),
          fatherNumber('f2', '+201008887776'),
        ],
      );

      await tester.tap(find.byKey(PhoneContactRowKeys.mainChip('f2')));
      await tester.pump();

      expect(mainFlags(), {'a': true, 'f1': false, 'f2': true});
    },
  );

  testWidgets('an invalid number blocks saving and says why', (tester) async {
    await pumpEditor(tester, initial: [own('a', 'abc')]);

    final valid = formKey.currentState!.validate();
    await tester.pump();

    expect(valid, isFalse);
    expect(find.text(invalidMessage), findsOneWidget);
  });

  testWidgets('a role number without a family or address is rejected', (
    tester,
  ) async {
    final asFather = own('a', '+201001234567').withRole(father, null);
    await pumpEditor(
      tester,
      initial: [asFather],
      hasFamilyOrAddress: false,
    );

    final valid = formKey.currentState!.validate();
    await tester.pump();

    expect(valid, isFalse);
    expect(
      find.text('يجب تحديد العائلة أو العنوان لحفظ أرقام الأسرة'),
      findsOneWidget,
    );
  });

  testWidgets('rows fit a 320 px right-to-left screen', (tester) async {
    await pumpEditor(
      tester,
      initial: [
        own('a', '+201001234567', isMain: true),
        own('b', '+201112223334').withRole(father, 'f1'),
      ],
      width: 320,
    );

    expect(tester.takeException(), isNull);
  });
}
