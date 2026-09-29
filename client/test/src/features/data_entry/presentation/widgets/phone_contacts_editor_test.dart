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

  final formKey = GlobalKey<FormState>();
  late List<PhoneContact> contacts;

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
    expect(find.byKey(PhoneContactRowKeys.mainChip('a')), findsNothing);
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
