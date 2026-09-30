import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);

  const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
    owner: PersonPhoneOwner('child'),
  );
  const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
    owner: PersonPhoneOwner('child'),
  );
  const fatherNumber = FamilyPhoneContact(
    contact: PhoneContact(
      id: 'father-number',
      phone: '+201003333333',
      owner: PersonPhoneOwner('the-father'),
    ),
    role: father,
  );

  tearDown(defaultTearDown);

  Future<void> pumpSection(WidgetTester tester, {required bool showOwn}) =>
      tester.pumpWidget(
        materialAppWithThemeAndLocale()(
          Scaffold(
            body: SingleChildScrollView(
              child: PhoneBookSection(
                showOwnNumbers: showOwn,
                create: (_) => PhoneBookCubit.forPerson(
                  personId: 'child',
                  familyId: 'family',
                  dao: _FakeContactsDAO(
                    own: [ownWork, ownMain],
                    family: [fatherNumber],
                  ),
                ),
                onCall: (_) {},
              ),
            ),
          ),
        ),
      );

  testWidgets(
    "a person's details list their main number first, marked as main",
    (tester) async {
      await pumpSection(tester, showOwn: true);
      await tester.pumpAndSettle();

      expect(find.text('أرقام الهاتف'), findsOneWidget);
      expect(
        tester.getTopLeft(find.text('01001111111')).dy,
        lessThan(tester.getTopLeft(find.text('01002222222')).dy),
      );
      expect(find.text('رقم الهاتف (أساسي)'), findsOneWidget);
      expect(find.text('عمل'), findsOneWidget);
    },
  );

  testWidgets("a person's details list their family's numbers by role", (
    tester,
  ) async {
    await pumpSection(tester, showOwn: true);
    await tester.pumpAndSettle();

    expect(find.text('أرقام الأسرة'), findsOneWidget);
    expect(find.text('رقم الهاتف (الأب)'), findsOneWidget);
    expect(find.text('01003333333'), findsOneWidget);
  });

  testWidgets('a family page shows only the family numbers', (tester) async {
    await pumpSection(tester, showOwn: false);
    await tester.pumpAndSettle();

    expect(find.text('أرقام الهاتف'), findsNothing);
    expect(find.text('01001111111'), findsNothing);
    expect(find.text('01003333333'), findsOneWidget);
  });
}

class _FakeContactsDAO extends Fake implements ContactsDAO {
  final List<PhoneContact> own;
  final List<FamilyPhoneContact> family;

  _FakeContactsDAO({required this.own, required this.family});

  @override
  Stream<List<PhoneContact>> watchOwnContacts({required String personId}) =>
      Stream.value(own);

  @override
  Stream<List<FamilyPhoneContact>> watchFamilyContacts({
    required String familyId,
    String? excludedPersonId,
  }) => Stream.value(family);
}
